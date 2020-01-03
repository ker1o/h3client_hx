package ;

import lib.mod.VLC;
import haxe.io.Bytes;
import mapping.MapService;
import filesystem.FileCache;
import gui.animation.IImage;
import gui.Animation;
#if js
import js.Browser;
import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;
import js.html.ImageData;
import js.html.InputElement;
import js.html.OptionElement;
import js.html.SelectElement;
import js.html.Uint8ClampedArray;
#end

using StringTools;

class Game {

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

    private var anim:Animation;
    private var group:Int = 0;

    public function new() {
        var mapName:String = "Vial of Life.h3m";
        #if js
        FileCache.instance.initGraphicsAsync().then(function(files:Array<String>) {
            VLC.instance.loadFilesystem();
            VLC.instance.init();

            FileCache.instance.initMapAsync(mapName).then(function(success:Bool) {
                var mapService = new MapService();
                mapService.loadMapHeaderByName(mapName);
                mapService.loadMapByName(mapName);
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
        // init html objects
        canvas = cast Browser.document.getElementById("gameview");
        ctx = canvas.getContext2d();

        select = cast Browser.document.getElementById("def_select");
        select.onchange = onAnimChange;

        range = cast Browser.document.getElementById("groups_range");
        range.onchange = onGroupChange;

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

    #if js
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

    private function startRendering() {
        Browser.window.requestAnimationFrame(drawFrame);
    }

    private function drawFrame(timestamp:Float) {
        delta += (timestamp - oldTimestamp);

        if (delta > 100) {
            delta = delta % 100;

            if (anim != null && anim.images.exists(group)) {
                var image:IImage = anim.images[group][iFrame];
                if(image != null) {
                    ctx.clearRect(0, 0, canvas.width, canvas.height);
                    image.drawToPos(ctx, image.margins.x, image.margins.y, null);
                }

                iFrame++;
                if (iFrame == anim.images[group].length) {
                    iFrame = 0;
                }
            }
        }

        oldTimestamp = timestamp;

        Browser.window.requestAnimationFrame(drawFrame);
    }

    private inline function createImageData(arr:Uint8ClampedArray, w:Int, h:Int):ImageData {
        var imageData = new ImageData(arr, w, h);
        return imageData;
    }
    #end

}
