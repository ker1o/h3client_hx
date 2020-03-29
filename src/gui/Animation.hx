package gui;

import gui.animation.SdlImage;
import gui.animation.IImage;

class Animation {

    public var images(default, null):Map<Int, Array<IImage>>;

    private var name:String;
    private var defFile:DefFile;
    private var source:Map<Int, Array<String>>;
    private var preloaded:Bool = false;

    public function new(name:String = "") {
        this.name = name;
        defFile = name != "" ? new DefFile(name) : null;
        source = new Map<Int, Array<String>>();
        images = new Map<Int, Array<IImage>>();

        initSource();
    }

    private function initSource() {
        if (defFile != null) {
            var defEntries:Map<Int, Int> = defFile.getEntries();
            for (defEntryKey in defEntries.keys()) {
                var entriesLength = defEntries.get(defEntryKey);
                source.set(defEntryKey, [for (i in 0...entriesLength) null]);
            }
        }
    }

    public function preload() {
        if (!preloaded) {
            preloaded = true;
            load();
        }
    }

    public function load() {
        for (elemKey in source.keys()) {
            for (image in 0...source[elemKey].length) {
                loadFrame(image, elemKey);
//                break;
            }
//            break;
        }
    }

    public function loadFrame(frame:Int, group:Int):Bool {
//        trace('Animation.loadFrame($frame, $group)');

        var image = getImage(frame, group, false);
        if (image != null) {
            return true;
        }

        if (source.get(group)[frame] == null) {
            if (defFile != null) {
                var frameList = defFile.getEntries();

                if (true) {
                    if (!images.exists(group)) {
                        images.set(group, new Array<IImage>());
                    }
                    var img = new SdlImage(defFile, frame, group);
                    images.get(group)[frame] = img;
                    return true;
                }
            }
        }

        return false;
    }

    public function getImage(frame:Int, group:Int = 0, verbose:Bool = true):IImage {
        if (images.exists(group)) {
            var groupObj:Array<IImage> = images.get(group);
            if (groupObj[frame] != null) {
                return groupObj[frame];
            }
        }

        return null;
    }

    public function size(group:Int = 0):Int {
        return source.exists(group) ? source[group].length : 0;
    }

}
