package client;

import js.lib.Promise;
import mapObjects.GObjectInstance;
import pixi.core.textures.Spritesheet;
import pixi.core.textures.BaseTexture;
import utils.AtlasBuilder;
import pixi.extras.AnimatedSprite;

using Reflect;

class TextureGraphics {
    public static var instance(default, null) = new TextureGraphics();

    public var heroMoveArrows:AnimatedSprite;
    // [hero class def name]  //added group 10: up - left, 11 - left and 12 - left down // 13 - up-left standing; 14 - left standing; 15 - left down standing
    public var heroAnimations:Map<String, AnimatedSprite>;
    public var heroFlagAnimations:Array<AnimatedSprite>;

    // [boat type: 0 .. 2]  //added group 10: up - left, 11 - left and 12 - left down // 13 - up-left standing; 14 - left standing; 15 - left down standing
    public var boatAnimations:Array<AnimatedSprite>;
    public var boatFlagAnimations:Array<Array<AnimatedSprite>>;

    public var mapObjectAnimations:Map<String, AnimatedSprite>;

    public var fogOfWarFullHide:AnimatedSprite;
    public var fogOfWarPartialHide:AnimatedSprite;

    var atlasBuilder = new AtlasBuilder();

    public function new() {
        boatAnimations = new Array<AnimatedSprite>();
        mapObjectAnimations = new Map<String, AnimatedSprite>();
    }

    public function load() {

    }

    public function getAnimation(obj:GObjectInstance):Promise<AnimatedSprite> {
        var animationName = obj.appearance.animationFile;
        if (mapObjectAnimations.exists(animationName)) {
            return Promise.resolve(mapObjectAnimations.get(animationName));
        } else {
            return getAnimatedSprite(animationName);
        }
    }

    private function getAnimatedSprite(name:String):Promise<AnimatedSprite> {
        return new Promise(function (resolve, reject) {
            var animation = Graphics.instance.getAnimation(name);
            atlasBuilder.addAnim(animation);
            var atlas = atlasBuilder.build();

            var base = BaseTexture.fromBuffer(atlas.bytes, atlas.w, atlas.h, {});

            var name = animation.name;
            var spriteSheet = new Spritesheet(base, atlas.description, name);
            spriteSheet.parse(function() {
                resolve(new AnimatedSprite(spriteSheet.animations.field(name + "_0"), false));
            });
        });
    }
}
