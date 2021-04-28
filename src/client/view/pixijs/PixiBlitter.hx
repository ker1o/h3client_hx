package client.view.pixijs;
import pixi.extras.AnimatedSprite;
import js.lib.Promise;
import client.maphandler.IMapDrawer;
import client.maphandler.MapDrawingInfo;
import js.html.CanvasElement;
import client.maphandler.MapData;

using Lambda;

class PixiBlitter implements IMapDrawer {
    var data:MapData;
    var container:CanvasElement;

    public function new(data:MapData, container:CanvasElement) {
        this.data = data;
        this.container = container;
    }

    public function initAtlases():Promise<Array<Dynamic>> {
        var map = new Map<String, Promise<AnimatedSprite>>();
        for (obj in data.map.objects) {
            var name = obj.appearance.animationFile;
            if(!map.exists(name)) {
                map.set(name, TextureGraphics.instance.getAnimation(obj));
            }
        }
        return Promise.all(map.array());
    }

    public function draw(info:MapDrawingInfo) {
        //todo
    }
}
