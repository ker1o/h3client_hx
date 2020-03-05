package engine;

import binpacking.Rect;
import gui.animation.IImage;

class AtlasImage {
    public var image(default, null):IImage;
    public var rect(default, null):Rect;

    public function new(img:IImage, rect:Rect) {
        image = img;
        this.rect = rect;
    }

}
