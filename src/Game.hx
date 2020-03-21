package ;

import kha.Framebuffer;
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
#if js
import js.Browser;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.KeyboardEvent;
#end

using StringTools;

class Game {

    public static var MAP_SCREEN_TILED_WIDTH = 22;
    public static var MAP_SCREEN_TILED_HEIGHT = 22;

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
        // init html objects
        initControls();

        FileCache.instance.initGraphicsAsync().then(function(files:Array<String>) {
            FileCache.instance.loadConfigs().then(function(success:Bool) {
                VLC.instance.loadFilesystem();
                VLC.instance.init();
                gameInfo.setFromLib();

                Graphics.instance.load();

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

    #if js
    private function initControls() {
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

    var animValHitCount = 0;
    public function update() {

    }

    public function render(framebuffer: Framebuffer) {
        if (gameInfo.mh != null) {
            renderMap();
        }
    }

    var pp = 0;
    private function renderMap() {
        animValHitCount++;
        if(animValHitCount == 4) {
            animFrame++;
            animValHitCount = 0;
        }

        info.otherheroAnim = true;
        info.anim = animFrame;
        info.heroAnim = 6;

        if (pp == 0) {
            pp = 1;
//            gameInfo.mh.drawTerrainRectNew(info);

        }
    }
    #end

}
