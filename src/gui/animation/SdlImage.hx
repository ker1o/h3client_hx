package gui.animation;

import gui.geometries.Point;

class SdlImage implements IImage {
    public var margins:Point;
    public var fullsize:Point;

    public function new(defFile:DefFile, frame:Int, group:Int) {
        var imageLoader = new SdlImageLoader();
        defFile.loadFrame(frame, group, imageLoader);
    }


}
