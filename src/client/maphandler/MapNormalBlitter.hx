package client.maphandler;
import gui.animation.SdlImage;
import js.html.ImageData;
import js.html.CanvasRenderingContext2D;
import gui.animation.IImage;
import gui.geometries.Rect;

class MapNormalBlitter extends MapBlitter {

    var context2D:CanvasRenderingContext2D;

    public function new(data:MapData, context2D:CanvasRenderingContext2D) {
        super(data);
        this.context2D = context2D;
        tileSize = 32;
        halfTileSizeCeil = 16;
        defaultTileRect = new Rect(0, 0, tileSize, tileSize);
    }

    override function preDraw(drawingInfo:MapDrawingInfo):Void {
        info = drawingInfo;

        topTile = info.topTile;
        initPos.x = info.drawBounds.x;
        initPos.y = info.drawBounds.y;

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
    }

    override function clip():Rect {
        var prevClip:Rect = new Rect(0, 0, 0, 0);
        //ToDo
        return prevClip;
    }

    override function drawOverlayEx() {
        //ToDo
    }

    override function drawTileOverlay(tile:MapTile) {
        //ToDo
    }

    override function drawElement(source:IImage, src:Rect, dest:Rect) {
        var dx1 = 0;
        var dy1 = 0;
        var dx2:Int = dest.w;
        var dy2:Int = dest.h;
        var dw = dx2 - dx1;
        var dh = dy2 - dy1;
        var px:Int = source.margins.x;
        var py:Int = source.margins.y;

        if (src != null) {
            // count coordintaes related to the original image
            dx1 = Std.int(Math.max(src.x - source.margins.x, 0));
            dy1 = Std.int(Math.max(src.y - source.margins.y, 0));
            dx2 = Std.int(Math.max(Math.min(src.x + src.w - source.margins.x, source.size.x), 0));
            dy2 = Std.int(Math.max(Math.min(src.y + src.h - source.margins.y, source.size.y), 0));

            // size of the printed area
            dw = dx2 - dx1;
            dh = dy2 - dy1;

            // coorinates correction in case of margins
            px = Std.int(Math.max(source.margins.x - src.x, 0));
            py = Std.int(Math.max(source.margins.y - src.y, 0));
        }

        if (dw == 0 || dh == 0) return;
        var surface = cast(source, SdlImage).surf;
        var ctxData = this.context2D.getImageData(dest.x + px, dest.y + py, dw, dh).data;
        var p = 0;
        for (j in 0...dh) {
            for (i in 0...dw) {
                var pixelIndex = ((dy1 + j) * source.size.x + dx1 + i) * 4;
                if (surface[pixelIndex + 3] == 255) {
                    ctxData[p] = surface[pixelIndex];
                    ctxData[p + 1] = surface[pixelIndex + 1];
                    ctxData[p + 2] = surface[pixelIndex + 2];
                    ctxData[p + 3] = surface[pixelIndex + 3];
                }
                p += 4;
            }
        }
        var imgData = new ImageData(ctxData, dw, dh);
        this.context2D.putImageData(imgData, dest.x + px, dest.y + py);
    }

    override function postProcessing() {
        //ToDo
    }
}
