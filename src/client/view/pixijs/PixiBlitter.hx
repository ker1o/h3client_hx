package client.view.pixijs;
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

    private function initAtlases() {
        var objects = tile.objects;
        for(object in objects) {
            if (object.fadeAnimKey >= 0) {
                //ToDo
/*
                var fade = parent.fadeAnims.find(object.fadeAnimKey);
                if (fade != null) {
                    // this object is currently fading, so skip normal drawing
                    var r2 = Rect.fromRect(realTileRect);
                    var fade:FadeAnimation = fade.second.second;
                    fade.draw(null, r2);
                    continue;
                }
                trace('Fading map object with missing fade anim : ${object.fadeAnimKey}');
*/
                continue;
            }

            var obj:GObjectInstance = object.obj;
            if (obj == null) {
                trace("Stray map object that isn't fading");
                continue;
            }

            if (!canDrawObject(obj))
                continue;

            var objData = findObjectBitmap(obj, info.anim);
            if (objData.objBitmap != null) {
                var srcRect = new Rect(object.rect.x, object.rect.y, tileSize, tileSize);

                drawObject(objData.objBitmap, srcRect, objData.isMoving);
                if (objData.flagBitmap != null) {
                    if (objData.isMoving) {
                        srcRect.y += FRAMES_PER_MOVE_ANIM_GROUP * 2 - tileSize;
                        var dstRect = new Rect(realPos.x, Std.int(realPos.y - tileSize / 2), tileSize, tileSize);
                        drawHeroFlag(objData.flagBitmap, srcRect, dstRect, true);
                    } else if (obj.pos.x == pos.x && obj.pos.y == pos.y) {
                        var dstRect = new Rect(realPos.x - 2 * tileSize, realPos.y - tileSize, 3 * tileSize, 2 * tileSize);
                        drawHeroFlag(objData.flagBitmap, null, dstRect, false);
                    }
                }
            }
        }
    }

    public function draw(info:MapDrawingInfo) {
        //todo
    }
}
