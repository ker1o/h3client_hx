package client.maphandler;

import gui.geometries.Rect;
import mapObjects.GObjectInstance;

class MapTileObject {
    public var obj:GObjectInstance;
    public var rect:Rect;
    public var fadeAnimKey:Int;
    public var ambientSound:String;

    public function new(obj:GObjectInstance, rect:Rect, visitablePos:Bool) {
        this.obj = obj;
        this.rect = rect;
        fadeAnimKey = -1;

        //ToDo
    }
}
