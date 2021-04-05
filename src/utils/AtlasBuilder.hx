package utils;

import js.lib.Uint8Array;
import utils.binpacking.MaxRectsPacker;
import gui.animation.IImage;
import gui.Animation;

using Reflect;

class AtlasBuilder {
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

    public function build():{bytes:Uint8Array, w:Float, h:Float, description:Dynamic} {
        _atlasImages = [];
        var sum:Int = 0;

        for (anim in _anims) {
            for (group in anim.images.keys()) {
                var frameImgs = anim.images[group];
                for (i in 0...frameImgs.length) {
                    var sdlImage:IImage = frameImgs[i];
                    var atlasImg = new AtlasImage(sdlImage);
                    atlasImg.animationName = anim.name;
                    atlasImg.groupIndex = group;
                    atlasImg.frameIndex = i;

                    _atlasImages.push(atlasImg);
                    sum += (sdlImage.size.x * sdlImage.size.y);
                }
            }
        }

        _atlasImages.sort(function(a:AtlasImage, b:AtlasImage) {
            var s1 = a.image.size.x * a.image.size.y;
            var s2 = b.image.size.x * b.image.size.y;

            return (s1 == s2 ? 0 : s1 > s2 ? -1 : 1);
        });

        var ok = false;
        var iter:Iterator<Int> = sizes.keys();
        var sizeS:Int = 0;
        while (iter.hasNext() && (sizeS = iter.next()) < sum) { }

        while (!ok) {
            var candidateSize = sizes[sizeS];
            _binPacker = new MaxRectsPacker(candidateSize.w, candidateSize.h, false);

            ok = true;
            for (atlasImg in _atlasImages) {
                var rect = _binPacker.insert(atlasImg.image.size.x, atlasImg.image.size.y, FreeRectChoiceHeuristic.BestLongSideFit);
                if (rect == null) {
//                    trace('Cant fit ${sdlImage.size.x}, ${sdlImage.size.y}');
                    ok = false;
                    break;
                }
                atlasImg.rect = rect;
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

        var bytes = buildAtlas();
        var description = buildDescription();
        return {bytes: bytes, w: _binPacker.binWidth, h: _binPacker.binHeight, description: description};
    }

    private function buildAtlas():Uint8Array {
        var bytes = new Uint8Array(_binPacker.binWidth * _binPacker.binHeight * 4);
        // blit pixels to one big texture
        for (atlasImg in _atlasImages) {
            var image = atlasImg.image;
            var rect = atlasImg.rect;
            var size = image.size;
            for (j in 0...size.y) {
                var destPos = Std.int(((rect.y + j) * _binPacker.binWidth + rect.x) * 4);
                var srcPos = (j * size.x) * 4;
                for (pi in 0...(size.x * 4)) {
                    bytes[destPos + pi] = image.surf[srcPos + pi];
                }
            }
        }

        return bytes;
    }

    private function buildDescription():Dynamic {
        var frames:Dynamic = {};
        var animations:Dynamic = {};

        for (atlasImg in _atlasImages) {
            var rect:utils.binpacking.Rect = atlasImg.rect;
            var img:IImage = atlasImg.image;
            var desc = new Frame();
            desc.frame = new Frame.Rect(rect.x, rect.y, rect.width, rect.height);
            desc.rotated = atlasImg.rect.flipped;
            desc.trimmed = true; //ToDo
            desc.spriteSourceSize = new Frame.Rect(img.margins.x, img.margins.y, img.size.x, img.size.y);
            desc.sourceSize = new Frame.Size(img.fullsize.x, img.fullsize.y);
            desc.anchor = new Frame.Point(0, 0);

            var spriteName = '${atlasImg.animationName}_${atlasImg.groupIndex}_${get2digitString(atlasImg.frameIndex)}';
            frames.setField(spriteName, desc);

            var animationName = atlasImg.animationName + "_" + atlasImg.groupIndex;

            if (!animations.hasField(animationName)) {
                animations.setField(animationName, []);
            }
            animations.field(animationName).push(spriteName);
        }

        for (key in animations.fields()) {
            var arr:Array<String> = animations.field(key);
            arr.sort(function(a:String, b:String) {
                return a > b ? 1 : (a < b ? -1 : 0);
            });
        }

        var meta = {
            app: "heroes atlas builder",
            version: "0.0.1",
            image: "default",
            format: "RGBA8888",
            size: {w: _binPacker.binWidth, h: _binPacker.binHeight},
            scale: "1"
        };

        var description = {frames: frames, animations: animations, meta: meta};
        return description;
    }

    public function reset() {
        _anims = [];
        _atlasImages = [];
    }

    private inline function get2digitString(n:Int) {
        return n < 10 ? "0" + n : "" + n;
    }
}

