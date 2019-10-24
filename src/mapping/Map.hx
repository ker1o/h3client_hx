package mapping;

import utils.Int3;
import Array;

class Map extends MapHeader {

    private var _terrain:Array<Array<Array<TerrainTile>>>;
    private var _guardingCreaturePositions:Array<Array<Array<Int>>>;


    public var checksum:Int /* UInt32 */;
    public var rumors:Array<Dynamic/*Rumor*/>;
    public var disposedHeroes:Array<Dynamic/*DisposedHero*/>;
    public var predefinedHeroes:Array<Dynamic/*CGHeroInstance*/>;
    public var allowedSpell:Array<Bool>;
    public var allowedArtifact:Array<Bool>;
    public var allowedAbilities:Array<Bool>;
    public var events:Array<Dynamic/*CMapEvent*/>;
    public var grailPos:Int3;
    public var grailRadius:Int;

    //Central lists of items in game. Position of item in the vectors below is their (instance) id.
    public var objects:Array<Dynamic/*CGObjectInstance*/>;
    public var towns:Array<Dynamic/*CGTownInstance*/>;
    public var artInstances:Array<Dynamic/*CArtifactInstance*/>;
    public var quests:Array<Dynamic/*CQuest*/>;
    public var allHeroes:Array<Dynamic/*CGHeroInstance*/>; //indexed by [hero_type_id]; on map, disposed, prisons, etc.

    public function new() {
        super();
    }

    public function initTerrain() {
        var level = twoLevel ? 2 : 1;
        _terrain = [];
        _guardingCreaturePositions = [];
        for(i in 0...width) {
            _terrain[i] = [];
            _guardingCreaturePositions[i] = []; // height
            for(j in 0...height) {
                _terrain[i][j] = new Array<TerrainTile>(); //level
                _guardingCreaturePositions[i][j] = new Array<Int>();
                for(l in 0...level) {
                    _terrain[i][j][l] = new TerrainTile();
                    _guardingCreaturePositions[i][j][l] = 0;
                }
            }
        }
    }

    public function getTile(x:Int, y:Int, z:Int):TerrainTile {
        return _terrain[x][y][z];
    }

}
