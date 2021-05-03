package client.maphandler;
import pixi.core.textures.Texture;

class AnimTextureHolder {
    public var objBitmap:Texture; // main object bitmap
    public var flagBitmap:Texture; // flag bitmap for the object (probably only for heroes and boats with heroes)
    public var isMoving:Bool; // indicates if the object is moving (again, heroes/boats only)

    public function new(objBitmap:Texture = null, flagBitmap:Texture = null, moving:Bool = false) {
        this.objBitmap = objBitmap;
        this.flagBitmap = flagBitmap;
        this.isMoving = moving;
    }
}
