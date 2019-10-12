package gui;

import gui.animation.SdlImage;
import gui.animation.IImage;

class Animation {

    private var name:String;
    private var defFile:DefFile;
    private var source:Map<Int, Array<String>>;
    private var images:Map<Int, Map<Int, IImage>>;
    private var preloaded:Bool = false;

    public function new(name:String) {
        this.name = name;
        defFile = new DefFile(name);
        source = new Map<Int, Array<String>>();
        images = new Map<Int, Map<Int, IImage>>();

        init();

        trace('$name is ready');
    }

    private function init() {
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

        saveAnimation();
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
                        images.set(group, new Map<Int, IImage>());
                    }
                    var img = new SdlImage(defFile, frame, group);
                    images.get(group).set(frame, img);
                    return true;
                }
            }
        }

        return false;
    }

    public function getImage(frame:Int, group:Int, verbose:Bool):IImage {
        if (images.exists(group)) {
            var groupObj:Map<Int, IImage> = images.get(group);
            if (groupObj.exists(frame)) {
                return groupObj.get(frame);
            }
        }

        return null;
    }

    // tech
    private function saveAnimation() {
        var s:String = "";
        var strArr = [];

        for (sdlImage in images[0]) {
            var strSurf = sdlImage.surf.join(',');
            strArr.unshift('[$strSurf]');
        }

        s = 'var defImgData = [${strArr.join(", ")}];\n';
        var size = images[0][0].fullsize;
        s += 'var defImgWidth = ${size.x};\nvar defImgHeight = ${size.y};';

        var path = 'www/out_images/${name}.js';
        sys.io.File.saveContent(path, s);
    }
}
