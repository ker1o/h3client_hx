package gui.geometries;

class Rect {

    public var x:Int;
    public var y:Int;
    public var w:Int;
    public var h:Int;

    public function new(x:Int = 0, y:Int = 0, w:Int = 0, h:Int = 0) {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
    }

    public static inline function fromRect(srcRect:Rect):Rect {
        return new Rect(srcRect.x, srcRect.y, srcRect.w, srcRect.h);
    }
}
