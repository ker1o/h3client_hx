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
//        var tmpSurf = new BufferType(surf.length);
//
//        var offset = size.x * 4;
//        for (j in 0...size.y) {
//            var srcOffset:Int = (size.y - j) * offset;
//            tmpSurf.set(surf.subarray(srcOffset - offset, srcOffset), j * offset);
//        }
//        surf = tmpSurf;
//        margins.y = fullsize.y - (margins.y + size.y);
    }

    public function verticalFlip() {
//        var tmpSurf = new BufferType(surf.length);
//
//        var destPixelIndex = 0;
//        var offset = size.x * 4;
//        for (j in 0...size.y) {
//            for (i in 0...size.x) {
//                var srcPixelIndex = j * offset + (size.x - 1 - i) * 4;
//
//                // copy each color component
//                tmpSurf[destPixelIndex] = surf[srcPixelIndex]; destPixelIndex++;
//                tmpSurf[destPixelIndex] = surf[srcPixelIndex + 1]; destPixelIndex++;
//                tmpSurf[destPixelIndex] = surf[srcPixelIndex + 2]; destPixelIndex++;
//                tmpSurf[destPixelIndex] = surf[srcPixelIndex + 3]; destPixelIndex++;
//            }
//        }
//        surf = tmpSurf;
//        margins.x = fullsize.x - (margins.x + size.x);
    }

    public function clone():IImage {
        return null;
//        var img = new SdlImage();
//        img.surf = surf.subarray(0);
//        img.margins = new Point(margins.x, margins.y);
//        img.fullsize = new Point(fullsize.x, fullsize.y);
//
//        img.size = new Point(size.x, size.y);
//
//        return img;
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
    public function drawToPos(where:IDrawer, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void {
//        var ctxData = where.getImageData(posX + margins.x, posY + margins.y, size.x, size.y).data;
//
//        // ignore transparent pixels
//        var componentsCount = size.x * size.y * 4;
//        var p = 0;
//        while (p < componentsCount) {
//            if (surf[p + 3] != 0) {
//                ctxData[p] = surf[p];
//                ctxData[p + 1] = surf[p + 1];
//                ctxData[p + 2] = surf[p + 2];
//            }
//            p += 4;
//        }
//        var imgData = new ImageData(ctxData, size.x, size.y);
//        where.putImageData(imgData, posX + margins.x, posY + margins.y);
    }

    public function drawToRect(where:IDrawer, dest:Rect, src:Rect, alpha:Int = 255):Void {
//        var dx1 = 0;
//        var dy1 = 0;
//        var dx2:Int = dest.w;
//        var dy2:Int = dest.h;
//        var dw = dx2 - dx1;
//        var dh = dy2 - dy1;
//        var px:Int = margins.x;
//        var py:Int = margins.y;
//
//        if (src != null) {
//            // count coordintaes related to the original image
//            dx1 = Std.int(Math.max(src.x - margins.x, 0));
//            dy1 = Std.int(Math.max(src.y - margins.y, 0));
//            dx2 = Std.int(Math.max(Math.min(src.x + src.w - margins.x, size.x), 0));
//            dy2 = Std.int(Math.max(Math.min(src.y + src.h - margins.y, size.y), 0));
//
//            // size of the printed area
//            dw = dx2 - dx1;
//            dh = dy2 - dy1;
//
//            // coorinates correction in case of margins
//            px = Std.int(Math.max(margins.x - src.x, 0));
//            py = Std.int(Math.max(margins.y - src.y, 0));
//        }
//
//        if (dw == 0 || dh == 0) return;
//
//        var ctxData = where.getImageData(dest.x + px, dest.y + py, dw, dh).data;
//        var p = 0;
//        for (j in 0...dh) {
//            for (i in 0...dw) {
//                var pixelIndex = ((dy1 + j) * size.x + dx1 + i) * 4;
//                if (surf[pixelIndex + 3] == 255) {
//                    ctxData[p] = surf[pixelIndex];
//                    ctxData[p + 1] = surf[pixelIndex + 1];
//                    ctxData[p + 2] = surf[pixelIndex + 2];
//                    ctxData[p + 3] = surf[pixelIndex + 3];
//                }
//
//                p += 4;
//            }
//
//        }
//
//        //
//        var imgData = new ImageData(ctxData, dw, dh);
//        where.putImageData(imgData, dest.x + px, dest.y + py);
    }

    public function setFlagColor(player:PlayerColor):Void {
        //ToDo
    }
    #end

}
