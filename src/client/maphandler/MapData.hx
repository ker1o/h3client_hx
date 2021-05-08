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
    public var ttiles = new Array<Array<Array<TerrainTile2>>>(); //informations about map tiles

    public var sizes:Int3; //map size (x = width, y = height, z = number of levels)
    public var map:MapBody;

    //Fog of War cache (not owned)
    public var fowFullHide:Array<IImage>;
    public var hideBitmap:Array<Array<Array<Int>>>; //frame indexes (in FoWfullHide) of graphic that should be used to fully hide a tile
    public var fowPartialHide:Array<IImage>;
    public var animationPhase:Map<GObjectInstance, Int> = new Map<GObjectInstance, Int>();

    private var fadeAnimCounter:Int = 0;

    public function new() {}

    public function init() {
        //sizes of terrain
        sizes = new Int3();
        sizes.x = map.width;
        sizes.y = map.height;
        sizes.z = map.twoLevel ? 2 : 1;

        prepareFowDefs();
        initMapTiles();
//        initBorderGraphics();
        initObjectRects();
    }

    function prepareFowDefs() {
        //assume all frames in group 0
        var size:Int = SdlGraphics.instance.fogOfWarFullHide.size(0);
        fowFullHide = [];
        for(frame in 0...size) {
            fowFullHide[frame] = SdlGraphics.instance.fogOfWarFullHide.getImage(frame);
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

        size = SdlGraphics.instance.fogOfWarPartialHide.size(0);
        fowPartialHide = [];
        for(frame in 0...size) {
            fowPartialHide[frame] = SdlGraphics.instance.fogOfWarPartialHide.getImage(frame);
        }
    }

    function initMapTiles() {
        for(i in 0...sizes.x) {
            ttiles.push([]);
            for(j in 0...sizes.y) {
                ttiles[i].push([for(z in 0...sizes.z) new TerrainTile2()]);
            }
        }
    }

    function initObjectRects() {
        // values are inverted from original
        var objectsSorter = function(a:GObjectInstance, b:GObjectInstance) {
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
        var objectBlitOrderSorter = function(aa:TerrainTileObject, bb:TerrainTileObject):Int {
            return objectsSorter(aa.obj, bb.obj);
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

            var animation:Animation = SdlGraphics.instance.getAnimation(obj);

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
                        ttiles[currTile.x][currTile.y][currTile.z].objects.push(toAdd);
                    }
                }
            }
        }

        for(ix in 0...ttiles.length) {
            for(iy in 0...ttiles[0].length) {
                for(iz in 0...ttiles[0][0].length) {
                    ttiles[ix][iy][iz].objects.sort(objectBlitOrderSorter);
                }
            }
        }

        // for pixi
        map.objects.sort(objectsSorter);
    }
}
