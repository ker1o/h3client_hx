package client.view.pixijs;
import client.maphandler.TerrainTile2;
import client.maphandler.AnimTextureHolder;
import pixi.core.textures.BaseTexture;
import pixi.core.display.Container;
import pixi.core.textures.Texture;
import pixi.core.sprites.Sprite;
import constants.Obj;
import mapping.RoadType;
import mapObjects.GObjectInstance;
import mapping.RiverType;
import mapping.TerrainTile;
import client.maphandler.NeighborTilesInfo;
import client.maphandler.TerrainTile2;
import utils.Int3;
import pixi.extras.AnimatedSprite;
import js.lib.Promise;
import client.maphandler.IMapDrawer;
import client.maphandler.MapDrawingInfo;
import client.maphandler.MapData;
import gui.geometries.Rect;

using Lambda;
using Reflect;

class PixiBlitter implements IMapDrawer {
    var data:MapData;
    var container:Container;

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

    var graphics:TextureGraphics;

    public function new(data:MapData, container:Container) {
        this.data = data;
        this.container = container;

        graphics = TextureGraphics.instance;

        tileCount = new Int3();
        topTile = new Int3();
        initPos = new Int3();
        pos = new Int3();
        realPos = new Int3();
        realTileRect = new Rect();
        defaultTileRect = new Rect();

        tileSize = 32;
        halfTileSizeCeil = 16;
        defaultTileRect = new Rect(0, 0, tileSize, tileSize);

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
        pos.x = topTile.x;
        for (i in 0...tileCount.x) {
            realPos.y = initPos.y;
            pos.y = topTile.y;
            for (j in 0...tileCount.y) {
                realTileRect.x = realPos.x;
                realTileRect.y = realPos.y;

                if (pos.x < 0 || pos.x >= data.sizes.x || pos.y < 0 || pos.y >= data.sizes.y) {
//                    drawFrame();
                } else {
                    var tile:TerrainTile2 = data.ttiles.get(pos.x).get(pos.y).get(pos.z);

//                    if(!(settings.field("session").field("spectate"):Bool) && !info.visibilityMap[pos.x][pos.y][topTile.z] && !info.showAllTerrain) {
//                        drawFow();
//                    }

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
//                                CSDL_Ext.SDL_PutPixelWithoutRefresh(realPos.x + i, realPos.y, color.x, color.y, color.z);
                            }
                        }
                    }

                    if ((realPos.x >= info.drawBounds.x) && (realPos.x < info.drawBounds.x + info.drawBounds.w)) {
                        for (i in 0...tileSize) {
                            if ((realPos.y + i >= info.drawBounds.y) && (realPos.y + i < info.drawBounds.y + info.drawBounds.h)) {
//                                CSDL_Ext.SDL_PutPixelWithoutRefresh(realPos.x, realPos.y + i, color.x, color.y, color.z);
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
    }

    function drawLayer(func:TerrainTile->TerrainTile2->Void, showAll:Bool) {
        pos = new Int3(0, 0, topTile.z);

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

                var isVisible:Bool = canDrawCurrentTile();

                realTileRect.x = realPos.x;
                realTileRect.y = realPos.y;

                var tile:TerrainTile2 = data.ttiles.get(pos.x).get(pos.y).get(pos.z);
                var tinfo:TerrainTile = null;
                try {
                    tinfo = data.map.getTileByInt3(pos);

                } catch(e:Dynamic) {
                    trace("");

                }

                if(isVisible || showAll) {
                    func(tinfo, tile);
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
        tileCount.x = data.tilesW;
        tileCount.y = data.tilesH;

        topTile = info.topTile;
        initPos.x = data.offsetX + info.drawBounds.x;
        initPos.y = data.offsetY + info.drawBounds.y;

        realTileRect = new Rect(initPos.x, initPos.y, tileSize, tileSize);

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

        // Reduce sizes if we go out of the full map.
        if (topTile.x < -data.frameW) {
            topTile.x = -data.frameW;
        }
        if (topTile.y < -data.frameH) {
            topTile.y = -data.frameH;
        }
        if (topTile.x + tileCount.x > data.sizes.x + data.frameW) {
            tileCount.x = data.sizes.x + data.frameW - topTile.x;
        }
        if (topTile.y + tileCount.y > data.sizes.y + data.frameH) {
            tileCount.y = data.sizes.y + data.frameH - topTile.y;
        }
    }

    function canDrawCurrentTile():Bool {
        if ((settings.field("session").field("spectate"):Bool))
            return true;

        var neighbors = new NeighborTilesInfo(pos, data.sizes, info.visibilityMap, (settings.field("session").field("spectate"):Bool));
        return !neighbors.areAllHidden();
    }

    function canDrawObject(obj:GObjectInstance) {
        //checking if object has non-empty graphic on this tile
        return obj.ID == Obj.HERO || obj.coveringAt(pos.x, pos.y);
    }

    function drawTileTerrain(tinfo:TerrainTile, tile:TerrainTile2 = null) {
        var destRect = new Rect(realTileRect.x, realTileRect.y, realTileRect.w, realTileRect.h);
        var rotation:Int = tinfo.extTileFlags % 4;

        drawElement(graphics.terrainImages[tinfo.terType][tinfo.terView], null, destRect, rotation);
    }

    function drawRiver(tinfo:TerrainTile, tile:TerrainTile2 = null) {
        if(tinfo.riverType == RiverType.NO_RIVER) {
            return;
        }

        var destRect = Rect.fromRect(realTileRect);
        var rotation = (tinfo.extTileFlags >> 2) % 4;

        drawElement(graphics.riverImages[tinfo.riverType-1][tinfo.riverDir], null, destRect, rotation);
    }

    function drawRoad(tinfo:TerrainTile, tile:TerrainTile2 = null) {
        if(tinfo.roadType != RoadType.NO_ROAD) {//print road from this tile
            var rotation:Int = (tinfo.extTileFlags >> 4) % 4;
            var source = new Rect(0, 0, tileSize, tileSize);
            var dest = new Rect(realPos.x, realPos.y + halfTileSizeCeil, tileSize, tileSize);
            drawElement(graphics.roadImages[tinfo.roadType - 1][tinfo.roadDir], source, dest, rotation);
        }
    }

    function drawObjects() {
        for(object in data.map.objects) {
//            if (object.fadeAnimKey >= 0) {
//                //ToDo
//                continue;
//            }

            var obj:GObjectInstance = object;
            if (obj == null) {
                trace("Stray map object that isn't fading");
                continue;
            }

//            if (!canDrawObject(obj))
//                continue;

            var objData = findObjectBitmap(obj, info.anim);
            if (objData.objBitmap != null) {
                drawObject(objData.objBitmap, new Rect(initPos.x + (object.pos.x - topTile.x - object.getWidth() + 1) * tileSize, initPos.y + (object.pos.y - topTile.y - object.getHeight() + 1) * tileSize, object.getWidth() * tileSize, object.getHeight() * tileSize), objData.isMoving);
            }
        }
    }

    function drawObject(source:Texture, positionRect:Rect, moving:Bool) {
        drawElement(source, null, positionRect);
    }

    function findObjectBitmap(obj:GObjectInstance, anim:Int):AnimTextureHolder {
        if (obj == null) {
            return new AnimTextureHolder();
        }
//        if (obj.ID == Obj.HERO) {
//            return findHeroBitmap(cast(obj, GHeroInstance), anim);
//        }
//        if (obj.ID == Obj.BOAT) {
//            return findBoatBitmap(cast(obj, GBoat), anim);
//        }

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

    function drawElement(source:Texture, src:Rect, dest:Rect, rotation:Int = 0) {
        var paddingX = 0;
        var paddingY = 0;
        var sprite = new Sprite(source);
        sprite.x = dest.x - paddingX;
        sprite.y = dest.y - paddingY;
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

    public function getPhaseShift(object:GObjectInstance):Int {
        if(!data.animationPhase.exists(object)) {
            var ret = Std.random(254);
            data.animationPhase[object] = ret;
            return ret;
        }

        return data.animationPhase[object];
    }
}
