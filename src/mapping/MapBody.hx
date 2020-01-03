package mapping;

import lib.mapping.MapEditManager;
import constants.id.ObjectInstanceId;
import lib.mapObjects.misc.TeleportChannel;
import constants.id.TeleportChannelId;
import constants.id.ArtifactInstanceID;
import Array;
import lib.artifacts.ArtifactInstance;
import lib.mapObjects.GObjectInstance;
import lib.mapObjects.hero.GHeroInstance;
import lib.mapObjects.quest.Quest;
import lib.mapObjects.town.GTownInstance;
import lib.mapping.MapEvent;
import lib.mapping.Rumor;
import utils.Int3;

class MapBody extends MapHeader {
    private var _terrain:Array<Array<Array<TerrainTile>>>;
    private var _guardingCreaturePositions:Array<Array<Array<Int>>>;

    public var checksum:UInt /* UInt32 */;
    public var rumors:Array<Rumor>;
    public var disposedHeroes:Array<DisposedHero>;
    public var predefinedHeroes:Array<GHeroInstance>;
    public var allowedSpell:Array<Bool>;
    public var allowedArtifact:Array<Bool>;
    public var allowedAbilities:Array<Bool>;
    public var events:Array<MapEvent>;
    public var grailPos:Int3;
    public var grailRadius:Int;

    //Central lists of items in game. Position of item in the vectors below is their (instance) id.
    public var objects:Array<GObjectInstance>;
    public var towns:Array<GTownInstance>;
    public var artInstances:Array<ArtifactInstance>;
    public var quests:Array<Quest>;
    public var allHeroes:Array<GHeroInstance>; //indexed by [hero_type_id]; on map, disposed, prisons, etc.

    //Helper lists
    public var heroesOnMap:Array<GHeroInstance>;
    public var teleportChannels:Map<TeleportChannelId, TeleportChannel>;

    public var questIdentifierToId:Map<Int, ObjectInstanceId>;
    public var editManager:MapEditManager;
    public var instanceNames:Map<String, GObjectInstance>;

    public function new() {
        super();

        rumors = [];
        disposedHeroes = [];
        predefinedHeroes = [];
        allowedSpell = [];
        allowedArtifact = [];
        allowedAbilities = [];
        events = [];

        objects = [];
        towns = [];
        artInstances = [];
        quests = [];
        allHeroes = [];

        heroesOnMap = [];
        questIdentifierToId = new Map<Int, ObjectInstanceId>();
        teleportChannels = new Map<TeleportChannelId, TeleportChannel>();
        instanceNames = new Map<String, GObjectInstance>();
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

    public inline function isInTheMap(pos:Int3) {
        // if not out the borders
        return !(pos.x < 0 || pos.y < 0 || pos.z < 0 || pos.x >= width || pos.y >= height || pos.z > (twoLevel ? 1 : 0));
    }

    public inline function getTile(x:Int, y:Int, z:Int):TerrainTile {
        return _terrain[x][y][z];
    }

    public inline function getTileByInt3(pos:Int3):TerrainTile {
        return _terrain[pos.x][pos.y][pos.z];
    }

    public function addNewArtifactInstance(art:ArtifactInstance) {
        art.id = new ArtifactInstanceID(artInstances.length);
        artInstances.push(art);
    }

    public function addNewQuestInstance(quest:Quest) {
        quest.qid = quests.length;
        quests.push(quest);
    }

    public function addNewObject(obj:GObjectInstance) {
        var it = instanceNames.get(obj.instanceName);
        if(it != null)
            throw 'Object instance name duplicated: ${obj.instanceName}';

        objects.push(obj);
        instanceNames[obj.instanceName] = obj;
        addBlockVisTiles(obj);

        obj.afterAddToMap(this);
    }

    private function addBlockVisTiles(obj:GObjectInstance) {
        for (fx in 0...obj.getWidth()) {
            for (fy in 0...obj.getHeight()) {
                var xVal:Int = obj.pos.x - fx;
                var yVal:Int = obj.pos.y - fy;
                var zVal:Int = obj.pos.z;
                if (xVal >= 0 && xVal < width && yVal >= 0 && yVal < height) {
                    var curt:TerrainTile = _terrain[xVal][yVal][zVal];
                    if (obj.visitableAt(xVal, yVal)) {
                        curt.visitableObjects.push(obj);
                        curt.visitable = true;
                    }
                    if (obj.blockingAt(xVal, yVal)) {
                        curt.blockingObjects.push(obj);
                        curt.blocked = true;
                    }
                }
            }
        }
    }

}
