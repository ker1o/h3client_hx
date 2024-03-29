package client.maphandler;

import constants.id.PlayerColor;
import constants.Obj;
import gui.animation.IImage;
import gui.Animation;
import gui.geometries.Rect;
import js.html.CanvasRenderingContext2D;
import mapObjects.GObjectInstance;
import mapObjects.hero.GHeroInstance;
import mapObjects.misc.GBoat;
import mapping.RiverType;
import mapping.RoadType;
import mapping.TerrainTile;
import utils.Int3;

using Reflect;

class MapBlitter {
    private static var movingHeroFrameGroup:Array<Int> = [0xff, 10, 5, 6, 7, 8, 9, 12, 11];
    private static var heroFrameGroup:Array<Int> = [0xff, 10, 5, 6, 7, 8, 9, 12, 11];

    private var FRAMES_PER_MOVE_ANIM_GROUP:Int = 8;
    private var parent:MapHandler; // ptr to enclosing private var handler:map; generally for legacy reasons, probably could/should be refactored out of here
    private var tileSize:Int; // size of a tile drawn on map [in pixels]
    private var halfTileSizeCeil:Int; // half of the tile size, rounded up
    private var tileCount:Int3; // number of tiles in current viewport
    private var topTile:Int3; // top-left tile of the viewport
    private var initPos:Int3; // starting drawing position [in pixels]
    private var pos:Int3; // current position [in tiles]
    private var realPos:Int3; // current position [in pixels]
    private var realTileRect:Rect; // default rect based on current pos: [realPos.x, realPos.y, tileSize, tileSize]
    private var defaultTileRect:Rect; // default rect based on 0: [0, 0, tileSize, tileSize]
    private var info:MapDrawingInfo; // data for drawing passed from outside

    private var settings:Dynamic;

    public function new(p:MapHandler) {
        parent = p;
        tileSize = 0;
        halfTileSizeCeil = 0;
        info = null;

        tileCount = new Int3();
        topTile = new Int3();
        initPos = new Int3();
        pos = new Int3();
        realPos = new Int3();
        realTileRect = new Rect();
        defaultTileRect = new Rect();

        //ToDo: remove
        settings = {
            session: {
                spectate:true,
                showBlock:false,
                showVisit:false,
                showGrid:false
            }
        };
    }

    /// initializes frame-drawing (called at the start of every redraw)
    public function init(drawingInfo:MapDrawingInfo):Void {
        throw 'MapBlitter.init()';
    }

    #if js
    public function blit(targetSurf:CanvasRenderingContext2D, info:MapDrawingInfo) {
        init(info);
        var prevClip = clip(targetSurf);

        pos = new Int3(0, 0, topTile.z);

        realPos.x = initPos.x;
        pos.x = topTile.x;
        for (i in 0...tileCount.x) {
            if (pos.x < 0 || pos.x >= parent.sizes.x) {
                continue;
            }

            realPos.y = initPos.y;
            pos.y = topTile.y;
            for (j in 0...tileCount.y) {
                if (pos.y < 0 || pos.y >= parent.sizes.y) {
                    continue;
                }

                var isVisible:Bool = canDrawCurrentTile();

                realTileRect.x = realPos.x;
                realTileRect.y = realPos.y;

                var tile:TerrainTile2 = parent.ttiles.get(pos.x).get(pos.y).get(pos.z);
                var tinfo:TerrainTile = parent.map.getTileByInt3(pos);
                var tinfoUpper:TerrainTile = pos.y > 0 ? parent.map.getTile(pos.x, pos.y - 1, pos.z) : null;

                if (isVisible || info.showAllTerrain) {
                    drawTileTerrain(targetSurf, tinfo, tile);
                    if (tinfo.riverType != RiverType.NO_RIVER) {
                        drawRiver(targetSurf, tinfo);
                    }
                    drawRoad(targetSurf, tinfo, tinfoUpper, i, j);
                }

                if (isVisible) {
                    drawObjects(targetSurf, tile);
                }

                pos.y++;
                realPos.y += tileSize;
            }

            pos.x++;
            realPos.x += tileSize;
        }

        realPos.x = initPos.x;
        pos.x = topTile.x;
        for (i in 0...tileCount.x) {
            realPos.y = initPos.y;
            pos.y = topTile.y;
            for (j in 0...tileCount.y) {
                realTileRect.x = realPos.x;
                realTileRect.y = realPos.y;

                if (pos.x < 0 || pos.x >= parent.sizes.x || pos.y < 0 || pos.y >= parent.sizes.y) {
                    drawFrame(targetSurf);
                } else {
                    var tile:TerrainTile2 = parent.ttiles.get(pos.x).get(pos.y).get(pos.z);

                    if(!(settings.field("session").field("spectate"):Bool) && !info.visibilityMap[pos.x][pos.y][topTile.z] && !info.showAllTerrain) {
                        drawFow(targetSurf);
                    }

                    // overlay needs to be drawn over fow, because of artifacts-aura-like spells
                    drawTileOverlay(targetSurf, tile);

                    // drawDebugVisitables()
                    if ((settings.field("session").field("showBlock"):Bool)) {
                        if(parent.map.getTile(pos.x, pos.y, pos.z).blocked) { //temporary hiding blocked positions
                            var block:Dynamic /*SDL_Surface*/ = null;
                            if (!block) {
//                                block = BitmapHandler.loadBitmap("blocked");
                            }

//                            CSDL_Ext.blitSurface(block, null, targetSurf, &realTileRect);
                        }
                    }
                    if ((settings.field("session").field("showVisit"):Bool)) {
                        if (parent.map.getTile(pos.x, pos.y, pos.z).visitable) { //temporary hiding visitable positions
                            var visit:Dynamic /*SDL_Surface*/ = null;
                            if (!visit) {
//                                visit = BitmapHandler.loadBitmap("visitable");
                            }

//                            CSDL_Ext.blitSurface(visit, null, targetSurf, &realTileRect);
                        }
                    }
                }
                pos.y++;
                realPos.y += tileSize;
            }
            pos.x++;
            realPos.x += tileSize;
        }

        drawOverlayEx(targetSurf);

        // drawDebugGrid()
        if ((settings.field("session").field("showGrid"):Bool)) {
            realPos.x = initPos.x;
            pos.x = topTile.x;
            for (i in 0...tileCount.x) {
                realPos.y = initPos.y;
                pos.y = topTile.y;
                for (j in 0...tileCount.y) {
                    var color = new Int3(0x555555, 0x555555, 0x555555);

                    if ((realPos.y >= info.drawBounds.y) && (realPos.y < info.drawBounds.y + info.drawBounds.h)) {
                        for (i in 0...tileSize) {
                            if ((realPos.x + i >= info.drawBounds.x) && (realPos.x + i < info.drawBounds.x + info.drawBounds.w)) {
//                                CSDL_Ext.SDL_PutPixelWithoutRefresh(targetSurf, realPos.x + i, realPos.y, color.x, color.y, color.z);
                            }
                        }
                    }

                    if ((realPos.x >= info.drawBounds.x) && (realPos.x < info.drawBounds.x + info.drawBounds.w)) {
                        for (i in 0...tileSize) {
                            if ((realPos.y + i >= info.drawBounds.y) && (realPos.y + i < info.drawBounds.y + info.drawBounds.h)) {
//                                CSDL_Ext.SDL_PutPixelWithoutRefresh(targetSurf, realPos.x, realPos.y + i, color.x, color.y, color.z);
                            }
                        }
                    }
                    pos.y++;
                    realPos.y += tileSize;
                }
                pos.x++;
                realPos.x += tileSize;
            }
        }

        postProcessing(targetSurf);

//        SDL_SetClipRect(targetSurf, &prevClip);
    }

    public function clip(targetSurf:CanvasRenderingContext2D):Rect {
        throw 'MapBlitter.clip()';
    }

    public function drawOverlayEx(targetSurf:CanvasRenderingContext2D) {
        //nothing
    }

    public function postProcessing(targetSurf:CanvasRenderingContext2D) {
        throw 'MapBlitter.postProcessing()';
    }

    public function drawTileOverlay(targetSurf:CanvasRenderingContext2D, tile:TerrainTile2) {
        throw 'MapBlitter.drawTileOverlay()';
    }

    public function drawFrame(targetSurf:CanvasRenderingContext2D) {
        // ToDo: avoid redwawing frame for now
    }

    public function drawElement(source:IImage, sourceRect:Rect, tarfetSurf:CanvasRenderingContext2D, destRect:Rect) {
        throw 'MapBlitter.drawElement()';
    }

    public function canDrawCurrentTile():Bool {
        if ((settings.field("session").field("spectate"):Bool))
            return true;

        var neighbors = new NeighborTilesInfo(pos, parent.sizes, info.visibilityMap, (settings.field("session").field("spectate"):Bool));
        return !neighbors.areAllHidden();
    }

    public function drawTileTerrain(targetSurf:CanvasRenderingContext2D, tinfo:TerrainTile, tile:TerrainTile2) {
        var destRect = new Rect(realTileRect.x, realTileRect.y, realTileRect.w, realTileRect.h);
        var rotation:Int = tinfo.extTileFlags % 4;

        drawElement(parent.terrainImages[tinfo.terType][tinfo.terView][rotation], null, targetSurf, destRect);
    }

    public function drawRiver(targetSurf:CanvasRenderingContext2D, tinfo:TerrainTile) {
        var destRect = Rect.fromRect(realTileRect);
        var rotation = (tinfo.extTileFlags >> 2) % 4;

        drawElement(parent.riverImages[tinfo.riverType-1][tinfo.riverDir][rotation], null, targetSurf, destRect);
    }

    public function drawRoad(targetSurf:CanvasRenderingContext2D, tinfo:TerrainTile, tinfoUpper:TerrainTile, i:Int, j:Int) {
        if (tinfoUpper != null && tinfoUpper.roadType != RoadType.NO_ROAD) {
            var rotation:Int = (tinfoUpper.extTileFlags >> 4) % 4;
            var source = new Rect(0, halfTileSizeCeil, tileSize, halfTileSizeCeil);
            var dest = new Rect(realPos.x, realPos.y, tileSize, halfTileSizeCeil);
            drawElement(parent.roadImages[tinfoUpper.roadType - 1][tinfoUpper.roadDir][rotation], source, targetSurf, dest);
        }

        if(tinfo.roadType != RoadType.NO_ROAD) {//print road from this tile
            var rotation:Int = (tinfo.extTileFlags >> 4) % 4;
            var source = new Rect(0, 0, tileSize, halfTileSizeCeil);
            var dest = new Rect(realPos.x, realPos.y + halfTileSizeCeil, tileSize, halfTileSizeCeil);
            drawElement(parent.roadImages[tinfo.roadType - 1][tinfo.roadDir][rotation], source, targetSurf, dest);
        }
    }

    public function drawObjects(targetSurf:CanvasRenderingContext2D, tile:TerrainTile2) {
        var objects = tile.objects;
        for(object in objects) {
            if (object.fadeAnimKey >= 0) {
                //ToDo
/*
                var fade = parent.fadeAnims.find(object.fadeAnimKey);
                if (fade != null) {
                    // this object is currently fading, so skip normal drawing
                    var r2 = Rect.fromRect(realTileRect);
                    var fade:FadeAnimation = fade.second.second;
                    fade.draw(targetSurf, null, r2);
                    continue;
                }
                trace('Fading map object with missing fade anim : ${object.fadeAnimKey}');
*/
                continue;
            }

            var obj:GObjectInstance = object.obj;
            if (obj == null) {
                trace("Stray map object that isn't fading");
                continue;
            }

            if (!canDrawObject(obj))
                continue;

            var objData = findObjectBitmap(obj, info.anim);
            if (objData.objBitmap != null) {
                var srcRect = new Rect(object.rect.x, object.rect.y, tileSize, tileSize);

                drawObject(targetSurf, objData.objBitmap, srcRect, objData.isMoving);
                if (objData.flagBitmap != null) {
                    if (objData.isMoving) {
                        srcRect.y += FRAMES_PER_MOVE_ANIM_GROUP * 2 - tileSize;
                        var dstRect = new Rect(realPos.x, Std.int(realPos.y - tileSize / 2), tileSize, tileSize);
                        drawHeroFlag(targetSurf, objData.flagBitmap, srcRect, dstRect, true);
                    } else if (obj.pos.x == pos.x && obj.pos.y == pos.y) {
                        var dstRect = new Rect(realPos.x - 2 * tileSize, realPos.y - tileSize, 3 * tileSize, 2 * tileSize);
                        drawHeroFlag(targetSurf, objData.flagBitmap, null, dstRect, false);
                    }
                }
            }
        }
    }

    public function canDrawObject(obj:GObjectInstance) {
        //checking if object has non-empty graphic on this tile
        return obj.ID == Obj.HERO || obj.coveringAt(pos.x, pos.y);
    }

    public function drawObject(targetSurf:CanvasRenderingContext2D, source:IImage, sourceRect:Rect, moving:Bool) {
        var dstRect = Rect.fromRect(realTileRect);
        drawElement(source, sourceRect, targetSurf, dstRect);
    }

    public function drawHeroFlag(targetSurf:CanvasRenderingContext2D, source:IImage, sourceRect:Rect, destRect:Rect, moving:Bool) {
        drawElement(source, sourceRect, targetSurf, destRect);
    }

    public function findObjectBitmap(obj:GObjectInstance, anim:Int):AnimBitmapHolder {
        if (obj == null) {
            return new AnimBitmapHolder();
        }
        if (obj.ID == Obj.HERO) {
            return findHeroBitmap(cast(obj, GHeroInstance), anim);
        }
        if (obj.ID == Obj.BOAT) {
            return findBoatBitmap(cast(obj, GBoat), anim);
        }

        // normal object
        var animation:Animation = Graphics.instance.getAnimation(obj);
        var groupSize:Int = animation.size();
        if (groupSize == 0) {
            return new AnimBitmapHolder();
        }

        var bitmap = animation.getImage((anim + getPhaseShift(obj)) % groupSize);
        if (bitmap == null) {
            return new AnimBitmapHolder();
        }

        bitmap.setFlagColor(obj.tempOwner);

        return new AnimBitmapHolder(bitmap);
    }

    public function findHeroBitmap(hero:GHeroInstance, anim:Int):AnimBitmapHolder {
        if (hero != null && hero.moveDir > 0 && hero.type != null) //it's hero or boat
        {
            if (hero.tempOwner.getNum() >= PlayerColor.PLAYER_LIMIT) { //Neutral hero?
                trace('[Error] A neutral hero ${hero.name} at ${hero.pos.toString()}. Should not happen!');
                return new AnimBitmapHolder();
            }

            //pick graphics of hero (or boat if hero is sailing)
            var animation:Animation;
            if (hero.boat != null) {
                animation = Graphics.instance.boatAnimations[hero.boat.subID];
            } else {
                animation = Graphics.instance.heroAnimations[hero.appearance.animationFile];
            }

            var moving = !hero.isStanding;
            var group = getHeroFrameGroup(hero.moveDir, moving);

            if (animation.size(group) > 0) {
                var frame = anim % animation.size(group);
                var heroImage = animation.getImage(frame, group);

                //get flag overlay only if we have main image
                var flagImage = findFlagBitmap(hero, anim, hero.tempOwner, group);

                return new AnimBitmapHolder(heroImage, flagImage, moving);
            }
        }
        return new AnimBitmapHolder();
    }

    private function findFlagBitmap(hero:GHeroInstance, anim:Int, color:PlayerColor, group:Int):IImage {
        if (hero == null) {
            //ToDo
            return null;
        }

        if(hero.boat != null) {
            return findBoatFlagBitmap(hero.boat, anim, color, group, hero.moveDir);
        }
        return findHeroFlagBitmap(hero, anim, color, group);
    }

    public function findBoatBitmap(boat:GBoat, anim:Int):AnimBitmapHolder {
        var animation = Graphics.instance.boatAnimations[boat.subID];
        var group:Int = getHeroFrameGroup(boat.direction, false);
        if (animation.size(group) > 0) {
            return new AnimBitmapHolder(animation.getImage(anim % animation.size(group), group));
        } else {
            return new AnimBitmapHolder();
        }
    }

    private function findHeroFlagBitmap(hero:GHeroInstance, anim:Int, color:PlayerColor, group:Int):IImage {
        return findFlagBitmapInternal(Graphics.instance.heroFlagAnimations[color.getNum()], anim, group, hero.moveDir, !hero.isStanding);
    }

    private function findBoatFlagBitmap(boat:GBoat, anim:Int, color:PlayerColor, group:Int, dir:Int):IImage {
        var boatType:Int = boat.subID;
        if (boatType < 0 || boatType >= Graphics.instance.boatFlagAnimations.length) {
            trace('Not supported boat subtype: ${boat.subID}');
            return null;
        }

        var subtypeFlags = Graphics.instance.boatFlagAnimations[boatType];

        var colorIndex:Int = color.getNum();

        if (colorIndex < 0 || colorIndex >= subtypeFlags.length) {
            trace('[Error] Invalid player color {colorIndex}');
            return null;
        }

        return findFlagBitmapInternal(subtypeFlags[colorIndex], anim, group, dir, false);
    }

    private function findFlagBitmapInternal(animation:Animation, anim:Int, group:Int, dir:Int, moving:Bool) {
        var groupSize = animation.size(group);
        if (groupSize == 0) {
            return null;
        }

        if(moving) {
            return animation.getImage(anim % groupSize, group);
        } else {
            return animation.getImage(Std.int(anim / 4) % groupSize, group);
        }
    }

    public function getPhaseShift(object:GObjectInstance):Int {
        if(!parent.animationPhase.exists(object)) {
            var ret = Std.random(254);
            parent.animationPhase[object] = ret;
            return ret;
        }

        return parent.animationPhase[object];

    }

    public function getHeroFrameGroup(dir:Int, isMoving:Bool):Int {
        return if (isMoving) {
            movingHeroFrameGroup[dir];
        } else {
            heroFrameGroup[dir];
        }
    }

    public function drawFow(targetSurf:CanvasRenderingContext2D) {
        var neighborInfo = new NeighborTilesInfo(pos, parent.sizes, info.visibilityMap, (settings.field("session").field("spectate"):Bool));

        var retBitmapID:Int = neighborInfo.getBitmapID();// >=0 . partial hide, <0 - full hide
        if (retBitmapID < 0) {
            retBitmapID = - parent.hideBitmap[pos.x][pos.y][pos.z] - 1; //fully hidden
        }

        var image:IImage;

        if (retBitmapID >= 0) {
            image = parent.fowPartialHide[retBitmapID];
        } else {
            image = parent.fowFullHide[-retBitmapID - 1];
        }

        var destRect = Rect.fromRect(realTileRect);
        drawElement(image, null, targetSurf, destRect);
    }
    #end
}
