package ;

import client.GameInfo;
import client.H3mGraphics;
import client.maphandler.MapDrawingInfo;
import client.maphandler.MapHandler;
import filesystem.FileCache;
import gui.geometries.Rect;
import kha.Color;
import kha.Framebuffer;
import kha.graphics2.Graphics;
import kha.input.Keyboard;
import kha.input.KeyCode;
import kha.math.FastMatrix3;
import kha.System;
import mapping.MapBody;
import mapping.MapService;
import mod.VLC;
import utils.Int3;

using StringTools;

class Game {

    public static inline var WIDTH = 800;
    public static inline var HEIGHT = 600;

    public static var MAP_SCREEN_TILED_WIDTH = Math.ceil(WIDTH / 32);
    public static var MAP_SCREEN_TILED_HEIGHT = Math.ceil(HEIGHT / 32);

    private var gameInfo:GameInfo;
    private var info:MapDrawingInfo;
    private var topTile:Int3;
    private var map:MapBody;

    private var animFrame:Int = 0;

    public function new() {
        init();
    }

    private function init() {
        var mapName:String = "Vial of Life.h3m";

        gameInfo = new GameInfo();
        topTile = new Int3(14, 76, 0);
        info = new MapDrawingInfo(topTile, [[[]]], new Rect(0, 0, 594, 546));

        #if js
        Keyboard.get().notify(keyDown, keyUp);

        FileCache.instance.initGraphicsAsync().then(function(files:Array<String>) {
            FileCache.instance.loadConfigs().then(function(success:Bool) {
                VLC.instance.loadFilesystem();
                VLC.instance.init();
                gameInfo.setFromLib();

                H3mGraphics.instance.load();

                FileCache.instance.initMapAsync(mapName).then(function(success:Bool) {
                    var mapService = new MapService();
                    mapService.loadMapHeaderByName(mapName);
                    map = mapService.loadMapByName(mapName);

                    initMapHandler(map);
                });
            });
        });
        #else
        FileCache.instance.initMap(mapName);

        var mapService = new MapService();
        mapService.loadMapHeaderByName(mapName);
        mapService.loadMapByName(mapName);
        #end
    }

    private function initMapHandler(map:MapBody) {
        gameInfo.mh = new MapHandler();
        gameInfo.mh.map = map;
        gameInfo.mh.init();
        trace('initMapHandler completed');
    }

    private function keyDown(keyCode:KeyCode) {
        switch (keyCode) {
            case Up:
                if (topTile.y > 0) topTile.y--;
            case Down:
                if (topTile.y + MAP_SCREEN_TILED_WIDTH < map.height) topTile.y++;
            case Left:
                if (topTile.x > 0) topTile.x--;
            case Right:
                if (topTile.x + MAP_SCREEN_TILED_WIDTH < map.width) topTile.x++;
            default:
        }
    }

    private function keyUp(keyCode:KeyCode) {

    }

    var animValHitCount = 0;
    public function update() {
        animValHitCount++;
        if(animValHitCount == 8) {
            animFrame++;
            animValHitCount = 0;
        }

        info.otherheroAnim = true;
        info.anim = animFrame;
        info.heroAnim = 6;
    }

    public function render(framebuffer:Framebuffer) {
        var g = framebuffer.g2;
        if (gameInfo.mh != null) {
            var transform = FastMatrix3.scale(
                System.windowWidth(0) / WIDTH,
                System.windowHeight(0) / HEIGHT);

            g.begin();
            g.clear(Color.Black);
//            g.pushTransformation(transform);
            renderMap(g);
            g.end();
        }
    }

    private function renderMap(g:Graphics) {
        gameInfo.mh.drawTerrainRectNew(g, info);
    }

}
