package gui.animation;

import constants.id.PlayerColor;
import gui.geometries.Rect;
import pixi.core.textures.Texture;

class TextureImage implements IImage {
    public var width(get, set):Int;
    public var height(get, set):Int;

    private var _texture:Texture;

    public function new(texture:Texture) {
        _texture = texture;
    }

    public function get_width():Int {
        return Std.int(_texture.width);
    }

    public function set_width(value:Int):Int {
        return 0;
    }

    public function get_height():Int {
        return Std.int(_texture.height);
    }

    public function set_height(value:Int):Int {
        return 0;
    }

    public function horizontalFlip():Void {

    }

    public function verticalFlip():Void {

    }

    public function clone():IImage {
        return new TextureImage(_texture.clone());
    }

    public function drawToPos(drawer:IDrawer, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void {
//        drawer.draw(this, )
    }

    public function drawToRect(drawer:IDrawer, dest:Rect, src:Rect, alpha:Int = 255):Void {

    }

    public function setFlagColor(player:PlayerColor):Void {

    }
}
