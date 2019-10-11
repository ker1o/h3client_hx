package gui.animation;

import haxe.io.Bytes;
import gui.geometries.Point;

class SdlImageLoader implements ImageLoader {
    public function new() {
    }

    public function init(size:Point, pos:Point, fullSize:Point, palette:Array<Int>):Void {
        trace('SdlImageLoader.init($size, $pos, $fullSize, palette)');
    }

    public function load(size:Int, bytes:Bytes, pos:Int):Void {
        trace('SdlImageLoader.load($size, $pos)');
    }

    public function endLine():Void {
        trace("SdlImageLoader.endLine");
    }

}
