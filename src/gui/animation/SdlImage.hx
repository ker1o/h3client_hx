package gui.animation;
import constants.id.PlayerColor;
import gui.animation.IImage.BufferType;
import gui.geometries.Point;

class SdlImage implements IImage {
    public var surf:BufferType;
    public var margins:Point;
    public var fullsize:Point;

    public var width(get, set):Int;
    public var height(get, set):Int;
    public var size:Point;

    public function new(defFile:DefFile = null, frame:Int = 0, group:Int = 0) {
        if (defFile != null) {
            var imageLoader = new SdlImageLoader(this);
            defFile.loadFrame(frame, group, imageLoader);
        }
    }

    public function horizontalFlip() {
        var tmpSurf = new BufferType(surf.length);
        var offset = size.x * 4;
        for (j in 0...size.y) {
            var srcOffset:Int = (size.y - j) * offset;
            tmpSurf.set(surf.subarray(srcOffset - offset, srcOffset), j * offset);
        }
        surf = tmpSurf;
        margins.y = fullsize.y - (margins.y + size.y);
    }

    public function verticalFlip() {
        var tmpSurf = new BufferType(surf.length);

        var destPixelIndex = 0;
        var offset = size.x * 4;
        for (j in 0...size.y) {
            for (i in 0...size.x) {
                var srcPixelIndex = j * offset + (size.x - 1 - i) * 4;

                // copy each color component
                tmpSurf[destPixelIndex] = surf[srcPixelIndex]; destPixelIndex++;
                tmpSurf[destPixelIndex] = surf[srcPixelIndex + 1]; destPixelIndex++;
                tmpSurf[destPixelIndex] = surf[srcPixelIndex + 2]; destPixelIndex++;
                tmpSurf[destPixelIndex] = surf[srcPixelIndex + 3]; destPixelIndex++;
            }
        }
        surf = tmpSurf;
        margins.x = fullsize.x - (margins.x + size.x);
    }

    public function clone():IImage {
        var img = new SdlImage();
        img.surf = surf.subarray(0);
        img.margins = new Point(margins.x, margins.y);
        img.fullsize = new Point(fullsize.x, fullsize.y);
        img.size = new Point(size.x, size.y);
        return img;
    }

    public function get_width():Int {
        return fullsize.x;
    }

    public function set_width(value:Int):Int {
        return size.x = value;
    }

    public function get_height():Int {
        return fullsize.y;
    }

    public function set_height(value:Int):Int {
        return size.y = value;
    }

    public function setFlagColor(player:PlayerColor):Void {
        //ToDo
    }
}