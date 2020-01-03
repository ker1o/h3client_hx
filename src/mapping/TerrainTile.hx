package mapping;

import lib.mapObjects.GObjectInstance;

class TerrainTile {

    public var terType:TerrainType;
    public var terView:Int;
    public var riverType:RiverType;
    public var riverDir:Int;
    public var roadType:RoadType;
    public var roadDir:Int;

    public var extTileFlags:Int;
    public var visitable:Bool;
    public var blocked:Bool;

    public var visitableObjects:Array<GObjectInstance>;
    public var blockingObjects:Array<GObjectInstance>;

    public function new() {
        terType = TerrainType.BORDER;
        terView = 0;
        riverType = RiverType.NO_RIVER;
        riverDir = 0;
        roadType = RoadType.NO_ROAD;
        roadDir = 0;
        extTileFlags = 0;
        visitable = false;
        blocked = false;

        visitableObjects = [];
        blockingObjects = [];

    }
}
