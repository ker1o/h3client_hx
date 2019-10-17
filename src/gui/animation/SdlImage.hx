package gui.animation;

import js.html.Uint8ClampedArray;
import gui.geometries.Point;
import gui.geometries.Rect;

class SdlImage implements IImage {
    public var surf:Uint8ClampedArray;
    public var margins:Point;
    public var fullsize:Point;

    public function new(defFile:DefFile, frame:Int, group:Int) {
        var imageLoader = new SdlImageLoader(this);
        defFile.loadFrame(frame, group, imageLoader);
    }

    public function drawToPos(where:Dynamic, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void {
        trace('SdlImage.drawToPos($posX, $posY, $src, $alpha)');
    }

    public function drawToRect(where:Dynamic, dest:Rect, src:Rect, alpha:Int = 255):Void {
        trace('SdlImage.drawToRect($dest, $src, $alpha)');
    }

}
