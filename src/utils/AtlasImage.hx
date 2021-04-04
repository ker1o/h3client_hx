package utils;

import utils.binpacking.Rect;
import gui.animation.IImage;

class AtlasImage {
    public var image(default, null):IImage;
    public var rect:Rect;
    public var animationName:String;
    public var groupIndex:Int;
    public var frameIndex:Int;

    public var isRotated(get, never):Bool;

    public function new(img:IImage) {
        image = img;
    }

    public function get_isRotated() {
        return rect.width == image.size.y && rect.height == image.size.x;
    }

}