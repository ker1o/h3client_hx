package gui;

import haxe.io.Bytes;

class DefFile {

    public static var h3Palette = [0, 32, 64, 128, 128, 0, 128, 64];

    public function new(bytes:Bytes) {
        var offset = new Map<Int, Array<Int>>();

        var palette = new Array<Int>();

        var it = 0;
        var type:Int = bytes.getInt32(it);
        it += 4;
        it += 8;
        var totalBlocks:Int = bytes.getInt32(it);
        it += 4;

        for (i in 0...256) {
            var c = bytes.getInt32(it);
            palette.push(c);
            it += 3;
        }

        switch (type) {
            case DefType.SPELL:
                palette[0] = h3Palette[0];
            case DefType.SPRITE | DefType.SPRITE_FRAME:
                for (i in 0...8) {
                    palette[i] = h3Palette[i];
                }
            case DefType.CREATURE:
                for (i in 0...2) {
                    palette[i] = h3Palette[i];
                }
                for (i in 4...8) {
                    palette[i] = h3Palette[i];
                }
            case DefType.MAP | DefType.MAP_HERO:
                palette[0] = h3Palette[0];
                palette[1] = h3Palette[1];
                palette[4] = h3Palette[4];
            case DefType.TERRAIN:
                for (i in 0...5) {
                    palette[i] = h3Palette[i];
                }
            case DefType.CURSOR:
                palette[0] = h3Palette[0];
            case DefType.INTERFACE | DefType.BATTLE_HERO:
                palette[0] = h3Palette[0];
                palette[1] = h3Palette[1];
                palette[4] = h3Palette[4];
            default:
                throw 'Unknown def type $type';
        }

        for (i in 0...totalBlocks) {
            var blockID = bytes.getInt32(it);
            it += 4;
            var totalEntries = bytes.getInt32(it);
            it += 12;

            it += 13 * totalEntries;

            var offsets:Array<Int> = [];
            for (j in 0...totalEntries) {
                offsets.push(bytes.getInt32(it));
                it += 4;
            }
            offset.set(blockID, offsets);
        }
    }

    public static function strComponents(bitColor:Int):Int {
        // we have to invert it because of endian
        var b = (bitColor & 0x00FF0000) >> 16;
        var g = (bitColor & 0x0000FF00) >> 8;
        var r = (bitColor & 0x000000FF);
        return r << 16 | g << 8 | b;
    }

    public function loadFrame(frame:Int, group:Int) {
        // TBD

    }

}
