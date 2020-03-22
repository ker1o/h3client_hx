package gui.animation;

import kha.FastFloat;
import haxe.io.Bytes;
import kha.Image;
import kha.graphics2.Graphics;
import constants.id.PlayerColor;
import gui.geometries.Point;
import gui.geometries.Rect;

class SdlImage implements IImage {
    public var surf:Bytes;
    public var margins:Point;
    public var fullsize:Point;
    public var khaImage:Image;

    public var width(get, set):Int;
    public var height(get, set):Int;
    public var size:Point;

    public function new(defFile:DefFile = null, frame:Int = 0, group:Int = 0) {
        if (defFile != null) {
            var imageLoader = new SdlImageLoader(this);
            defFile.loadFrame(frame, group, imageLoader);

            khaImage = Image.fromBytes(surf, size.x, size.y);
        }
    }
/*
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
*/
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

    public function drawToPos(where:Graphics, rotation:Int, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void {
        var x = posX + margins.x;
        var y = posY + margins.y;
//        where.begin();
        where.drawImage(khaImage, x, y);
//        where.end();
    }

    public function drawToRect(where:Graphics, rotation:Int, dest:Rect, src:Rect, alpha:Int = 255):Void {
        var x = dest.x + margins.x;
        var y = dest.y + margins.y;
        var sx:FastFloat;
        var sy:FastFloat;
        var sw:FastFloat;
        var sh:FastFloat;

        if (src != null) {
            sx = src.x;
            sy = src.y;
            sw = src.w;
            sh = src.h;
        } else {
            sx = 0;
            sy = 0;
            sw = dest.w;
            sh = dest.h;
        }

//        where.begin();
        where.drawImage(khaImage, x, y);
//        where.end();
    }

    public function setFlagColor(player:PlayerColor):Void {
        //ToDo
    }

}
