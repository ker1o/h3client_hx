package client;

import gui.Animation;
import pixi.core.sprites.Sprite;
import js.lib.Promise;
import mapObjects.GObjectInstance;
import pixi.core.textures.Spritesheet;
import pixi.core.textures.BaseTexture;
import utils.AtlasBuilder;
import pixi.extras.AnimatedSprite;

using Reflect;

typedef TFlippedAnimations = Array<AnimatedSprite>; //[type, rotation]
typedef TFlippedCache = Array<Array<Sprite>>; //[type, view type, rotation]

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

    public var terrainAnimations:TFlippedAnimations; //[terrain type, rotation]
    public var terrainImages:TFlippedCache; //[terrain type, view type, rotation]
    public var roadAnimations:TFlippedAnimations; //[road type, rotation]
    public var roadImages:TFlippedCache; //[road type, view type, rotation]
    public var riverAnimations:TFlippedAnimations; //[river type, rotation]
    public var riverImages:TFlippedCache; //[river type, view type, rotation]

    public function new() {
        boatAnimations = new Array<AnimatedSprite>();
        mapObjectAnimations = new Map<String, AnimatedSprite>();
    }

    public function load() {
        initTerrainGraphics();
    }

    public function getAnimation(obj:GObjectInstance):Promise<AnimatedSprite> {
        var animationName = obj.appearance.animationFile;
        if (mapObjectAnimations.exists(animationName)) {
            return Promise.resolve(mapObjectAnimations.get(animationName));
        } else {
            var animation = Graphics.instance.getAnimation(obj);
            return getAnimatedSprite(animation).then(function(animatedSprite:AnimatedSprite) {
                mapObjectAnimations.set(animationName, animatedSprite);
                return animatedSprite;
            });
        }
    }

    private function getAnimatedSprite(animation:Animation):Promise<AnimatedSprite> {
        return new Promise(function (resolve, reject) {
            var atlasBuilder = new AtlasBuilder();
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

    private function initTerrainGraphics():Promise<Dynamic> {
        var graphics = Graphics.instance;

        terrainAnimations = []; //[terrain type]
        terrainImages = []; //[terrain type, view type]
        roadAnimations = []; //[road type]
        roadImages = []; //[road type, view type]
        riverAnimations = []; //[river type]
        riverImages = []; //[river type, view type]

        var promises = [];
        for(i in 0...graphics.terrainAnimations.length) {
            var animation = graphics.terrainAnimations[i][0];
            promises.push(getAnimatedSprite(animation));
        }

//        for(i in 0...graphics.terrainImages.length) {
//            for(j in 0...graphics.terrainImages[i].length){
//                var animation = graphics.terrainImages[i][j][0];
//                promises.push(getAnimatedSprite(animation));
//            }
//        }

        for(i in 0...graphics.roadAnimations.length) {
            var animation = graphics.roadAnimations[i][0];
            promises.push(getAnimatedSprite(animation));
        }

//        for(i in 0...graphics.roadImages.length) {
//            for(j in 0...graphics.roadImages[i].length){
//                var animation = graphics.roadImages[i][j][0];
//                promises.push(getAnimatedSprite(animation));
//            }
//        }

        for(i in 0...graphics.riverAnimations.length) {
            var animation = graphics.riverAnimations[i][0];
            promises.push(getAnimatedSprite(animation));
        }

//        for(i in 0...graphics.riverImages.length) {
//            for(j in 0...graphics.riverImages[i].length){
//                var animation = graphics.riverImages[i][j][0];
//                promises.push(getAnimatedSprite(animation));
//            }
//        }

        // todo: combine all this terrain tiles to one texture and set images to local vars
        return Promise.all(promises);
    }
}
