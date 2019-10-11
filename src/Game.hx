package ;

import gui.Animation;
import gui.animation.SdlImage;
import gui.animation.SdlImageLoader;
import gui.DefFile;
import filesystem.CompressedStream;
import filesystem.InputStream;
import filesystem.FileInputStream;
import sys.io.FileInput;
import sys.io.FileSeek;
import sys.io.File;
import sys.FileSystem;
import haxe.io.Bytes;

using StringTools;

class Game {


    public function new() {
        var fileName = "edg.def";
        var anim:Animation = new Animation(fileName);
        anim.preload();
    }


    function saveFile(path:String, bytes:Bytes) {
        File.saveBytes(path, bytes);
    }

}
