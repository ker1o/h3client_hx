package utils;

class Frame {
    public var frame:Rect;
    public var rotated:Bool;
    public var trimmed:Bool;
    public var spriteSourceSize:Rect;
    public var sourceSize:Size;
    public var anchor:Point;

    public function new() {
    }
}

class Rect {
    public var x:Float;
    public var y:Float;
    public var w:Float;
    public var h:Float;

    public function new(x:Float = 0, y:Float = 0, w:Float = 0, h:Float = 0) {
        this.x = x;
        this.y = y;
        this.w = w;
        this.h = h;
    }
}

class Size {
    public var w:Int;
    public var h:Int;

    public function new(w:Int = 0, h:Int = 0) {
        this.w = 0;
        this.h = 0;
    }
}

class Point {
    public var x:Int;
    public var y:Int;

    public function new(x:Int = 0, y:Int = 0) {
        this.x = x;
        this.y = y;
    }
}