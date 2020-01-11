package client;

import mapObjects.ObjectTemplate;
import constants.Obj;
import gui.Animation;
import mapObjects.GObjectInstance;

class Graphics {
    public static var instance(default, null) = new Graphics();

    public var mapObjectAnimations:Map<String, Animation>;


    private function new() {
        mapObjectAnimations = new Map<String, Animation>();
    }

    public function getAnimation(obj:GObjectInstance):Animation {
        return getAnimationByTemplate(obj.appearance);
    }

    public function getAnimationByTemplate(info:ObjectTemplate):Animation {
        //the only(?) invisible object
        if(info.id == Obj.EVENT) {
            return new Animation();
        }

        if(info.animationFile == "") {
            trace('[Warning] Def name for obj (${info.id}, ${info.subid}) is empty!');
            return new Animation();
        }

        var ret:Animation = mapObjectAnimations[info.animationFile];

        //already loaded
        if(ret != null) {
            ret.preload();
            return ret;
        }

        ret = new Animation(info.animationFile);
        mapObjectAnimations[info.animationFile] = ret;

        ret.preload();
        return ret;
    }
}
