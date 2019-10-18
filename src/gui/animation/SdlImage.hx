package gui.animation;

import gui.animation.IImage.BufferType;
import gui.geometries.Point;
import gui.geometries.Rect;
#if js
import js.html.CanvasRenderingContext2D;
import js.html.ImageData;
#end

class SdlImage implements IImage {
    public var surf:BufferType;
    public var margins:Point;
    public var fullsize:Point;

    public var size:Point;

    public function new(defFile:DefFile, frame:Int, group:Int) {
        var imageLoader = new SdlImageLoader(this);
        defFile.loadFrame(frame, group, imageLoader);
    }

    #if js
    public function drawToPos(where:CanvasRenderingContext2D, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void {
        var imgData = new ImageData(surf, size.x, size.y);
        where.putImageData(imgData, posX, posY);
    }

    public function drawToRect(where:CanvasRenderingContext2D, dest:Rect, src:Rect, alpha:Int = 255):Void {
        trace('SdlImage.drawToRect($dest, $src, $alpha) STUB');
    }
    #end

}
