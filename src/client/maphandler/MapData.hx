package client.maphandler;

import mapObjects.misc.GBoat;
import mapObjects.hero.GHeroInstance;
import constants.Obj;
import mapObjects.GObjectInstance;
import constants.GameConstants;
import gui.animation.IImage;
import gui.Animation;
import gui.geometries.Rect;
import mapping.MapBody;
import utils.Int3;

class MapData {
    public var ttiles:PseudoV<PseudoV<PseudoV<TerrainTile2>>> = new PseudoV<PseudoV<PseudoV<TerrainTile2>>>(); //informations about map tiles

    public var sizes:Int3; //map size (x = width, y = height, z = number of levels)
    public var map:MapBody;

    // Max number of tiles that will fit in the map screen. Tiles
    // can be partial on each edges.
    public var tilesW:Int = 0;
    public var tilesH:Int = 0;

    // size of each side of the frame around the whole map, in tiles
    public var frameH:Int = 0;
    public var frameW:Int = 0;

    // Coord in pixels of the top left corner of the top left tile to
    // draw. Values range is [-31..0]. A negative value
    // implies that part of the tile won't be displayed.
    public var offsetX:Int = 0;
    public var offsetY:Int = 0;

    //Fog of War cache (not owned)
    public var fowFullHide:Array<IImage>;
    public var hideBitmap:Array<Array<Array<Int>>>; //frame indexes (in FoWfullHide) of graphic that should be used to fully hide a tile
    public var fowPartialHide:Array<IImage>;
    public var animationPhase:Map<GObjectInstance, Int> = new Map<GObjectInstance, Int>();

    private var fadeAnimCounter:Int = 0;

    public function new() {}

    public function init() {
        // Size of visible terrain.
        var mapW:Int = Game.MAP_SCREEN_TILED_WIDTH * 32; /*conf.go().ac.advmapW*/
        var mapH:Int = Game.MAP_SCREEN_TILED_HEIGHT * 32; /*conf.go().ac.advmapH*/

        //sizes of terrain
        sizes = new Int3();
        sizes.x = map.width;
        sizes.y = map.height;
        sizes.z = map.twoLevel ? 2 : 1;

        // Total number of visible tiles. Subtract the center tile, then
        // compute the number of tiles on each side, and reassemble.
        var t1:Int;
        var t2:Int;
        t1 = Std.int((mapW - 32) / 2);
        t2 = mapW - 32 - t1;
        tilesW = Std.int(1 + (t1 + 31) / 32 + (t2 + 31) / 32);

        t1 = Std.int((mapH - 32) / 2);
        t2 = mapH - 32 - t1;
        tilesH = Std.int(1 + (t1 + 31) / 32 + (t2 + 31) / 32);

        // Size of the frame around the map. In extremes positions, the
        // frame must not be on the center of the map, but right on the
        // edge of the center tile.
        frameW = Std.int((mapW + 31) /32 / 2);
        frameH = Std.int((mapH + 31) /32 / 2);

        offsetX = Std.int((mapW - (2 * frameW + 1) * 32) / 2);
        offsetY = Std.int((mapH - (2 * frameH + 1) * 32) / 2);

        prepareFowDefs();
        initMapTiles();
//        initBorderGraphics();
        initObjectRects();
    }

    function prepareFowDefs() {
        //assume all frames in group 0
        var size:Int = Graphics.instance.fogOfWarFullHide.size(0);
        fowFullHide = [];
        for(frame in 0...size) {
            fowFullHide[frame] = Graphics.instance.fogOfWarFullHide.getImage(frame);
        }

        //initialization of type of full-hide image
        hideBitmap = [];
        for (i in 0...sizes.x) {
            hideBitmap[i] = [];
            for (j in 0...sizes.y) {
                hideBitmap[i][j] = [];
                for (k in 0...sizes.z) {
                    hideBitmap[i][j][k] = Std.random(size - 1);
                }
            }
        }

        size = Graphics.instance.fogOfWarPartialHide.size(0);
        fowPartialHide = [];
        for(frame in 0...size) {
            fowPartialHide[frame] = Graphics.instance.fogOfWarPartialHide.getImage(frame);
        }
    }

    function initMapTiles() {
        // Create enough room for the whole map and its frame
        ttiles.resize(sizes.x, frameW, frameW, PseudoV);
        for (i in (0 - frameW)...(ttiles.size() - frameW)) {
            ttiles.get(i).resize(sizes.y, frameH, frameH, PseudoV);
        }
        for (i in (0 - frameW)...(ttiles.size() - frameW)) {
            for (j in (0 - frameH)...(sizes.y + frameH)) {
                ttiles.get(i).get(j).resize(sizes.z, 0, 0, TerrainTile2);
            }
        }
    }

    function initObjectRects() {
        // values are inverted from original
        var objectBlitOrderSorter = function(aa:TerrainTileObject, bb:TerrainTileObject):Int {
            var a = aa.obj;
            var b = bb.obj;

            if (a == null)
                return -1;
            if (b == null)
                return 1;
            if (a.appearance.printPriority != b.appearance.printPriority)
                return a.appearance.printPriority > b.appearance.printPriority ? -1 : 1;

            if(a.pos.y != b.pos.y)
                return a.pos.y < b.pos.y ? -1 : 1;

            if(b.ID == Obj.HERO && a.ID != Obj.HERO)
                return -1;
            if(b.ID != Obj.HERO && a.ID == Obj.HERO)
                return 1;

            if(!a.isVisitable() && b.isVisitable())
                return -1;
            if(!b.isVisitable() && a.isVisitable())
                return 1;
            if(a.pos.x < b.pos.x)
                return -1;
            return 1;
        }

        //initializing objects / rects
        for (elem in map.objects) {
            var obj:GObjectInstance = elem;
            if(	obj == null
                || (obj.ID == Obj.HERO && cast(obj, GHeroInstance).inTownGarrison) //garrisoned hero
                || (obj.ID == Obj.BOAT && cast(obj, GBoat).hero != null)) //boat with hero (hero graphics is used)
            {
                continue;
            }

            var animation:Animation = Graphics.instance.getAnimation(obj);

            //no animation at all
            if (animation == null)
                continue;

            //empty animation
            if (animation.size(0) == 0)
                continue;

            var image:IImage = animation.getImage(0, 0);

            for(fx in 0...obj.getWidth()) {
                for(fy in 0...obj.getHeight()) {
                    var currTile = new Int3(obj.pos.x - fx, obj.pos.y - fy, obj.pos.z);
                    var cr:Rect = new Rect(image.width - fx * 32 - 32, image.height - fy * 32 - 32, 32, 32);
                    var toAdd = new TerrainTileObject(obj, cr, obj.visitableAt(currTile.x, currTile.y));

                    if (map.isInTheMap(currTile) && // within map
                        cr.x + cr.w > 0 &&           // image has data on this tile
                        cr.y + cr.h > 0 &&
                        obj.coveringAt(currTile.x, currTile.y) // object is visible here
                    )
                    {
                        ttiles.get(currTile.x).get(currTile.y).get(currTile.z).objects.push(toAdd);
                    }
                }
            }
        }

        for(ix in 0...(ttiles.size() - frameW)) {
            for(iy in 0...(ttiles.get(0).size() - frameH)) {
                for(iz in 0...ttiles.get(0).get(0).size()) {
                    ttiles.get(ix).get(iy).get(iz).objects.sort(objectBlitOrderSorter);
                }
            }
        }
    }
}
