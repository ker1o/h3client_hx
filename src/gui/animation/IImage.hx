package gui.animation;
import constants.id.PlayerColor;
import gui.geometries.Point;

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
    function setFlagColor(player:PlayerColor):Void;
}
