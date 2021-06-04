package client;

import client.view.pixijs.PixiAnimation;
import client.SdlGraphics.FlippedAnimations;
import pixi.core.textures.Texture;
import gui.Animation;
import js.lib.Promise;
import mapObjects.GObjectInstance;
import pixi.core.textures.Spritesheet;
import pixi.core.textures.BaseTexture;
import utils.AtlasBuilder;
import pixi.extras.AnimatedSprite;

using Reflect;

typedef TFlippedAnimations = Array<PixiAnimation>; //[type]
typedef TFlippedCache = Array<Array<Texture>>; //[type, view type]

class TextureGraphics {
    public static var instance(default, null) = new TextureGraphics();

    public var heroMoveArrows:PixiAnimation;
    // [hero class def name]  //added group 10: up - left, 11 - left and 12 - left down // 13 - up-left standing; 14 - left standing; 15 - left down standing
    public var heroAnimations = new Map<String, PixiAnimation>();
    public var heroFlagAnimations = new Array<PixiAnimation>();

    // [boat type: 0 .. 2]  //added group 10: up - left, 11 - left and 12 - left down // 13 - up-left standing; 14 - left standing; 15 - left down standing
    public var boatAnimations = new Array<PixiAnimation>();
    public var boatFlagAnimations = new Array<Array<PixiAnimation>>();

    public var mapObjectAnimationPromises = new Map<String, Promise<PixiAnimation>>();
    public var mapObjectAnimations = new Map<String, PixiAnimation>();

    public var fogOfWarFullHide:PixiAnimation;
    public var fogOfWarPartialHide:PixiAnimation;

    public var terrainAnimations:TFlippedAnimations; //[terrain type, rotation]
    public var terrainImages:TFlippedCache; //[terrain type, view type, rotation]
    public var roadAnimations:TFlippedAnimations; //[road type, rotation]
    public var roadImages:TFlippedCache; //[road type, view type, rotation]
    public var riverAnimations:TFlippedAnimations; //[river type, rotation]
    public var riverImages:TFlippedCache; //[river type, view type, rotation]

    public function new() {
        boatAnimations = new Array<PixiAnimation>();
        mapObjectAnimations = new Map<String, PixiAnimation>();
        mapObjectAnimationPromises = new Map<String, Promise<PixiAnimation>>();
    }

    public function load() {
        initTerrainGraphics();
        loadHeroAnimations();
        loadFogOfWar();
    }

    public function loadAnimation(obj:GObjectInstance):Promise<PixiAnimation> {
        var animationName = obj.appearance.animationFile;
        if (mapObjectAnimations.exists(animationName)) {
            return Promise.resolve(mapObjectAnimations.get(animationName));
        } else if (mapObjectAnimationPromises.exists(animationName)) {
            return mapObjectAnimationPromises.get(animationName);
        } else {
            var animation = SdlGraphics.instance.getAnimation(obj);
            var animatedSpritePromise = loadPixiAnimation(animation).then(function(pixiAnimation:PixiAnimation) {
                mapObjectAnimations.set(animationName, pixiAnimation);
                mapObjectAnimationPromises.remove(animationName);
                return pixiAnimation;
            });
            mapObjectAnimationPromises.set(animationName, animatedSpritePromise);
            return animatedSpritePromise;
        }
    }

    public function getAnimation(obj:GObjectInstance):PixiAnimation {
        var animationName = obj.appearance.animationFile;
        if (mapObjectAnimations.exists(animationName)) {
            return mapObjectAnimations.get(animationName);
        } else {
            throw 'No animation $animationName';
        }
    }

    private function loadPixiAnimation(animation:Animation):Promise<PixiAnimation> {
        return new Promise(function (resolve, reject) {
            var atlasBuilder = new AtlasBuilder();
            atlasBuilder.addAnim(animation);
            var atlas = atlasBuilder.build();

            var base = BaseTexture.fromBuffer(atlas.bytes, atlas.w, atlas.h, {});

            var name = animation.name;
            var spriteSheet = new Spritesheet(base, atlas.description, name);
            spriteSheet.parse(function() {
                var pixiAnimation = new PixiAnimation();
                for(group in animation.images.keys()) {
                    pixiAnimation[group] = new AnimatedSprite(spriteSheet.animations.field(name + "_" + group), false);
                }
                resolve(pixiAnimation);
            });
        });
    }

    private function initTerrainGraphics():Promise<Bool> {
        var graphics = SdlGraphics.instance;

        function fill(animations:FlippedAnimations, texturedAnimations:TFlippedAnimations, textures:TFlippedCache, spriteSheet:Spritesheet) {
            for(i in 0...animations.length) {
                var animation = animations[i][0];
                var pixiAnimation = new PixiAnimation();
                var animatedSprite = new AnimatedSprite(spriteSheet.animations.field(animation.name + "_0"), false);
                pixiAnimation[0] = animatedSprite;
                texturedAnimations[i] = pixiAnimation;
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

    function loadHeroAnimations():Promise<Dynamic> {
        function getAnimatedSprite(animation:Animation, spriteSheet:Spritesheet) {
            var pixiAnimation = new PixiAnimation();
            for(group in animation.images.keys()) {
                pixiAnimation[group] = new AnimatedSprite(spriteSheet.animations.field(animation.name + "_" + group), false);
            }
            return pixiAnimation;
        }

        function fillArray(pixiAnimations:Array<PixiAnimation>, animations:Array<Animation>, spriteSheet:Spritesheet) {
            for(anim in animations) {
                pixiAnimations.push(getAnimatedSprite(anim, spriteSheet));
            }
        }

        function fillMap(pixiAnimations:Map<String, PixiAnimation>, animations:Map<String, Animation>, spriteSheet:Spritesheet) {
            for(anim in animations) {
                pixiAnimations.set(anim.name, getAnimatedSprite(anim, spriteSheet));
            }
        }

        var atlasBuilder = new AtlasBuilder();
        for(anim in SdlGraphics.instance.heroAnimations) {
            atlasBuilder.addAnim(anim);
        }

        for(anim in SdlGraphics.instance.boatAnimations) {
            atlasBuilder.addAnim(anim);
        }

        for(anim in SdlGraphics.instance.heroFlagAnimations) {
            atlasBuilder.addAnim(anim);
        }

        for(animArr in SdlGraphics.instance.boatFlagAnimations) {
            for(anim in animArr) {
                atlasBuilder.addAnim(anim);
            }
        }

        var atlas = atlasBuilder.build();
        var base = BaseTexture.fromBuffer(atlas.bytes, atlas.w, atlas.h, {});

        var spriteSheet = new Spritesheet(base, atlas.description, "heroAnimations");
        return new Promise(function (resolve, reject) {
            spriteSheet.parse(function() {
                fillMap(heroAnimations, SdlGraphics.instance.heroAnimations, spriteSheet);
                fillArray(boatAnimations, SdlGraphics.instance.boatAnimations, spriteSheet);
                fillArray(heroFlagAnimations, SdlGraphics.instance.heroFlagAnimations, spriteSheet);
                for (i in 0...SdlGraphics.instance.boatFlagAnimations.length) {
                    boatFlagAnimations[i] = [];
                    fillArray(boatFlagAnimations[i], SdlGraphics.instance.boatFlagAnimations[i], spriteSheet);
                }

                mapObjectAnimations["AB01_.DEF"] = boatAnimations[0];
                mapObjectAnimations["AB02_.DEF"] = boatAnimations[1];
                mapObjectAnimations["AB03_.DEF"] = boatAnimations[2];
                resolve(true);
            });
        });
    }

    function loadFogOfWar():Promise<Dynamic> {
        return Promise.all([
            loadPixiAnimation(SdlGraphics.instance.fogOfWarFullHide).then(function(pixiAnimation:PixiAnimation) {
                fogOfWarFullHide = pixiAnimation;
            }),
            loadPixiAnimation(SdlGraphics.instance.fogOfWarPartialHide).then(function(pixiAnimation:PixiAnimation) {
                fogOfWarPartialHide = pixiAnimation;
            })
        ]);
    }
}
