package client;

import constants.GameConstants;
import constants.Obj;
import gui.animation.IImage;
import gui.Animation;
import mapObjects.GObjectInstance;
import mapObjects.ObjectTemplate;
import mod.VLC;

typedef FlippedAnimations = Array<Array<Animation>>; //[type, rotation]
typedef FlippedCache = Array<Array<Array<IImage>>>; //[type, view type, rotation]

class Graphics {
    public static var instance(default, null) = new Graphics();

    public var heroMoveArrows:Animation;
    // [hero class def name]  //added group 10: up - left, 11 - left and 12 - left down // 13 - up-left standing; 14 - left standing; 15 - left down standing
    public var heroAnimations:Map<String, Animation>;
    public var heroFlagAnimations:Array<Animation>;

    // [boat type: 0 .. 2]  //added group 10: up - left, 11 - left and 12 - left down // 13 - up-left standing; 14 - left standing; 15 - left down standing
    public var boatAnimations:Array<Animation>;
    public var boatFlagAnimations:Array<Array<Animation>>;

    public var mapObjectAnimations:Map<String, Animation>;

    public var fogOfWarFullHide:Animation;
    public var fogOfWarPartialHide:Animation;

    public var terrainAnimations:FlippedAnimations; //[terrain type, rotation]
    public var terrainImages:FlippedCache; //[terrain type, view type, rotation]
    public var roadAnimations:FlippedAnimations; //[road type, rotation]
    public var roadImages:FlippedCache; //[road type, view type, rotation]
    public var riverAnimations:FlippedAnimations; //[river type, rotation]
    public var riverImages:FlippedCache; //[river type, view type, rotation]

    private function new() {
        boatAnimations = new Array<Animation>();
        mapObjectAnimations = new Map<String, Animation>();
    }

    public function load() {
        heroMoveArrows = new Animation("ADAG");
        heroMoveArrows.preload();

        initTerrainGraphics();
        loadHeroAnimations();
        loadHeroFlagAnimations();
        loadFogOfWar();
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

    function initTerrainGraphics() {
        var TERRAIN_FILES:Array<String> = [
            "DIRTTL.def",
            "SANDTL.def",
            "GRASTL.def",
            "SNOWTL.def",
            "SWMPTL.def",

            "ROUGTL.def",
            "SUBBTL.def",
            "LAVATL.def",
            "WATRTL.def",
            "ROCKTL.def"
        ];

        var ROAD_FILES:Array<String> =
        [
            "dirtrd.def",
            "gravrd.def",
            "cobbrd.def"
        ];

        var RIVER_FILES:Array<String> =
        [
            "clrrvr.def",
            "icyrvr.def",
            "mudrvr.def",
            "lavrvr.def"
        ];

        function loadFlipped(files:Array<String>):{animation:FlippedAnimations, cache:FlippedCache} {
            //animation.resize(types);
            var animation:FlippedAnimations = [];
            //cache.resize(types);
            var cache:FlippedCache = new FlippedCache();

            //no rotation and basic setup
            for (i in 0...files.length) {
                animation[i] = [];
                animation[i][0] = new Animation(files[i]);
                animation[i][0].preload();
                var views = animation[i][0].size(0);
                //cache[i].resize(views);
                cache[i] = [];

                for(j in 0...views) {
                    cache[i][j] = [];
                    cache[i][j][0] = animation[i][0].getImage(j);
                }
            }

            for (rotation in 1...4) {
                for (i in 0...files.length) {
                    animation[i][rotation] = new Animation(files[i]);
                    animation[i][rotation].preload();
                    var views:Int = animation[i][rotation].size(0);

                    for (j in 0...views) {
                        var image = animation[i][rotation].getImage(j);

                        if (rotation == 2 || rotation == 3) {
                            image.horizontalFlip();
                        }
                        if (rotation == 1 || rotation == 3) {
                            image.verticalFlip();
                        }

                        cache[i][j][rotation] = image;
                    }
                }
            }

            return {animation:animation, cache:cache};
        };

        var temp:{animation:FlippedAnimations, cache:FlippedCache};
        temp = loadFlipped(TERRAIN_FILES);
        terrainAnimations = temp.animation;
        terrainImages = temp.cache;

        temp = loadFlipped(ROAD_FILES);
        roadAnimations = temp.animation;
        roadImages = temp.cache;

        temp = loadFlipped(RIVER_FILES);
        riverAnimations = temp.animation;
        riverImages = temp.cache;
    }

    private function loadHeroAnimations() {
        for(elem in VLC.instance.heroh.classes.heroClasses) {
            for (templ in VLC.instance.objtypeh.getHandlerFor(Obj.HERO, elem.id).getTemplates()) {
                if (!heroAnimations.exists(templ.animationFile)) {
                    heroAnimations[templ.animationFile] = loadHeroAnimation(templ.animationFile);
                }
            }
        }

        boatAnimations[0] = loadHeroAnimation("AB01_.DEF");
        boatAnimations[1] = loadHeroAnimation("AB02_.DEF");
        boatAnimations[2] = loadHeroAnimation("AB03_.DEF");

        mapObjectAnimations["AB01_.DEF"] = boatAnimations[0];
        mapObjectAnimations["AB02_.DEF"] = boatAnimations[1];
        mapObjectAnimations["AB03_.DEF"] = boatAnimations[2];
    }

    private function loadHeroAnimation(name:String):Animation {
        //first - group number to be rotated, second - group number after rotation
        var rotations:Array<Int> = [
            6, 10,
            7, 11,
            8, 12,
            1, 13,
            2, 14,
            3, 15
        ];

        var anim:Animation = new Animation(name);
        anim.preload();

        for(iRotation in 0...(Std.int(rotations.length / 2))) {
            var sourceGroup:Int = rotations[iRotation * 2];
            var targetGroup:Int = rotations[iRotation * 2 + 1];

            anim.createFlippedGroup(sourceGroup, targetGroup);
        }

        return anim;
    }

    private function loadHeroFlagAnimations() {
        var HERO_FLAG_ANIMATIONS = [
            "AF00", "AF01","AF02","AF03",
            "AF04", "AF05","AF06","AF07"
        ];

        var BOAT_FLAG_ANIMATIONS = [
            [
                "ABF01L", "ABF01G", "ABF01R", "ABF01D",
                "ABF01B", "ABF01P", "ABF01W", "ABF01K"
            ],
            [
                "ABF02L", "ABF02G", "ABF02R", "ABF02D",
                "ABF02B", "ABF02P", "ABF02W", "ABF02K"
            ],
            [
                "ABF03L", "ABF03G", "ABF03R", "ABF03D",
                "ABF03B", "ABF03P", "ABF03W", "ABF03K"
            ]
        ];

        heroFlagAnimations = [];
        for (name in HERO_FLAG_ANIMATIONS) {
            heroFlagAnimations.push(loadHeroFlagAnimation(name));
        }

        boatFlagAnimations = [];
        for (i in 0...BOAT_FLAG_ANIMATIONS.length) {
            boatFlagAnimations[i] = [];
            for (name in BOAT_FLAG_ANIMATIONS[i]) {
                boatFlagAnimations[i].push(loadHeroFlagAnimation(name));
            }
        }
    }

    private inline function loadHeroFlagAnimation(name:String):Animation {
        return loadHeroAnimation(name);
    }

    private function loadFogOfWar() {
        fogOfWarFullHide = new Animation("TSHRC");
        fogOfWarFullHide.preload();
        fogOfWarPartialHide = new Animation("TSHRE");
        fogOfWarPartialHide.preload();

        var rotations = [22, 15, 2, 13, 12, 16, 28, 17, 20, 19, 7, 24, 26, 25, 30, 32, 27];

        var size = fogOfWarPartialHide.size(0);//group size after next rotation

        for (rotation in rotations) {
            fogOfWarPartialHide.duplicateImage(0, rotation, 0);
            var image = fogOfWarPartialHide.getImage(size, 0);
            image.verticalFlip();
            size++;
        }
    }

}
