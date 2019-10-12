package gui.animation;

import gui.geometries.Rect;

interface IImage {
    function drawToPos(where:Dynamic, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void;
    function drawToRect(where:Dynamic, dest:Rect, src:Rect, alpha:Int = 255):Void;
}
