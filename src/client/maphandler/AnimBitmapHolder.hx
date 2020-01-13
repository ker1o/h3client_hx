package client.maphandler;

import gui.animation.IImage;

class AnimBitmapHolder {
    public var objBitmap:IImage; // main object bitmap
    public var flagBitmap:IImage; // flag bitmap for the object (probably only for heroes and boats with heroes)
    public var isMoving:Bool; // indicates if the object is moving (again, heroes/boats only)

    public function new(objBitmap:IImage = null, flagBitmap:IImage = null, moving:Bool = false) {
        this.objBitmap = objBitmap;
        this.flagBitmap = flagBitmap;
        this.isMoving = moving;
    }
}
