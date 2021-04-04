package client.maphandler;

import gui.animation.IImage;
import js.html.CanvasRenderingContext2D;
import gui.geometries.Rect;

class MapNormalBlitter extends MapBlitter {
    public function new(p:MapHandler) {
        super(p);

        tileSize = 32;
        halfTileSizeCeil = 16;
        defaultTileRect = new Rect(0, 0, tileSize, tileSize);
    }

    override public function init(drawingInfo:MapDrawingInfo):Void {
        info = drawingInfo;
        // Width and height of the portion of the map to process. Units in tiles.
        tileCount.x = parent.tilesW;
        tileCount.y = parent.tilesH;

        topTile = info.topTile;
        initPos.x = parent.offsetX + info.drawBounds.x;
        initPos.y = parent.offsetY + info.drawBounds.y;

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
        if (topTile.x < -parent.frameW) {
            topTile.x = -parent.frameW;
        }
        if (topTile.y < -parent.frameH) {
            topTile.y = -parent.frameH;
        }
        if (topTile.x + tileCount.x > parent.sizes.x + parent.frameW) {
            tileCount.x = parent.sizes.x + parent.frameW - topTile.x;
        }
        if (topTile.y + tileCount.y > parent.sizes.y + parent.frameH) {
            tileCount.y = parent.sizes.y + parent.frameH - topTile.y;
        }
    }

    override public function clip():Rect {
        var prevClip:Rect = new Rect(0, 0, 0, 0);
        //ToDo
        return prevClip;
    }

    override public function drawOverlayEx() {
        //ToDo
    }

    override public function drawTileOverlay(tile:TerrainTile2) {
        //ToDo
    }

    override public function drawElement(source:IImage, sourceRect:Rect, destRect:Rect) {
        drawer.draw(source, destRect, sourceRect);
    }

    override public function postProcessing() {
        //ToDo
    }
}
