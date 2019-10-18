package gui.animation;

#if js
import js.html.CanvasRenderingContext2D;
#end
import gui.geometries.Point;
import gui.geometries.Rect;

typedef BufferType = #if js js.html.Uint8ClampedArray #else haxe.io.UInt8Array #end;

interface IImage {
    var surf:BufferType;
    var fullsize:Point;
    var margins:Point;
    var size:Point;
#if js
    function drawToPos(where:CanvasRenderingContext2D, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void;
    function drawToRect(where:CanvasRenderingContext2D, dest:Rect, src:Rect, alpha:Int = 255):Void;
#end
}
