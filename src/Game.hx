package ;

import gui.Animation;
import haxe.io.Bytes;
import sys.io.File;

using StringTools;

class Game {


    public function new() {
        var fileName = "zm152z.def";
        var anim:Animation = new Animation(fileName);
        anim.preload();
    }

    function saveFile(path:String, bytes:Bytes) {
        File.saveBytes(path, bytes);
    }

}
