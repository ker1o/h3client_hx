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

    public static inline function fromRightBottom(x:Int, y:Int, w:Int, h:Int):Rect {
        return new Rect(x - w, y - h, w, h);
    }

    public inline function update(x:Int, y:Int, w:Int, h:Int) {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
    }

    // rewrite to getters
    public inline function left() {
        return x;
    }

    public inline function top() {
        return y;
    }

    public inline function right() {
        return x + w;
    }

    public inline function bottom() {
        return y + h;
    }

    public inline function cross(rect:Rect) {
        return ((x <= rect.x && rect.x <= right() || x <= rect.right() && rect.right() <= right())
            && (y <= rect.y && rect.y <= bottom() || y <= rect.bottom() && rect.bottom() <= bottom()));
    }
}
