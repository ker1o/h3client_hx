package gui.animation;

import constants.id.PlayerColor;
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

    #if js
    public function drawToPos(where:CanvasRenderingContext2D, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void {
        var imgData = new ImageData(surf, size.x, size.y);
        where.putImageData(imgData, posX + margins.x, posY + margins.y);
    }

    public function drawToRect(where:CanvasRenderingContext2D, dest:Rect, src:Rect, alpha:Int = 255):Void {
        var imgData = new ImageData(surf, size.x, size.y);
        var dx = 0.0;
        var dy = 0.0;
        var dw:Float = size.x;
        var dh:Float = size.y;
        var px:Float = margins.x;
        var py:Float = margins.y;

        if (src != null) {
            dx = Math.max(src.x - margins.x, 0);
            dy = Math.max(src.y - margins.y, 0);
            dw = Math.max(src.x + src.w - margins.x, 0);
            dh = Math.max(src.y + src.h - margins.y, 0);
            px = margins.x - src.x;
            py = margins.y - src.y;
        }
        where.putImageData(imgData, dest.x + px, dest.y + py, dx, dy, dw, dh);
    }

    public function setFlagColor(player:PlayerColor):Void {
        //ToDo
    }
    #end

}
