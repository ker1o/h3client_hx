package client.view.pixijs;

import gui.FadeAnimation;
import constants.id.PlayerColor;
import mapObjects.misc.GBoat;
import mapObjects.hero.GHeroInstance;
import pixi.core.graphics.Graphics;
import client.maphandler.AnimTextureHolder;
import client.maphandler.IMapDrawer;
import client.maphandler.MapData;
import client.maphandler.MapDrawingInfo;
import client.maphandler.NeighborTilesInfo;
import client.maphandler.MapTile;
import constants.Obj;
import gui.geometries.Rect;
import js.lib.Promise;
import mapObjects.GObjectInstance;
import mapping.RiverType;
import mapping.RoadType;
import mapping.TerrainTile;
import pixi.core.display.Container;
import pixi.core.sprites.Sprite;
import pixi.core.textures.Texture;
import utils.Int3;

using Lambda;
using Reflect;

class PixiBlitter implements IMapDrawer {
    private static var movingHeroFrameGroup:Array<Int> = [0xff, 10, 5, 6, 7, 8, 9, 12, 11];
    private static var heroFrameGroup:Array<Int> = [0xff, 13, 0, 1, 2, 3, 4, 15, 14];

    private var FRAMES_PER_MOVE_ANIM_GROUP:Int = 8;

    var data:MapData;
    var container:Container;

    private var tileSize:Int; // size of a tile drawn on map [in pixels]
    private var halfTileSizeCeil:Int; // half of the tile size, rounded up
    private var tileCount:Int3; // number of tiles in current viewport
    private var topTile:Int3; // top-left tile of the viewport
    private var initPos:Int3; // starting drawing position [in pixels]
    private var realPos:Int3; // current position [in pixels]
    private var info:MapDrawingInfo; // data for drawing passed from outside
    private var settings:Dynamic;

    var graphicLayer:Graphics;

    var graphics:TextureGraphics;

    public function new(data:MapData, container:Container) {
        this.data = data;
        this.container = container;

        graphics = TextureGraphics.instance;

        tileCount = new Int3();
        topTile = new Int3();
        initPos = new Int3();
        realPos = new Int3();

        tileSize = 32;
        halfTileSizeCeil = 16;

        //ToDo: remove
        settings = {
            session: {
                spectate:true,
                showBlock:false,
                showVisit:false,
                showGrid:false
            }
        };

        // for tiles grid
        graphicLayer = new Graphics();

        calculateTileSize();
    }

    function calculateTileSize() {
        // calculate tiles that fit drawing area
        var mapW = Game.MAP_SCREEN_TILED_WIDTH * 32;
        var mapH = Game.MAP_SCREEN_TILED_HEIGHT * 32;
        // Total number of visible tiles. Subtract the center tile, then
        // compute the number of tiles on each side, and reassemble.
        var t1:Int;
        var t2:Int;
        t1 = Std.int((mapW - 32) / 2);
        t2 = mapW - 32 - t1;
        tileCount.x = Std.int(1 + (t1 + 31) / 32 + (t2 + 31) / 32);

        t1 = Std.int((mapH - 32) / 2);
        t2 = mapH - 32 - t1;
        tileCount.y = Std.int(1 + (t1 + 31) / 32 + (t2 + 31) / 32);
    }

    public function initAtlases():Promise<Array<Dynamic>> {
        var map = new Map<String, Promise<PixiAnimation>>();
        for (obj in data.map.objects) {
            var name = obj.appearance.animationFile;
            if(!map.exists(name)) {
                map.set(name, TextureGraphics.instance.loadAnimation(obj));
            }
        }
        return Promise.all(map.array());
    }

    public function draw(info:MapDrawingInfo) {
        preDraw(info);

        drawLayer(drawTileTerrain, info.showAllTerrain);
        drawLayer(drawRiver, info.showAllTerrain);
        drawLayer(drawRoad, info.showAllTerrain);

        drawObjects();

        realPos.x = initPos.x;
        var pos = new Int3();
        pos.x = topTile.x;
        for (i in 0...tileCount.x) {
            realPos.y = initPos.y;
            pos.y = topTile.y;
            for (j in 0...tileCount.y) {
                if (pos.x < 0 || pos.x >= data.sizes.x || pos.y < 0 || pos.y >= data.sizes.y) {
//                    drawFrame();
                } else {
                    var tile:MapTile = data.ttiles[pos.x][pos.y][pos.z];

                    if(!(settings.field("session").field("spectate"):Bool) && !info.visibilityMap[pos.x][pos.y][topTile.z] && !info.showAllTerrain) {
                        drawFow(pos);
                    }

                    // overlay needs to be drawn over fow, because of artifacts-aura-like spells
//                    drawTileOverlay(tile);

                    // drawDebugVisitables()
                    if ((settings.field("session").field("showBlock"):Bool)) {
                        if(data.map.getTile(pos.x, pos.y, pos.z).blocked) { //temporary hiding blocked positions
                            var block:Dynamic /*SDL_Surface*/ = null;
                            if (!block) {
//                                block = BitmapHandler.loadBitmap("blocked");
                            }

//                            CSDL_Ext.blitSurface(block, null, &realTileRect);
                        }
                    }
                    if ((settings.field("session").field("showVisit"):Bool)) {
                        if (data.map.getTile(pos.x, pos.y, pos.z).visitable) { //temporary hiding visitable positions
                            var visit:Dynamic /*SDL_Surface*/ = null;
                            if (!visit) {
//                                visit = BitmapHandler.loadBitmap("visitable");
                            }

//                            CSDL_Ext.blitSurface(visit, null, &realTileRect);
                        }
                    }
                }
                pos.y++;
                realPos.y += tileSize;
            }
            pos.x++;
            realPos.x += tileSize;
        }

//        drawOverlayEx();
//        drawDebugGrid();
    }

    function drawLayer(func:TerrainTile->Void, showAll:Bool) {
        var pos = new Int3(0, 0, topTile.z);

        realPos.y = initPos.y;
        pos.y = topTile.y;
        for (j in 0...tileCount.y) {
            if (pos.y < 0 || pos.y >= data.sizes.y) {
                continue;
            }

            realPos.x = initPos.x;
            pos.x = topTile.x;
            for (i in 0...tileCount.x) {
                if (pos.x < 0 || pos.x >= data.sizes.x) {
                    continue;
                }

                var isVisible:Bool = canDrawCurrentTile(pos);

                var tinfo = data.map.getTileByInt3(pos);

                if(isVisible || showAll) {
                    func(tinfo);
                }

                pos.x++;
                realPos.x += tileSize;
            }

            pos.y++;
            realPos.y += tileSize;
        }
    }

    function preDraw(drawingInfo:MapDrawingInfo):Void {
        info = drawingInfo;
        // Width and height of the portion of the map to process. Units in tiles.
        topTile = info.topTile;
        initPos.x = info.drawBounds.x;
        initPos.y = info.drawBounds.y;

        // If moving, we need to add an extra column/line
        if (info.movement.x != 0) {
            tileCount.x++;
            initPos.x += info.movement.x;
            if (info.movement.x > 0) {
                // Moving right. We still need to draw the old tile on the
                // left, so adjust our referential
                topTile.x--;
                initPos.x -= tileSize;
            }
        }

        if (info.movement.y != 0) {
            tileCount.y++;
            initPos.y += info.movement.y;
            if (info.movement.y > 0) {
                // Moving down. We still need to draw the tile on the top,
                // so adjust our referential.
                topTile.y--;
                initPos.y -= tileSize;
            }
        }
    }

    function canDrawCurrentTile(pos:Int3):Bool {
        if ((settings.field("session").field("spectate"):Bool))
            return true;

        var neighbors = new NeighborTilesInfo(pos, data.sizes, info.visibilityMap, (settings.field("session").field("spectate"):Bool));
        return !neighbors.areAllHidden();
    }

    function canDrawObject(obj:GObjectInstance, pos:Int3) {
        //checking if object has non-empty graphic on this tile
        return obj.ID == Obj.HERO || obj.coveringAt(pos.x, pos.y);
    }

    function drawTileTerrain(tinfo:TerrainTile) {
        var destRect = new Rect(realPos.x, realPos.y, tileSize, tileSize);
        var rotation:Int = tinfo.extTileFlags % 4;
        drawElement(graphics.terrainImages[tinfo.terType][tinfo.terView], null, destRect, rotation);
    }

    function drawRiver(tinfo:TerrainTile) {
        if(tinfo.riverType == RiverType.NO_RIVER) {
            return;
        }
        var destRect = new Rect(realPos.x, realPos.y, tileSize, tileSize);
        var rotation = (tinfo.extTileFlags >> 2) % 4;
        drawElement(graphics.riverImages[tinfo.riverType-1][tinfo.riverDir], null, destRect, rotation);
    }

    function drawRoad(tinfo:TerrainTile) {
        if(tinfo.roadType == RoadType.NO_ROAD) {
            return;
        }
        var destRect = new Rect(realPos.x, realPos.y + halfTileSizeCeil, tileSize, tileSize);
        var rotation:Int = (tinfo.extTileFlags >> 4) % 4;
        drawElement(graphics.roadImages[tinfo.roadType - 1][tinfo.roadDir], null, destRect, rotation);
    }

    public function drawFow(pos:Int3) {
        var neighborInfo = new NeighborTilesInfo(pos, data.sizes, info.visibilityMap, (settings.field("session").field("spectate"):Bool));

        var retBitmapID:Int = neighborInfo.getBitmapID();// >=0 . partial hide, <0 - full hide
        if (retBitmapID < 0) {
            retBitmapID = - data.hideBitmap[pos.x][pos.y][pos.z] - 1; //fully hidden
        }

        var image:Texture;

        if (retBitmapID >= 0) {
            image = graphics.fogOfWarPartialHide.getTexture(retBitmapID);
        } else {
            image = graphics.fogOfWarFullHide.getTexture(-retBitmapID - 1);
        }

        var destRect = new Rect(realPos.x, realPos.y, tileSize, tileSize);
        drawElement(image, null, destRect);
    }

    function drawObjects() {
        var pos = new Int3();

        realPos.y = initPos.y;
        pos.y = topTile.y;
        for (j in 0...tileCount.y) {
            realPos.x = initPos.x;
            pos.x = topTile.x;
            for (i in 0...tileCount.x) {
                var tile:MapTile = data.ttiles[pos.x][pos.y][pos.z];
                var objects = tile.objects;
                for(object in objects) {
                    if(object.obj.pos.equals(pos)) {
                        drawObj(object.obj);
                    }
                }
                pos.x++;
                realPos.x += tileSize;
            }
            pos.y++;
            realPos.y += tileSize;
        }
    }

    function drawObj(object:GObjectInstance) {
        var alpha = 1.0;
        var objectBounds = new Rect();
        objectBounds.update(object.getLeft(), object.getTop(), object.getWidth(), object.getHeight());
//        if (!canvasBounds.cross(objectBounds)) {
//            continue;
//        }
        if (object.fadeAnimKey >= 0) {
            if (object.fadeAnimKey >= 0) {
                if (data.fadeAnims.exists(object.fadeAnimKey)) {
                    // this object is currently fading, so skip normal drawing
                    var fade:FadeAnimation = data.fadeAnims[object.fadeAnimKey].anim;
                    alpha = fade.alpha;
                }
                trace('Fading map object with missing fade anim : ${object.fadeAnimKey}');
            }
        }

        if (object == null) {
            trace("Stray map object that isn't fading");
            return;
        }

//            if (!canDrawObject(obj))
//                continue;

        var objData = findObjectBitmap(object, info.anim);
        if (objData.objBitmap != null) {
            drawObject(
                objData.objBitmap,
                new Rect(
                initPos.x + (objectBounds.x - topTile.x) * tileSize,
                initPos.y + (objectBounds.y - topTile.y) * tileSize,
                objectBounds.w * tileSize,
                objectBounds.h * tileSize
                ),
                objData.isMoving);

            if (objData.flagBitmap != null) {
                if (objData.isMoving) {
//                        srcRect.y += FRAMES_PER_MOVE_ANIM_GROUP * 2 - tileSize;
                    var dstRect = new Rect(
                    initPos.x + (objectBounds.x - topTile.x) * tileSize,
                    initPos.y + Std.int((objectBounds.y - topTile.y - 0.5) * tileSize),
                    tileSize,
                    tileSize
                    );
                    drawHeroFlag(objData.flagBitmap, /*srcRect*/null, dstRect, true);
                } else {
                    var dstRect = new Rect(
                    initPos.x + (objectBounds.x - topTile.x) * tileSize,
                    initPos.y + (objectBounds.y - topTile.y) * tileSize,
                    tileSize,
                    tileSize
                    );
                    drawHeroFlag(objData.flagBitmap, null, dstRect, false);
                }
            }
        }
    }

    function drawObject(source:Texture, drawRect:Rect, moving:Bool, alpha:Float = 1) {
        drawElement(source, null, drawRect, alpha);
    }

    public function drawHeroFlag(source:Texture, sourceRect:Rect, destRect:Rect, moving:Bool, alpha:Float = 1) {
        drawElement(source, sourceRect, destRect, alpha);
    }

    function findObjectBitmap(obj:GObjectInstance, anim:Int):AnimTextureHolder {
        if (obj == null) {
            return new AnimTextureHolder();
        }
        if (obj.ID == Obj.HERO) {
            return findHeroBitmap(cast(obj, GHeroInstance), anim);
        }
        if (obj.ID == Obj.BOAT) {
            return findBoatBitmap(cast(obj, GBoat), anim);
        }

        // normal object
        var animation:PixiAnimation = TextureGraphics.instance.getAnimation(obj);
        var groupSize:Int = animation.size();
        if (groupSize == 0) {
            return new AnimTextureHolder();
        }

        var bitmap = animation.getTexture((anim + getPhaseShift(obj)) % groupSize);
        if (bitmap == null) {
            return new AnimTextureHolder();
        }

//        bitmap.setFlagColor(obj.tempOwner);

        return new AnimTextureHolder(bitmap);
    }

    public function findHeroBitmap(hero:GHeroInstance, anim:Int):AnimTextureHolder {
        if (hero != null && hero.moveDir > 0 && hero.type != null) {//it's hero or boat
            if (hero.tempOwner.getNum() >= PlayerColor.PLAYER_LIMIT) { //Neutral hero?
                trace('[Error] A neutral hero ${hero.name} at ${hero.pos.toString()}. Should not happen!');
                return new AnimTextureHolder();
            }

            //pick graphics of hero (or boat if hero is sailing)
            var animation:PixiAnimation;
            if (hero.boat != null) {
                animation = TextureGraphics.instance.boatAnimations[hero.boat.subID];
            } else {
                animation = TextureGraphics.instance.heroAnimations[hero.appearance.animationFile];
            }

            var moving = !hero.isStanding;
            var group = getHeroFrameGroup(hero.moveDir, moving);

            try {
                if (animation.size(group) > 0) {
                    var frame = anim % animation.size(group);
                    var heroImage = animation.getTexture(frame, group);

                    //get flag overlay only if we have main image
                    var flagImage = findFlagBitmap(hero, anim, hero.tempOwner, group);

                    return new AnimTextureHolder(heroImage, flagImage, moving);
                }
            }
            catch(e:Dynamic) {
                trace(e);
            }
        }
        return new AnimTextureHolder();
    }

    public function findBoatBitmap(boat:GBoat, anim:Int) {
        var animation = TextureGraphics.instance.boatAnimations[boat.subID];
        var group:Int = getHeroFrameGroup(boat.direction, false);
        if (animation.size(group) > 0) {
            return new AnimTextureHolder(animation.getTexture(anim % animation.size(group), group));
        } else {
            return new AnimTextureHolder();
        }
    }

    public function getHeroFrameGroup(dir:Int, isMoving:Bool):Int {
        return if (isMoving) {
            movingHeroFrameGroup[dir];
        } else {
            heroFrameGroup[dir];
        }
    }

    private function findFlagBitmap(hero:GHeroInstance, anim:Int, color:PlayerColor, group:Int) {
        if (hero == null) {
            //ToDo
            return null;
        }

        if(hero.boat != null) {
            return findBoatFlagBitmap(hero.boat, anim, color, group, hero.moveDir);
        }
        return findHeroFlagBitmap(hero, anim, color, group);
    }

    private function findBoatFlagBitmap(boat:GBoat, anim:Int, color:PlayerColor, group:Int, dir:Int) {
        var boatType:Int = boat.subID;
        if (boatType < 0 || boatType >= SdlGraphics.instance.boatFlagAnimations.length) {
            trace('Not supported boat subtype: ${boat.subID}');
            return null;
        }

        var subtypeFlags = TextureGraphics.instance.boatFlagAnimations[boatType];

        var colorIndex:Int = color.getNum();

        if (colorIndex < 0 || colorIndex >= subtypeFlags.length) {
            trace('[Error] Invalid player color {colorIndex}');
            return null;
        }

        return findFlagBitmapInternal(subtypeFlags[colorIndex], anim, group, dir, false);
    }

    private function findHeroFlagBitmap(hero:GHeroInstance, anim:Int, color:PlayerColor, group:Int) {
        return findFlagBitmapInternal(TextureGraphics.instance.heroFlagAnimations[color.getNum()], anim, group, hero.moveDir, !hero.isStanding);
    }

    private function findFlagBitmapInternal(animation:PixiAnimation, anim:Int, group:Int, dir:Int, moving:Bool) {
        var groupSize = animation.size(group);
        if (groupSize == 0) {
            return null;
        }

        if (moving) {
            return animation.getTexture(anim % groupSize, group);
        } else {
            return animation.getTexture(Std.int(anim / 4) % groupSize, group);
        }
    }

    function drawElement(source:Texture, src:Rect, dest:Rect, rotation:Int = 0, alpha:Float = 1) {
        var sprite = new Sprite(source);
        sprite.x = dest.x;
        sprite.y = dest.y;
        sprite.alpha = alpha;

        // flipping
        if (rotation == 2 || rotation == 3) {
            sprite.position.y += dest.h;
            sprite.scale.y = -1;
        }
        if (rotation == 1 || rotation == 3) {
            sprite.position.x += dest.w;
            sprite.scale.x = -1;
        }
        container.addChild(sprite);
    }

    function getPhaseShift(object:GObjectInstance):Int {
        if(!data.animationPhase.exists(object)) {
            var ret = Std.random(254);
            data.animationPhase[object] = ret;
            return ret;
        }

        return data.animationPhase[object];
    }

    // dangerous, leads browser crash in some time
    private function drawDebugGrid() {
        if ((settings.field("session").field("showGrid"):Bool)) {
            graphicLayer.lineStyle(1, 0x555555);
            realPos.x = initPos.x;
            for (i in 0...tileCount.x) {
                graphicLayer.moveTo(realPos.x, info.drawBounds.y);
                graphicLayer.lineTo(realPos.x, info.drawBounds.y + tileCount.x * tileSize);
                realPos.x += tileSize;
            }
            realPos.y = initPos.y;
            for (j in 0...tileCount.y) {
                graphicLayer.moveTo(info.drawBounds.x, realPos.y);
                graphicLayer.lineTo(info.drawBounds.x + tileCount.y * tileSize, realPos.y);
                realPos.y += tileSize;
            }
            container.addChild(graphicLayer);
        }
    }
}
