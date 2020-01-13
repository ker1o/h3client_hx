package client.maphandler;

import utils.Int3;

//ToDo: think about using binary operations instead of 9 vars
class NeighborTilesInfo {
    public var d7:Bool; //789
    public var d8:Bool; //456
    public var d9:Bool; //123
    public var d4:Bool;
    public var d5:Bool;
    public var d6:Bool;
    public var d1:Bool;
    public var d2:Bool;
    public var d3:Bool;

    private var _visBitmaps = [
        -1,  34,   4,   4,  22,  23,   4,   4,  36,  36,  38,  38,  47,  47,  38,  38, //16
        3,  25,  12,  12,   3,  25,  12,  12,   9,   9,   6,   6,   9,   9,   6,   6, //32
        35,  39,  48,  48,  41,  43,  48,  48,  36,  36,  38,  38,  47,  47,  38,  38, //48
        26,  49,  28,  28,  26,  49,  28,  28,   9,   9,   6,   6,   9,   9,   6,   6, //64
        0,  45,  29,  29,  24,  33,  29,  29,  37,  37,   7,   7,  50,  50,   7,   7, //80
        13,  27,  44,  44,  13,  27,  44,  44,   8,   8,  10,  10,   8,   8,  10,  10, //96
        0,  45,  29,  29,  24,  33,  29,  29,  37,  37,   7,   7,  50,  50,   7,   7, //112
        13,  27,  44,  44,  13,  27,  44,  44,   8,   8,  10,  10,   8,   8,  10,  10, //128
        15,  17,  30,  30,  16,  19,  30,  30,  46,  46,  40,  40,  32,  32,  40,  40, //144
        2,  25,  12,  12,   2,  25,  12,  12,   9,   9,   6,   6,   9,   9,   6,   6, //160
        18,  42,  31,  31,  20,  21,  31,  31,  46,  46,  40,  40,  32,  32,  40,  40, //176
        26,  49,  28,  28,  26,  49,  28,  28,   9,   9,   6,   6,   9,   9,   6,   6, //192
        0,  45,  29,  29,  24,  33,  29,  29,  37,  37,   7,   7,  50,  50,   7,   7, //208
        13,  27,  44,  44,  13,  27,  44,  44,   8,   8,  10,  10,   8,   8,  10,  10, //224
        0,  45,  29,  29,  24,  33,  29,  29,  37,  37,   7,   7,  50,  50,   7,   7, //240
        13,  27,  44,  44,  13,  27,  44,  44,   8,   8,  10,  10,   8,   8,  10,  10  //256
    ];


    public function new(pos:Int3, sizes:Int3, visibilityMap:Array<Array<Array<Bool>>>, spectate:Bool) {
        var getTile = function(dx:Int, dy:Int):Bool {
            if (dx + pos.x < 0 || dx + pos.x >= sizes.x || dy + pos.y < 0 || dy + pos.y >= sizes.y)
                return false;
            return spectate ? true : visibilityMap[dx+pos.x][dy+pos.y][pos.z];
        };

        d7 = getTile(-1, -1); //789
        d8 = getTile( 0, -1); //456
        d9 = getTile( 1, -1); //123
        d4 = getTile(-1,  0);
        d5 = visibilityMap[pos.x][pos.y][pos.z];
        d6 = getTile( 1,  0);
        d1 = getTile(-1,  1);
        d2 = getTile( 0,  1);
        d3 = getTile( 1,  1);
    }

    public function areAllHidden():Bool {
        return !(d1 || d2 || d3 || d4 || d5 ||d6 || d7 || d8 || d9);
    }

    public function getBitmapID():Int {
        //NOTE: some images have unused in VCMI pair (same blockmap but a bit different look)
        // 0-1, 2-3, 4-5, 11-13, 12-14

        return _visBitmaps[(d1 ? 1 : 0) + (d2 ? 1 : 0) * 2 + (d3 ? 1 : 0) * 4 + (d4 ? 1 : 0) * 8 + (d6 ? 1 : 0) * 16 + (d7 ? 1 : 0) * 32 + (d8 ? 1 : 0) * 64 + (d9 ? 1 : 0) * 128]; // >=0 -> partial hide, <0 - full hide
    }
}
