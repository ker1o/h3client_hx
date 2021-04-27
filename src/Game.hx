package ;
import client.TextureGraphics;
import js.lib.Promise;
import client.view.pixijs.PixiBlitter;
import js.html.CanvasRenderingContext2D;
import js.html.CanvasElement;
import mapping.MapService;
import client.maphandler.MapNormalBlitter;
import pixi.core.Application;
import gui.geometries.Rect;
import client.maphandler.MapDrawingInfo;
import utils.Int3;
import client.Graphics;
import mapping.MapBody;
import client.maphandler.MapData;
import client.GameInfo;
import mod.VLC;
import filesystem.FileCache;
import js.Browser;
import js.html.KeyboardEvent;

using StringTools;
using Reflect;

class Game {

    public static var MAP_SCREEN_TILED_WIDTH = 22;
    public static var MAP_SCREEN_TILED_HEIGHT = 22;

    public var app:Application;

    var oldTimestamp:Float = 0;
    var delta:Float = 0;
    var iFrame:Int = 0;
    var gameInfo:GameInfo;
    var info:MapDrawingInfo;
    var topTile:Int3;
    var map:MapBody;
    var animFrame:Int = 0;
    var normalBlitter:MapNormalBlitter;
    var pixiBlitter:PixiBlitter;
    var canvas(default, null):CanvasElement;
    var ctx(default, null):CanvasRenderingContext2D;

    public function new() {
        var mapName:String = "Vial of Life.h3m";

        gameInfo = new GameInfo();
        topTile = new Int3(14, 76, 0);
        info = new MapDrawingInfo(topTile, [[[]]], new Rect(0, 0, 594, 546));

        // init html objects
        initControls();

        FileCache.instance.initGraphicsAsync()
            .then(function(_) return FileCache.instance.loadConfigs())
            .then(function(_) {
                VLC.instance.loadFilesystem();
                VLC.instance.init();
                gameInfo.setFromLib();
                Graphics.instance.load();
                return TextureGraphics.instance.load();
            })
            .then(function(_) {
                return FileCache.instance.initMapAsync(mapName);
            })
            .then(function(_) {
                var mapService = new MapService();
                mapService.loadMapHeaderByName(mapName);
                map = mapService.loadMapByName(mapName);
                initMapData(map);

                return initPixiRendering();
            })
            .then(function(_) {
                startRendering();
            });
    }

    function initControls() {
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

    function initPixiRendering():Promise<Dynamic> {
        app = new Application({width: 704, height: 704});
        Browser.document.body.appendChild(app.view);
        pixiBlitter = new PixiBlitter(gameInfo.mapData, app.view);
        return pixiBlitter.initAtlases();
    }

    function initMapData(data:MapBody) {
        gameInfo.mapData = new MapData();
        gameInfo.mapData.map = data;
        gameInfo.mapData.init();

        canvas = cast Browser.document.getElementById("webgl");
        ctx = canvas.getContext2d();
        normalBlitter = new MapNormalBlitter(gameInfo.mapData, ctx);
    }

    function startRendering() {
        Browser.window.requestAnimationFrame(drawFrame);
    }

    function drawFrame(timestamp:Float) {
        delta += (timestamp - oldTimestamp);
        if(delta > 20) {
            delta = delta % 20;
            ctx.clearRect(0, 0, canvas.width, canvas.height);
            renderMap();
        }
        oldTimestamp = timestamp;
        Browser.window.requestAnimationFrame(drawFrame);
    }

    var animValHitCount = 0;

    function renderMap() {
        animValHitCount++;
        if(animValHitCount == 4) {
            animFrame++;
            animValHitCount = 0;
        }
        info.otherheroAnim = true;
        info.anim = animFrame;
        info.heroAnim = 6;
        normalBlitter.draw(info);
        pixiBlitter.draw(info);
    }
}