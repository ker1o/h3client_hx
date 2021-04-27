package gui.animation;


import constants.id.PlayerColor;
import gui.geometries.Rect;
import gui.geometries.Point;
import js.html.CanvasRenderingContext2D;

typedef BufferType = js.lib.Uint8ClampedArray;

interface IImage {
    var fullsize:Point;
    var margins:Point;
    var size:Point;

    var width(get, set):Int;
    var height(get, set):Int;

    function horizontalFlip():Void;
    function verticalFlip():Void;
    function clone():IImage;

    function drawToPos(where:CanvasRenderingContext2D, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void;
    function drawToRect(where:CanvasRenderingContext2D, dest:Rect, src:Rect, alpha:Int = 255):Void;
    function setFlagColor(player:PlayerColor):Void;
}
