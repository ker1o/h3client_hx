package gui.animation;

import haxe.io.Bytes;
import kha.graphics2.Graphics;
import constants.id.PlayerColor;
import gui.geometries.Point;
import gui.geometries.Rect;

interface IImage {
    var surf:Bytes;
    var fullsize:Point;
    var margins:Point;
    var size:Point;

    var width(get, set):Int;
    var height(get, set):Int;

    function drawToPos(where:Graphics, rotation:Int, posX:Int, posY:Int, src:Rect, alpha:Int = 255):Void;
    function drawToRect(where:Graphics, rotation:Int, dest:Rect, src:Rect, alpha:Int = 255):Void;
    function setFlagColor(player:PlayerColor):Void;
}
