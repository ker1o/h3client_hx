package ;

import gui.TextureDrawer;
import client.maphandler.MapNormalBlitter;
import client.maphandler.MapBlitter;
import pixi.extras.AnimatedSprite;
import pixi.core.textures.Spritesheet;
import pixi.core.textures.BaseTexture;
import gui.Animation;
import utils.AtlasBuilder;
import pixi.core.Application;
import gui.geometries.Rect;
import client.maphandler.MapDrawingInfo;
import utils.Int3;
import client.Graphics;
import mapping.MapBody;
import client.maphandler.MapHandler;
import client.GameInfo;
import mod.VLC;
import mapping.MapService;
import filesystem.FileCache;
import js.Browser;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.KeyboardEvent;

using StringTools;
using Reflect;

class Game {

    public static var MAP_SCREEN_TILED_WIDTH = 22;
    public static var MAP_SCREEN_TILED_HEIGHT = 22;

    public var app:Application;

    private var oldTimestamp:Float = 0;
    private var delta:Float = 0;
    private var iFrame:Int = 0;

    private var gameInfo:GameInfo;
    private var info:MapDrawingInfo;
    private var topTile:Int3;
    private var map:MapBody;

    private var animFrame:Int = 0;

    private var normalBlitter:MapNormalBlitter;

//    private var atlasBuilder = new AtlasBuilder();
//    private var sprite:AnimatedSprite;

    public function new() {
        var mapName:String = "Vial of Life.h3m";

        gameInfo = new GameInfo();
        topTile = new Int3(14, 76, 0);
        info = new MapDrawingInfo(topTile, [[[]]], new Rect(0, 0, 594, 546));

        // init html objects
        initControls();

        FileCache.instance.initGraphicsAsync().then(function(files:Array<String>) {
            return FileCache.instance.loadConfigs();
        }).then(function(success:Bool) {
            VLC.instance.loadFilesystem();
            VLC.instance.init();
            gameInfo.setFromLib();

            Graphics.instance.load();
            testAtlasBuilder();
            startRendering();
//
//            return FileCache.instance.initMapAsync(mapName);
        });
//        }).then(function(success:Bool) {
//            var mapService = new MapService();
//            mapService.loadMapHeaderByName(mapName);
//            map = mapService.loadMapByName(mapName);
//
//            initMapHandler(map);
//
//            startRendering();
//        });
    }

    private function testAtlasBuilder() {
//        var animation = new Animation("CROC");
//        animation.preload();
//        atlasBuilder.addAnim(animation);
//        var atlas = atlasBuilder.build();
//
//        var base = BaseTexture.fromBuffer(atlas.bytes, atlas.w, atlas.h, {});
//
//        var spriteSheet = new Spritesheet(base, atlas.description, animation.name);
//        spriteSheet.parse(function() {
//            sprite = new AnimatedSprite(spriteSheet.animations.field("CROC_2"), false);
//            sprite.play();
//            app.stage.addChild(sprite);
//        });
    }

    private function initMapHandler(map:MapBody) {
        gameInfo.mh = new MapHandler();
        gameInfo.mh.map = map;
        gameInfo.mh.init();
        trace('initMapHandler completed');

        var textureDrawer = new TextureDrawer();

        normalBlitter = new MapNormalBlitter(gameInfo.mh, );
    }

    private function initControls() {
        app = new Application({width: 704, height: 704});
        Browser.document.body.appendChild(app.view);

        Browser.document.onkeydown = function(e:KeyboardEvent) {
            switch (e.keyCode) {
                case KeyboardEvent.DOM_VK_UP:
                    if (topTile.y > 0) topTile.y--;
                case KeyboardEvent.DOM_VK_DOWN:
                    if (topTile.y + MAP_SCREEN_TILED_WIDTH < map.height) topTile.y++;
                case KeyboardEvent.DOM_VK_LEFT:
                    if (topTile.x > 0) topTile.x--;
                case KeyboardEvent.DOM_VK_RIGHT:
                    if (topTile.x + MAP_SCREEN_TILED_WIDTH < map.width) topTile.x++;
            }
        }
    }

    private function startRendering() {
        Browser.window.requestAnimationFrame(drawFrame);
    }

    private function drawFrame(timestamp:Float) {
        var delta = (timestamp - oldTimestamp);

        if(sprite != null) {
            sprite.update(delta / 100);
        }

        oldTimestamp = timestamp;

        Browser.window.requestAnimationFrame(drawFrame);
    }

    var animValHitCount = 0;
    private function renderMap() {
        animValHitCount++;
        if(animValHitCount == 4) {
            animFrame++;
            animValHitCount = 0;
        }

        info.otherheroAnim = true;
        info.anim = animFrame;
        info.heroAnim = 6;

        normalBlitter.blit(info);
    }

}
