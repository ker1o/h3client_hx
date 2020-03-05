package engine;

import binpacking.MaxRectsPacker;
import gui.animation.IImage;
import gui.Animation;
import haxe.io.Bytes;

class AtlasPacker {
    private static var MAX_SIZE:Int = 2048;
    private static var MIN_SIZE:Int = 32;
    private static var sizes:Map<Int, {w:Int, h:Int}>;

    private var _binPacker:MaxRectsPacker;
    private var _atlasImages:Array<AtlasImage>;
    private var _anims:Array<Animation>;

    public function new() {
        _anims = [];

        sizes = new Map<Int, {w:Int, h:Int}>();

        var w:Int = MIN_SIZE;
        var h:Int = MIN_SIZE;
        while (w <= MAX_SIZE && h <= MAX_SIZE) {
            var s = w * h;
            sizes.set(s, {w: w, h: h});
            if (w == h) {
                w *= 2;
            } else {
                h = w;
            }
        }
    }

    public function addAnim(anim:Animation) {
        if (_anims.indexOf(anim) == -1) {
            _anims.push(anim);
        }
    }

    public function build() {
        var imgs:Array<IImage> = [];
        var sum:Int = 0;

        for (anim in _anims) {
            for (arr in anim.images) {
                for (sdlImage in arr) {
                    imgs.push(sdlImage);
                    sum += (sdlImage.size.x * sdlImage.size.y);
                }
            }
        }

        imgs.sort(function(a:IImage, b:IImage) {
            var s1 = a.size.x * a.size.y;
            var s2 = b.size.x * b.size.y;

            return (s1 == s2 ? 0 : s1 > s2 ? -1 : 1);
        });

        var ok = false;
        var iter:Iterator<Int> = sizes.keys();
        var sizeS:Int = 0;
        while (iter.hasNext() && (sizeS = iter.next()) < sum) { }

        while (!ok) {
            var candidateSize = sizes[sizeS];
            _atlasImages = [];
            _binPacker = new MaxRectsPacker(candidateSize.w, candidateSize.h, true);

            ok = true;
            for (sdlImage in imgs) {
                var rect = _binPacker.insert(sdlImage.size.x, sdlImage.size.y, FreeRectChoiceHeuristic.BestLongSideFit);
                if (rect == null) {
//                    trace('Cant fit ${sdlImage.size.x}, ${sdlImage.size.y}');
                    ok = false;
                    break;
                }
                var atlasImg = new AtlasImage(sdlImage, rect);
                _atlasImages.push(atlasImg);
            }
            if (!ok) {
                if (iter.hasNext()) {
                    sizeS = iter.next();
                } else {
                    break;
                }
            }
        }
        trace(sizes[sizeS], _binPacker.occupancy());
    }

    public function updateTiles():Tile {
        var bytes = Bytes.alloc(_binPacker.binWidth * _binPacker.binHeight * 4);
        // blit pixels to one big texture
        for (atlasImg in _atlasImages) {
            var image = atlasImg.image;
            var rect = atlasImg.rect;
            var size = image.size;
//            for (j in 0...size.y) {
//                var destPos = Std.int(((rect.y + j) * _binPacker.binWidth + rect.x) * 4);
//                var srcPos = (j * size.x) * 4;
//                for (pi in 0...(size.x * 4)) {
//                    bytes.set(destPos + pi, image.surf[srcPos + pi]);
//                }
//            }
        }
        var pixels = new Pixels(_binPacker.binWidth, _binPacker.binHeight, bytes, hxd.PixelFormat.RGBA);
        var bigTile = Tile.fromPixels(pixels);

        // set tile
        for (atlasImg in _atlasImages) {
            var image = atlasImg.image;
            var rect = atlasImg.rect;
            trace(rect.x, rect.y, rect.width, rect.height, atlasImg.rect.flipped);
            image.tile = bigTile.sub(rect.x, rect.y, rect.width, rect.height, image.margins.x - 0.5 * image.fullsize.x, image.margins.y - 0.5 * image.fullsize.y);
        }
        return bigTile;
    }

    public function reset() {
        _anims = [];
    }
}
