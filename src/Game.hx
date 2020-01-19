package ;

import gui.geometries.Rect;
import client.maphandler.MapDrawingInfo;
import utils.Int3;
import client.Graphics;
import mapping.MapBody;
import client.maphandler.MapHandler;
import client.GameInfo;
import client.ClientState;
import mod.VLC;
import mapping.MapService;
import filesystem.FileCache;
import gui.animation.IImage;
import gui.Animation;
#if js
import js.Browser;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.InputElement;
import js.html.KeyboardEvent;
import js.html.OptionElement;
import js.html.SelectElement;
#end

using StringTools;

class Game {

    public static var MAP_SCREEN_TILED_WIDTH = 22;
    public static var MAP_SCREEN_TILED_HEIGHT = 22;

    #if js
    private var canvas(default, null):CanvasElement;
    private var ctx(default, null):CanvasRenderingContext2D;
    private var select:SelectElement;
    private var range:InputElement;

    private var animationKeys:Array<Int>;

    private var oldTimestamp:Float = 0;
    private var delta:Float = 0;
    private var iFrame:Int = 0;
    #end

    private var clientState:ClientState;
    private var gameInfo:GameInfo;
    private var info:MapDrawingInfo;
    private var topTile:Int3;
    private var map:MapBody;

    private var anim:Animation;
    private var group:Int = 0;

    public function new() {
        var mapName:String = "Vial of Life.h3m";

        clientState = new ClientState();
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

                    startRendering();
                });
            });
        });
        #else
        FileCache.instance.initMap(mapName);

        var mapService = new MapService();
        mapService.loadMapHeaderByName(mapName);
        mapService.loadMapByName(mapName);
        #end
/*
        var defaultFilename:String = "zm196z.def";

        #if js
        initControls();

        // load binnary models
        FileCache.instance.initGraphicsAsync().then(function(files:Array<String>) {
            return files.filter(function(filename:String) {
                return filename.indexOf(".def") > -1;
            });
        }).then(function(defFiles:Array<String>) {
            initSelect(defFiles);
            startRendering();
            selectAnimation(defaultFilename);
        });
        #else
        FileCache.instance.initGraphics();
        anim = new Animation(defaultFilename);
        anim.preload();
        #end
*/
    }

    private function initMapHandler(map:MapBody) {
        gameInfo.mh = new MapHandler();
        gameInfo.mh.map = map;
        gameInfo.mh.init();
        trace('initMapHandler completed');
    }

    #if js
    private function initControls() {
        canvas = cast Browser.document.getElementById("gameview");
        ctx = canvas.getContext2d();

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

//        select = cast Browser.document.getElementById("def_select");
//        select.onchange = onAnimChange;
//        range = cast Browser.document.getElementById("groups_range");
//        range.onchange = onGroupChange;
    }

    private function startRendering() {
        Browser.window.requestAnimationFrame(drawFrame);
    }

    private function drawFrame(timestamp:Float) {
        delta += (timestamp - oldTimestamp);

        if (delta > 100) {
            delta = delta % 100;

            ctx.clearRect(0, 0, canvas.width, canvas.height);
            renderMap();
//            renderAnim();
        }

        oldTimestamp = timestamp;

        Browser.window.requestAnimationFrame(drawFrame);
    }

    private function renderMap() {
        info.otherheroAnim = true;
        info.anim = 0;
        info.heroAnim = 6;

        gameInfo.mh.drawTerrainRectNew(ctx, info);
    }

    // animation rendering
    private function selectAnimation(name:String) {
        ctx.clearRect(0, 0, canvas.width, canvas.height);

        var now = Date.now().getTime();

        trace('Show $name');
        anim = new Animation(name);
        anim.preload();

        var currentTime = Date.now().getTime();
        trace('$name is ready. Loading time: ${(currentTime - now)}ms');

        initRange();
    }

    private function initRange() {
        animationKeys = [];
        for (key in anim.images.keys()) {
            animationKeys.push(key);
        }
        untyped range.max = animationKeys.length;
        untyped range.value = 0;
        group = 0;
        iFrame = 0;
    }

    private function initSelect(filenames:Array<String>) {
        for (filename in filenames) {
            var optionElement:OptionElement = cast Browser.document.createElement("Option");
            optionElement.label = filename;
            optionElement.value = filename;
            select.options.add(optionElement);
        }
    }

    private function onGroupChange() {
        group = animationKeys[Std.parseInt(range.value)];
        iFrame = 0;
    }

    private function onAnimChange() {
        untyped selectAnimation(select.options[select.selectedIndex].value);
    }

    private function renderAnim() {
        if (anim != null && anim.images.exists(group)) {
            var image:IImage = anim.images[group][iFrame];
            if(image != null) {
                ctx.fillStyle = "blue";
                ctx.fillRect(0, 0, canvas.width, canvas.height);
                image.drawToPos(ctx, 0, 0, null);
            }

            iFrame++;
            if (iFrame == anim.images[group].length) {
                iFrame = 0;
            }
        }
    }

    #end

}
