package client;

import client.Graphics.FlippedAnimations;
import pixi.core.textures.Texture;
import gui.Animation;
import js.lib.Promise;
import mapObjects.GObjectInstance;
import pixi.core.textures.Spritesheet;
import pixi.core.textures.BaseTexture;
import utils.AtlasBuilder;
import pixi.extras.AnimatedSprite;

using Reflect;

typedef TFlippedAnimations = Array<AnimatedSprite>; //[type]
typedef TFlippedCache = Array<Array<Texture>>; //[type, view type]

class TextureGraphics {
    public static var instance(default, null) = new TextureGraphics();

    public var heroMoveArrows:AnimatedSprite;
    // [hero class def name]  //added group 10: up - left, 11 - left and 12 - left down // 13 - up-left standing; 14 - left standing; 15 - left down standing
    public var heroAnimations:Map<String, AnimatedSprite>;
    public var heroFlagAnimations:Array<AnimatedSprite>;

    // [boat type: 0 .. 2]  //added group 10: up - left, 11 - left and 12 - left down // 13 - up-left standing; 14 - left standing; 15 - left down standing
    public var boatAnimations:Array<AnimatedSprite>;
    public var boatFlagAnimations:Array<Array<AnimatedSprite>>;

    public var mapObjectAnimations:Map<String, Promise<AnimatedSprite>>;

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
        mapObjectAnimations = new Map<String, Promise<AnimatedSprite>>();
    }

    public function load() {
        initTerrainGraphics();
    }

    public function loadAnimation(obj:GObjectInstance):Promise<AnimatedSprite> {
        var animationName = obj.appearance.animationFile;
        if (mapObjectAnimations.exists(animationName)) {
            return mapObjectAnimations.get(animationName);
        } else {
            var animation = Graphics.instance.getAnimation(obj);
            var animatedSpritePromise = loadAnimatedSprite(animation);
            mapObjectAnimations.set(animationName, animatedSpritePromise);
            return animatedSpritePromise;
        }
    }

    public function getAnimation(obj:GObjectInstance):AnimatedSprite {
        var animationName = obj.appearance.animationFile;
        if (mapObjectAnimations.exists(animationName)) {
            return mapObjectAnimations.get(animationName);
        } else {
            throw 'No animation $animationName';
        }
    }

    private function loadAnimatedSprite(animation:Animation):Promise<AnimatedSprite> {
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

    private function initTerrainGraphics():Promise<Bool> {
        var graphics = Graphics.instance;

        function fill(animations:FlippedAnimations, texturedAnimations:TFlippedAnimations, textures:TFlippedCache, spriteSheet:Spritesheet) {
            for(i in 0...animations.length) {
                var animation = animations[i][0];
                var animatedSprite = new AnimatedSprite(spriteSheet.animations.field(animation.name + "_0"), false);
                texturedAnimations[i] = animatedSprite;
                textures[i] = animatedSprite.textures.copy();
            }
        }

        terrainAnimations = []; //[terrain type]
        terrainImages = []; //[terrain type, view type]
        roadAnimations = []; //[road type]
        roadImages = []; //[road type, view type]
        riverAnimations = []; //[river type]
        riverImages = []; //[river type, view type]

        var atlasBuilder = new AtlasBuilder();
        for(i in 0...graphics.terrainAnimations.length) {
            var animation = graphics.terrainAnimations[i][0];
            atlasBuilder.addAnim(animation);
        }

        for(i in 0...graphics.roadAnimations.length) {
            var animation = graphics.roadAnimations[i][0];
            atlasBuilder.addAnim(animation);
        }

        for(i in 0...graphics.riverAnimations.length) {
            var animation = graphics.riverAnimations[i][0];
            atlasBuilder.addAnim(animation);
        }

        var atlas = atlasBuilder.build();
        var base = BaseTexture.fromBuffer(atlas.bytes, atlas.w, atlas.h, {});

        var spriteSheet = new Spritesheet(base, atlas.description, "terrains");
        return new Promise(function (resolve, reject) {
            spriteSheet.parse(function() {
                fill(graphics.terrainAnimations, terrainAnimations, terrainImages, spriteSheet);
                fill(graphics.roadAnimations, roadAnimations, roadImages, spriteSheet);
                fill(graphics.riverAnimations, riverAnimations, riverImages, spriteSheet);
                resolve(true);
            });
        });
    }
}
