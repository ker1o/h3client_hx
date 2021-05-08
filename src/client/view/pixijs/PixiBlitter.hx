package client.view.pixijs;

import pixi.core.graphics.Graphics;
import client.maphandler.AnimTextureHolder;
import client.maphandler.IMapDrawer;
import client.maphandler.MapData;
import client.maphandler.MapDrawingInfo;
import client.maphandler.NeighborTilesInfo;
import client.maphandler.TerrainTile2;
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
                showGrid:true
            }
        };

        graphicLayer = new Graphics();
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
                    var tile:TerrainTile2 = data.ttiles[pos.x][pos.y][pos.z];

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
        tileCount.x = data.tilesW;
        tileCount.y = data.tilesH;

        topTile = info.topTile;
        initPos.x = data.offsetX + info.drawBounds.x;
        initPos.y = data.offsetY + info.drawBounds.y;

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

    function drawObjects() {
        var canvasBounds = new Rect(topTile.x, topTile.y, topTile.x + tileCount.x, tileCount.y);
        var objectBounds = new Rect();
        for(object in data.map.objects) {
            objectBounds.update(object.getLeft(), object.getTop(), object.getWidth(), object.getHeight());
            if (!canvasBounds.cross(objectBounds)) {
                continue;
            }
//            if (object.fadeAnimKey >= 0) {
//                //ToDo
//                continue;
//            }

            if (object == null) {
                trace("Stray map object that isn't fading");
                continue;
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
            }
        }
    }

    function drawObject(source:Texture, drawRect:Rect, moving:Bool) {
        drawElement(source, null, drawRect);
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
        var sprite = new Sprite(source);
        sprite.x = dest.x;
        sprite.y = dest.y;

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
