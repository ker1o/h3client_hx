package gui.animation;

import js.html.Uint8ClampedArray;
import gui.geometries.Point;
import gui.geometries.Rect;

interface IImage {
    var surf:Uint8ClampedArray;
    var fullsize:Point;
    var margins:Point;
    function drawToPos(where:Dynamic, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void;
    function drawToRect(where:Dynamic, dest:Rect, src:Rect, alpha:Int = 255):Void;
}
