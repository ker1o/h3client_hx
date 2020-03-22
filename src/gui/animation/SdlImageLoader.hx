package gui.animation;

import gui.geometries.Point;
import haxe.io.Bytes;

class SdlImageLoader implements ImageLoader {

    public var image:SdlImage;
    public var lineStart:Int;
    public var position:Int;

    private var palete:Array<Int>;
    private var arr:Bytes;

    public function new(img:SdlImage) {
        image = img;
        lineStart = 0;
        position = 0;
    }

    public function init(spriteSize:Point, margins:Point, fullSize:Point, palette:Array<Int>):Void {
        arr = Bytes.alloc(spriteSize.x * spriteSize.y * 4);

        image.surf = arr;
        image.size = spriteSize;
        image.margins = margins;
        image.fullsize = fullSize;

        this.palete = palette;

        //prepare surface
    }

    public function load(size:Int, bytes:Bytes, pos:Int):Void {
//        trace('SdlImageLoader.load($size, $pos) ${bytes.length}');
        // read pixel indexes
        var indexes = [for (i in 0...size) bytes.get(pos + i)];

        // for canvas
        for (i in indexes) {
            pushPixel(palete[i]);
        }
    }

    private function pushPixel(bitColor:Int) {
        var a = (bitColor >> 24) & 0x000000FF;
        var b = (bitColor & 0x00FF0000) >> 16;
        var g = (bitColor & 0x0000FF00) >> 8;
        var r = (bitColor & 0x000000FF);

        arr.set(position, r); position++;
        arr.set(position, g); position++;
        arr.set(position, b); position++;
        arr.set(position, a); position++;
    }

    public function endLine():Void {
//        trace('SdlImageLoader.endLine');
    }

    public function fillWithPixelIndex(size:Int, index:Int):Void {
        for (i in 0...size) {
            pushPixel(palete[index]);
        }
    }

}
