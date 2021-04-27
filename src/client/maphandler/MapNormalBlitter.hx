package client.maphandler;
import js.html.CanvasRenderingContext2D;
import gui.animation.IImage;
import gui.geometries.Rect;

class MapNormalBlitter extends MapBlitter {

    var targetSurf:CanvasRenderingContext2D;

    public function new(data:MapData, targetSurf:CanvasRenderingContext2D) {
        super(data);
        this.targetSurf = targetSurf;
        tileSize = 32;
        halfTileSizeCeil = 16;
        defaultTileRect = new Rect(0, 0, tileSize, tileSize);
    }

    override public function init(drawingInfo:MapDrawingInfo):Void {
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
        source.drawToRect(targetSurf, destRect, sourceRect);
    }

    override public function postProcessing() {
        //ToDo
    }
}
