package gui;

import gui.animation.IImage;
import gui.geometries.Rect;

interface IDrawer {
    function draw(source:IImage, sourceRect:Rect, destRect:Rect):Void;
}
