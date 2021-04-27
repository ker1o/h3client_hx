package client.view.pixijs;
import js.lib.Promise;
import client.maphandler.IMapDrawer;
import client.maphandler.MapDrawingInfo;
import js.html.CanvasElement;
import client.maphandler.MapData;

class PixiBlitter implements IMapDrawer {
    var data:MapData;
    var container:CanvasElement;

    public function new(data:MapData, container:CanvasElement) {
        this.data = data;
        this.container = container;
    }

    public function initAtlases():Promise<Array<Dynamic>> {
        var promises = [];
        for (obj in data.map.objects) {
            var promise = TextureGraphics.instance.getAnimation(obj);
            promises.push(promise);
        }

        return Promise.all(promises);
    }

    public function draw(info:MapDrawingInfo) {
        //todo
    }
}
