package lib.mapObjects;

import constants.Obj;
import mapping.TerrainType;

class ObjectTemplate {

    public var id:Obj;
    public var subid:Int;
    /// print priority, objects with higher priority will be print first, below everything else
    public var printPriority:Int;
    /// animation file that should be used to display object
    public var animationFile:String;
    /// map editor only animation file
    public var editorAnimationFile:String;
    /// string ID, equals to def base name for h3m files (lower case, no extension) or specified in mod data
    public var stringID:String;

    private static var VISITABLE_FROM_TOP = [
        Obj.FLOTSAM,
        Obj.SEA_CHEST,
        Obj.SHIPWRECK_SURVIVOR,
        Obj.BUOY,
        Obj.OCEAN_BOTTLE,
        Obj.BOAT,
        Obj.WHIRLPOOL,
        Obj.GARRISON,
        Obj.GARRISON2,
        Obj.SCHOLAR,
        Obj.CAMPFIRE,
        Obj.BORDERGUARD,
        Obj.BORDER_GATE,
        Obj.QUEST_GUARD,
        Obj.CORPSE
    ];

    /// tiles that are covered by this object, uses EBlockMapBits enum as flags
    private var usedTiles:Array<Array<Int>>;
    /// directions from which object can be entered, format same as for moveDir in CGHeroInstance(but 0 - 7)
    private var visitDir:Int;
    /// list of terrains on which this object can be placed
    private var allowedTerrains:Array<TerrainType>;

    public function new() {
        allowedTerrains = [];

        visitDir = 8|16|32|64|128; // all but top
        id = Obj.NO_OBJ;
        subid = 0;
        printPriority = 0;
        stringID = "";
    }

    public function readTxt(s:String):Void {
        var strings:Array<String> = s.split(" ");

        animationFile = strings[0];
        stringID = strings[0];

        var blockStr = strings[1]; //block map, 0 = blocked, 1 = unblocked
        var visitStr = strings[2]; //visit map, 1 = visitable, 0 = not visitable

        setSize(8, 6);
        for (i in 0...6) { // 6 rows
            for (j in 0...8) { // 8 columns
                var tile = usedTiles[i][j];
                tile = tile | VISIBLE; // assume that all tiles are visible
                if (blockStr.charAt(i*8 + j) == '0')
                    tile = tile | BLOCKED;

                if (visitStr.charAt(i*8 + j) == '1')
                    tile = tile | VISITABLE;
            }
        }

        // strings[3] most likely - terrains on which this object can be placed in editor.
        // e.g. Whirpool can be placed manually only on water while mines can be placed everywhere despite terrain-specific gfx
        // so these two fields can be interpreted as "strong affinity" and "weak affinity" towards terrains
        var terrStr:String = strings[4]; // allowed terrains, 1 = object can be placed on this terrain

        //assert(terrStr.size() == 9); // all terrains but rock
        for (i in 0...9) {
            if (terrStr.charAt(8-i) == '1')
                allowedTerrains.push((i:TerrainType));
        }

        id    = (Std.parseInt(strings[5]):Obj);
        subid = Std.parseInt(strings[6]);
        var type:Int  = Std.parseInt(strings[7]);
        printPriority = Std.parseInt(strings[8]) * 100; // to have some space in future

        if (isOnVisitableFromTopList(id, type))
            visitDir = 0xff;
        else
            visitDir = (8|16|32|64|128);

        readMsk();
    }

    public function setSize(width:UInt, height:UInt) {
        usedTiles = [];
        for (j in 0...height) {
            usedTiles.push([for (i in 0...width) 0]);
        }
    }

    public function readMsk() {
        trace('ToDo: read SPRITES/$animationFile, ResType.MASK');
//        var resID = new ResourceID("SPRITES/" + animationFile, ResType.MASK);
//
//        if (ResourceHandler.get().existsResource(resID)) {
//            var msk = CResourceHandler.get().load(resID).readAll();
//            setSize(msk.first.get()[0], msk.first.get()[1]);
//        } else {//maximum possible size of H3 object //TODO: remove hardcode and move this data into modding system
//            setSize(8, 6);
//        }
    }

    private function isOnVisitableFromTopList(id:Int, type:Int) {
        if (type == 2 || type == 3 || type == 4 || type == 5) { //creature, hero, artifact, resource
            return true;
        }
        if (VISITABLE_FROM_TOP.indexOf(id) != -1 ) {
            return true;
        }
        return false;
    }
}

@:enum abstract BlockMapBits(Int) from Int to Int {
    public var VISIBLE = 1;
    public var VISITABLE = 2;
    public var BLOCKED = 4;
}