package gui;

import pixi.core.sprites.Sprite;
import gui.animation.TextureImage;
import gui.animation.IImage;
import gui.geometries.Rect;
import pixi.core.display.Container;

class TextureDrawer implements IDrawer {

    private var _root:Container;

    public function new() {
    }

    public function draw(source:IImage, sourceRect:Rect, destRect:Rect):Void {
        var tex:TextureImage = cast source;
        var image = new Sprite(tex);
        image.x = destRect.x;
        image.y = destRect.y;
        _root.addChild(image);
    }
}
