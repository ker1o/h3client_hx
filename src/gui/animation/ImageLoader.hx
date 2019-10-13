package gui.animation;

import haxe.io.Bytes;
import gui.geometries.Point;

interface ImageLoader {
    function init(size:Point, pos:Point, fullSize:Point, palette:Array<Int>):Void;
    function load(size:Int, bytes:Bytes, pos:Int):Void;
    function endLine():Void;

    function fillWithColor(size:Int, color:Int = 0):Void;
    function fillWithPixelIndex(size:Int, index:Int):Void;
}