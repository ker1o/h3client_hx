package gui;

import gui.animation.TextureImage;
import pixi.core.textures.Spritesheet;
import pixi.core.textures.BaseTexture;
import utils.AtlasBuilder;
import js.lib.Promise;
import gui.animation.SdlImage;
import gui.animation.IImage;

class Animation {

    public var images(default, null):Map<Int, Array<SdlImage>>;
    public var name(default, null):String;

    private var textures:Map<Int, Array<TextureImage>>;
    private var defFile:DefFile;
    private var source:Map<Int, Array<String>>;
    private var preloaded:Bool = false;

    public function new(name:String = "") {
        this.name = name;
        defFile = name != "" ? new DefFile(name) : null;
        source = new Map<Int, Array<String>>();
        images = new Map<Int, Array<SdlImage>>();
        textures = new Map<Int, Array<TextureImage>>();

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

    public function preload():Promise<Bool> {
        if (!preloaded) {
            preloaded = true;
            load();

            getSpritesheet().then(function(spritesheet:Spritesheet) {
                for (group in source.keys()) {
                    textures[group] = [];
                    for (frame in 0...source[group].length) {
                        var textureName = name + "_" + group + "_" + get2digitString(frame);
                        var texture = spritesheet.textures[textureName];
                        textures.get(group)[frame] = new TextureImage(texture);
                    }
                }
            });
        }

        return Promise.resolve(true);
    }

    private inline function get2digitString(n:Int) {
        return n < 10 ? "0" + n : "" + n;
    }

    private function getSpritesheet():Promise<Spritesheet> {
        var atlasBuilder = new AtlasBuilder();
        atlasBuilder.addAnim(this);
        var atlas = atlasBuilder.build();

        var base = BaseTexture.fromBuffer(atlas.bytes, atlas.w, atlas.h, {});

        var spriteSheet = new Spritesheet(base, atlas.description, name);

        return new Promise(function(resolve, reject) {
            spriteSheet.parse(function() {
                resolve(spriteSheet);
            });
        });
    }

    private function load() {
        for (group in source.keys()) {
            for (frame in 0...source[group].length) {
                loadFrame(frame, group);
            }
        }
    }

    private function loadFrame(frame:Int, group:Int):Bool {
//        trace('Animation.loadFrame($frame, $group)');

        var image = getImage(frame, group);
        if (image != null) {
            return true;
        }

        if (source.get(group)[frame] == null) {
            if (defFile != null) {
                var frameList = defFile.getEntries();

                if (true) {
                    if (!images.exists(group)) {
                        images.set(group, new Array<SdlImage>());
                    }
                    var img = new SdlImage(defFile, frame, group);
                    images.get(group)[frame] = img;
                    return true;
                }
            }
        }

        return false;
    }

    public function getImage(frame:Int, group:Int = 0):IImage {
        if (images.exists(group)) {
            var groupObj:Array<IImage> = cast textures.get(group);
            if (groupObj[frame] != null) {
                return groupObj[frame];
            }
        }

        return null;
    }

    public function size(group:Int = 0):Int {
        return source.exists(group) ? source[group].length : 0;
    }

    public function createFlippedGroup(sourceGroup:Int, targetGroup:Int):Void {
        for (frame in 0...size(sourceGroup)) {
            duplicateImage(sourceGroup, frame, targetGroup);

            var image = getImage(frame, targetGroup);
            image.verticalFlip();
        }
    }

    public function duplicateImage(sourceGroup:Int, sourceFrame:Int, targetGroup:Int):Void {
//        if (!source.exists(sourceGroup)) {
//            trace('[Error] Group ${sourceGroup} missing in ${name}');
//            return;
//        }
//
//        if (source[sourceGroup].length <= sourceFrame) {
//            trace('[Error] Frame [${sourceGroup}, ${sourceFrame} missing in ${name}');
//            return;
//        }
//
//
//        var temp = '$name:$sourceGroup:$sourceFrame';
//        if (!source.exists(targetGroup)) {
//            source[targetGroup] = [];
//            images[targetGroup] = [];
//        }
//        source[targetGroup].push(temp);
//
//        var clonedImg = images[sourceGroup][sourceFrame].clone();
//        var index = source[targetGroup].length - 1;
//
//        images[targetGroup][index] = clonedImg;
    }
}
