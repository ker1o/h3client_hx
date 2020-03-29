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
        where.drawImage(khaImage, x, y);
    }

    public function drawToRect(where:Graphics, rotation:Int, dest:Rect, src:Rect, alpha:Int = 255):Void {
        var x:FastFloat;
        var y:FastFloat;
        var sx:FastFloat;
        var sy:FastFloat;
        var sw:FastFloat;
        var sh:FastFloat;

        var flipH = rotation == 2 || rotation == 3;
        var flipV = rotation == 1 || rotation == 3;

        if (src != null) {
            var marginX:FastFloat = flipV ? fullsize.x - (margins.x + size.x) : margins.x;
            var marginY:FastFloat = flipH ? fullsize.y - (margins.y + size.y) : margins.y;
            var srcX:FastFloat = flipV ? fullsize.x - (src.x + src.w) : src.x;
            var srcY:FastFloat = flipH ? fullsize.y - (src.y + src.h) : src.y;

            x = dest.x + Math.max(marginX - srcX, 0);
            y = dest.y + Math.max(marginY - srcY, 0);
            sx = Math.max(srcX - margins.x, 0);
            sy = Math.max(srcY - margins.y, 0);
            sw = Math.min(src.w, Math.min(margins.x + size.x, srcX + src.w) - Math.max(srcX, margins.x));
            sh = Math.min(src.h, Math.min(margins.y + size.y, srcY + src.h) - Math.max(srcY, margins.y));
        } else {
            x = dest.x + margins.x;
            y = dest.y + margins.y;
            sx = 0;
            sy = 0;
            sw = size.x;
            sh = size.y;
        }

        where.drawScaledSubImage(khaImage, sx, sy, sw, sh, x + sw * (flipV ? 1 : 0), y + sh * (flipH ? 1 : 0), sw * (flipV ? -1 : 1), sh * (flipH ? -1 : 1));
    }

    public function setFlagColor(player:PlayerColor):Void {
        //ToDo
    }

}
