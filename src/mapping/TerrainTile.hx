package mapping;

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

    public var visitableObjects:Array<Dynamic>;
    public var blockingObjects:Array<Dynamic>;

    public function new() {

    }
}
