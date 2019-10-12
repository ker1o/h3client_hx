package gui;

import gui.animation.FileCache;
import gui.animation.ImageLoader;
import gui.geometries.Point;
import haxe.io.Bytes;

class DefFile {
    static var h3Palette = [0, 32, 64, 128, 128, 0, 128, 64];

    var _offset:Map<Int, Array<Int>>;
    var _palette:Array<Int>;
    var _data:Bytes;

    public function new(name:String) {
        _data = FileCache.instance.getCahedFile(name).getData().bytes;
        _offset = new Map<Int, Array<Int>>();
        _palette = new Array<Int>();

        var it = 0;
        var type:Int = _data.getInt32(it);
        it += 4;
        it += 8;
        var totalBlocks:Int = _data.getInt32(it);
        it += 4;

        for (i in 0...256) {
            var c = _data.getInt32(it);
            _palette.push(c);
            it += 3;
        }

        switch (type) {
            case DefType.SPELL:
                _palette[0] = h3Palette[0];
            case DefType.SPRITE | DefType.SPRITE_FRAME:
                for (i in 0...8) {
                    _palette[i] = h3Palette[i];
                }
            case DefType.CREATURE:
                for (i in 0...2) {
                    _palette[i] = h3Palette[i];
                }
                for (i in 4...8) {
                    _palette[i] = h3Palette[i];
                }
            case DefType.MAP | DefType.MAP_HERO:
                _palette[0] = h3Palette[0];
                _palette[1] = h3Palette[1];
                _palette[4] = h3Palette[4];
            case DefType.TERRAIN:
                for (i in 0...5) {
                    _palette[i] = h3Palette[i];
                }
            case DefType.CURSOR:
                _palette[0] = h3Palette[0];
            case DefType.INTERFACE | DefType.BATTLE_HERO:
                _palette[0] = h3Palette[0];
                _palette[1] = h3Palette[1];
                _palette[4] = h3Palette[4];
            default:
                throw 'Unknown def type $type';
        }

        for (i in 0...totalBlocks) {
            var blockID = _data.getInt32(it);
            it += 4;
            var totalEntries = _data.getInt32(it);
            it += 12;

            it += 13 * totalEntries;

            var offsets:Array<Int> = [];
            for (j in 0...totalEntries) {
                offsets.push(_data.getInt32(it));
                it += 4;
            }
            _offset.set(blockID, offsets);
        }
    }

    public function getEntries():Map<Int, Int> {
        var ret = new Map<Int, Int>();
        for (elem in _offset.keys()) {
            ret[elem] = _offset[elem].length;
        }
        return ret;
    }

    public function loadFrame(frame:Int, group:Int, loader:ImageLoader) {
//        trace('DefFile.loadFrame($frame, $group)');
        var it:Array<Int> = _offset.get(group);
        var pos = it[frame];
        var sprite:SpriteDef = new SpriteDef();

        // first 4 bytes is SpriteDef.size
        sprite.format = _data.getInt32(pos + 1 * 4);    /// format in which pixel data is stored
        sprite.fullWidth = _data.getInt32(pos + 2 * 4); /// full width and height of frame, including borders
        sprite.fullHeight = _data.getInt32(pos + 3 * 4);
        sprite.width = _data.getInt32(pos + 4 * 4);      /// width and height of pixel data, borders excluded
        sprite.height = _data.getInt32(pos + 5 * 4);
        sprite.leftMargin = _data.getInt32(pos + 6 * 4);
        sprite.topMargin = _data.getInt32(pos + 7 * 4);

        var currentOffset:Int = 8 * 4;

        if (sprite.format == 1 && sprite.width > sprite.fullWidth && sprite.height > sprite.fullHeight) {
            sprite.leftMargin = 0;
            sprite.topMargin = 0;
            sprite.width = sprite.fullWidth;
            sprite.height = sprite.fullHeight;

            currentOffset -= 16;
        }

        var baseOffset = currentOffset;

        trace('${sprite.format}');

        loader.init(new Point(sprite.width, sprite.height), new Point(sprite.leftMargin, sprite.topMargin), new Point(sprite.fullWidth, sprite.fullHeight), _palette);

        // specific: add empty lines for realizing top margin
        loader.fillWithColor(sprite.topMargin * sprite.fullWidth);

        switch (sprite.format) {
            case 0:
                //pixel data is not compressed, copy data to surface
                for(i in 0...sprite.height) {
                    loader.load(sprite.width, _data, pos + currentOffset);
                    currentOffset += sprite.width;
                    loader.endLine();
                }
            case 1:
                //for each line we have offset of pixel data
                var RWEntriesLoc = pos + currentOffset;
                currentOffset += 4 * sprite.height;

                for (i in 0...sprite.height) {
                    // specific: add empty pixels for realizing left margin
                    loader.fillWithColor(sprite.leftMargin);

                    //get position of the line
                    currentOffset = baseOffset + _data.getInt32(RWEntriesLoc + i * 4);
                    var totalRowLength:Int = 0;

                    while (totalRowLength < sprite.width) {
                        var segmentType = _data.get(pos + currentOffset); currentOffset++;
                        var length = _data.get(pos + currentOffset) + 1; currentOffset++;

                        if (segmentType == 0xff) {
                            loader.load(length, _data, pos + currentOffset);
                            currentOffset += length;
                        } else {// RLE
//                            loader.load(length, _data, segmentType);
                            loader.fillWithColor(length);
                        }
                        totalRowLength += length;
                    }
                    // specific: add empty pixels for realizing right margin
                    loader.fillWithColor(sprite.fullWidth - sprite.leftMargin - sprite.width);

                    loader.endLine();
                }
            case 2:
                currentOffset = baseOffset + _data.getUInt16(pos + baseOffset);

                for (i in 0...sprite.height) {
                    var totalRowLength:Int = 0;

                    // specific: add empty pixels for realizing left margin
                    loader.fillWithColor(sprite.leftMargin);

                    while (totalRowLength < sprite.width) {
                        var segment:Int = _data.get(pos + currentOffset); currentOffset++;
                        var code = Std.int(segment / 32);
                        var length = (segment & 31) + 1;

                        if (code == 7) {// raw data
                            loader.load(length, _data, pos + currentOffset);
                            currentOffset += length;
                        } else {// RLE
                            // original line is commented
//                            loader.load(length, _data, code);
                            loader.fillWithColor(length);
                        }
                        totalRowLength += length;
                    }
                    // specific: add empty pixels for realizing right margin
                    loader.fillWithColor(sprite.fullWidth - sprite.leftMargin - sprite.width);

                    loader.endLine();
                }
            case 3:
                for (i in 0...sprite.height) {
                    currentOffset = baseOffset + _data.getUInt16(pos + baseOffset + i * 2 * Std.int(sprite.width / 32));
                    var totalRowLength:Int = 0;

                    // specific: add empty pixels for realizing left margin
                    loader.fillWithColor(sprite.leftMargin);

                    while (totalRowLength < sprite.width) {
                        var segment = _data.get(pos + currentOffset); currentOffset++;
                        var code:Int = Std.int(segment / 32);
                        var length = (segment & 31) + 1;

                        if (code == 7) {// raw data
                            loader.load(length, _data, pos + currentOffset);
                            currentOffset += length;
                        } else {// RLE
//                            loader.load(length, _data, code);
                            loader.fillWithColor(length);
                        }
                        totalRowLength += length;
                    }
                    // specific: add empty pixels for realizing right margin
                    loader.fillWithColor(sprite.fullWidth - sprite.leftMargin - sprite.width);

                    loader.endLine();
                }
            default:
                throw 'Error: unsupported format of def file: ${sprite.format}';
        }
        // specific: add empty lines for realizing bottom margin
        loader.fillWithColor((sprite.fullHeight - sprite.topMargin - sprite.height) * sprite.fullWidth);
    }

}

class SpriteDef {
    public var size:Int;
    public var format:Int;    /// format in which pixel data is stored
    public var fullWidth:Int; /// full width and height of frame, including borders
    public var fullHeight:Int;
    public var width:Int;     /// width and height of pixel data, borders excluded
    public var height:Int;
    public var leftMargin:Int;
    public var topMargin:Int;

    public function new () {}
}

