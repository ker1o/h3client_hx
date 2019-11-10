package mapping;

import lib.artifacts.Artifact;
import constants.ArtifactId;
import utils.logicalexpression.Variant;
import constants.PlayerColor;
import utils.logicalexpression.EventExpression;
import constants.Obj;
import constants.BuildingID;
import mapping.EventEffect.EventEffectType;
import utils.Int3;
import constants.GameConstants;
import haxe.io.Bytes;
import filesystem.BinaryReader;

class MapLoaderH3M implements IMapLoader {

    private var _stream:Bytes;

    private var mapHeader:MapHeader;
    private var map:Map;
    private var reader:BinaryReader;

    public function new(stream:Bytes) {
        _stream = stream;
        reader = new BinaryReader(stream);
    }

    public function loadMap():Map {
        map = new Map();
        mapHeader = map;
        init();
        return new Map();
    }

    public function loadMapHeader():MapHeader {
        mapHeader = new MapHeader();
        readHeader();
        return mapHeader;
    }

    private function init() {

        readHeader();

        map.allHeroes = [for (i in 0...map.allowedHeroes.length) true]; //ToDo

        readDisposedHeroes();

        readAllowedArtifacts();

        readAllowedSpellsAbilities();

        readRumors();

        readPredefinedHeroes();

        readTerrain();

        readDefInfo();

        readObjects();

        readEvents();
    }

    private function readHeader() {
        mapHeader.version = reader.readUInt32();
        mapHeader.areAnyPlayers = reader.readBool();
        mapHeader.height = mapHeader.width = reader.readUInt32();
        mapHeader.twoLevel = reader.readBool();
        mapHeader.name = reader.readString();
        mapHeader.description = reader.readString();
        mapHeader.difficulty = reader.readInt8();

        if(mapHeader.version != MapFormat.ROE) {
            mapHeader.levelLimit = reader.readUInt8();
        } else {
            mapHeader.levelLimit = 0;
        }

        // TBD
        readPlayerInfo();
        readVictoryLossConditions();
        readTeamInfo();
        readAllowedHeroes();
    }

    private function readPlayerInfo() {
        for (i in 0...mapHeader.players.length) {
            mapHeader.players[i].canHumanPlay = reader.readBool();
            mapHeader.players[i].canComputerPlay = reader.readBool();

            // If nobody can play with this player
            if(!(mapHeader.players[i].canHumanPlay || mapHeader.players[i].canComputerPlay)) {
                switch(mapHeader.version) {
                    case MapFormat.SOD | MapFormat.WOG:
                        reader.skip(13);
                    case MapFormat.AB:
                        reader.skip(12);
                    case MapFormat.ROE:
                        reader.skip(6);
                    default:
                }
                continue;
            }

            mapHeader.players[i].aiTactic = reader.readUInt8();

            if(mapHeader.version == MapFormat.SOD || mapHeader.version == MapFormat.WOG) {
                mapHeader.players[i].p7 = reader.readUInt8();
            } else {
                mapHeader.players[i].p7 = -1;
            }

            // Factions this player can choose
            var allowedFactions:Int = reader.readUInt8();
            // How many factions will be read from map
            var totalFactions:Int = GameConstants.F_NUMBER;

            if(mapHeader.version != MapFormat.ROE) {
                allowedFactions += reader.readUInt8() * 256;
            } else {
                totalFactions--; //exclude conflux for ROE
            }

            for(fact in 0...totalFactions) {
                if((allowedFactions & (1 << fact)) == 0) {
                    mapHeader.players[i].allowedFactions.remove(fact);
                }
            }

            mapHeader.players[i].isFactionRandom = reader.readBool();
            mapHeader.players[i].hasMainTown = reader.readBool();
            if(mapHeader.players[i].hasMainTown) {
                if(mapHeader.version != MapFormat.ROE) {
                    mapHeader.players[i].generateHeroAtMainTown = reader.readBool();
                    mapHeader.players[i].generateHero = reader.readBool();
                } else {
                    mapHeader.players[i].generateHeroAtMainTown = true;
                    mapHeader.players[i].generateHero = false;
                }
               mapHeader.players[i].posOfMainTown = readInt3();
            }

            mapHeader.players[i].hasRandomHero = reader.readBool();
            mapHeader.players[i].mainCustomHeroId = reader.readUInt8();

            if(mapHeader.players[i].mainCustomHeroId != 0xff) {
                mapHeader.players[i].mainCustomHeroPortrait = reader.readUInt8();
                if (mapHeader.players[i].mainCustomHeroPortrait == 0xff) {
                    mapHeader.players[i].mainCustomHeroPortrait = -1; //correct 1-byte -1 (0xff) into 4-byte -1
                }

                 mapHeader.players[i].mainCustomHeroName = reader.readString();
            } else {
                mapHeader.players[i].mainCustomHeroId = -1; //correct 1-byte -1 (0xff) into 4-byte -1
            }

            if(mapHeader.version != MapFormat.ROE) {
                mapHeader.players[i].powerPlaceholders = reader.readUInt8(); //unknown byte
                var heroCount = reader.readUInt8();
                reader.skip(3);
                for(pp in 0...heroCount) {
                    var vv = new HeroName();
                    vv.id = reader.readUInt8();
                    vv.name = reader.readString();

                    mapHeader.players[i].heroesNames.push(vv);
                }
            }
        }
    }

    private function readVictoryLossConditions() {
        mapHeader.triggeredEvents.splice(0, mapHeader.triggeredEvents.length);

        var vicCondition:VictoryConditionType = reader.readUInt8();

        var victoryCondition:EventCondition = new EventCondition(WinLoseType.STANDARD_WIN);
        var defeatCondition:EventCondition = new EventCondition(WinLoseType.DAYS_WITHOUT_TOWN);
        defeatCondition.value = 7;

        var standardVictory = new TriggeredEvent();
        standardVictory.effect.type = EventEffectType.VICTORY;
        standardVictory.effect.toOtherMessage = "TBD:standardVictory.effect.toOtherMessage"; //VLC.generaltexth.allTexts[5];
        standardVictory.identifier = "standardVictory";
        standardVictory.description = ""; // TODO: display in quest window
        standardVictory.onFulfill = "TBD: standardVictory.onFulfill"; //VLC.generaltexth.allTexts[659];
	    standardVictory.trigger = new EventExpression(victoryCondition);

        var standardDefeat = new TriggeredEvent();
        standardDefeat.effect.type = EventEffectType.DEFEAT;
        standardDefeat.effect.toOtherMessage = "TBD: standardDefeat.effect.toOtherMessage"; //VLC.generaltexth.allTexts[8];
        standardDefeat.identifier = "standardDefeat";
        standardDefeat.description = ""; // TODO: display in quest window
        standardDefeat.onFulfill = "TBD: standardDefeat.onFulfill"; //VLC.generaltexth.allTexts[7];
    	standardDefeat.trigger = new EventExpression(defeatCondition);

        // Specific victory conditions
        if(vicCondition == VictoryConditionType.WINSTANDARD) {
            // create normal condition
            mapHeader.triggeredEvents.push(standardVictory);
            mapHeader.victoryIconIndex = 11;
            mapHeader.victoryMessage = "TBD: mapHeader.victoryMessage"; //VLC.generaltexth.victoryConditions[0];
        } else {
            var specialVictory = new TriggeredEvent();
            specialVictory.effect.type = EventEffectType.VICTORY;
            specialVictory.identifier = "specialVictory";
            specialVictory.description = ""; // TODO: display in quest window

            mapHeader.victoryIconIndex = vicCondition;
            mapHeader.victoryMessage = "TBD: mapHeader.victoryMessage"; //VLC.generaltexth.victoryConditions[size_t(vicCondition) + 1];

            var allowNormalVictory:Bool = reader.readBool();
            var appliesToAI:Bool = reader.readBool();

            if (allowNormalVictory) {
                // ToDo
                var playersOnMap:Int = 0; //boost.range.count_if(_mapHeader.players,[](const PlayerInfo & info) { return info.canAnyonePlay();});

                if (playersOnMap == 1) {
//                    logGlobal.warn("Map %s has only one player but allows normal victory?", _mapHeader.name);
                    allowNormalVictory = false; // makes sense? Not much. Works as H3? Yes!
                }
            }

            switch (vicCondition) {
                case VictoryConditionType.ARTIFACT:
                    var cond = new EventCondition(WinLoseType.HAVE_ARTIFACT);
                    cond.objectType = reader.readUInt8();
                    if (mapHeader.version != MapFormat.ROE)
                        reader.skip(1);

                    specialVictory.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[281]"; //VLC.generaltexth.allTexts[281];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[280]"; //VLC.generaltexth.allTexts[280];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.GATHERTROOP:
                    var cond = new EventCondition(WinLoseType.HAVE_CREATURES);
                    cond.objectType = reader.readUInt8();
                    if (mapHeader.version != MapFormat.ROE)
                        reader.skip(1);
                    cond.value = reader.readUInt32();

                    specialVictory.effect.toOtherMessage = "VLC.generaltexth.allTexts[277]"; //VLC.generaltexth.allTexts[277];
                    specialVictory.onFulfill = "VLC.generaltexth.allTexts[276]"; //VLC.generaltexth.allTexts[276];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.GATHERRESOURCE:
                    var cond = new EventCondition(WinLoseType.HAVE_RESOURCES);
                    cond.objectType = reader.readUInt8();
                    cond.value = reader.readUInt32();

                    specialVictory.effect.toOtherMessage = "VLC.generaltexth.allTexts[279]"; //VLC.generaltexth.allTexts[279]
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[278]"; //VLC.generaltexth.allTexts[278];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.BUILDCITY:
                    var oper = EventExpression.getOperatorAll();
                    var cond = new EventCondition(WinLoseType.HAVE_BUILDING);
                    cond.position = readInt3();
                    cond.objectType = BuildingID.VILLAGE_HALL + reader.readUInt8();
                    oper.expressions.push(cond);
                    cond.objectType = BuildingID.FORT + reader.readUInt8();
                    oper.expressions.push(cond);

                    specialVictory.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[283]"; //VLC.generaltexth.allTexts[283];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[282]"; //VLC.generaltexth.allTexts[282];
                    specialVictory.trigger = new EventExpression(oper);

                case VictoryConditionType.BUILDGRAIL:
                    var cond = new EventCondition(WinLoseType.HAVE_BUILDING);
                    cond.objectType = BuildingID.GRAIL;
                    cond.position = readInt3();
                    if(cond.position.z > 2)
                        cond.position = new Int3(-1,-1,-1);

                    specialVictory.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[285]"; //VLC.generaltexth.allTexts[285];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[284]"; //VLC.generaltexth.allTexts[284];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.BEATHERO:
                    var cond = new EventCondition(WinLoseType.DESTROY);
                    cond.objectType = Obj.HERO;
                    cond.position = readInt3();

                    specialVictory.effect.toOtherMessage = "VLC.generaltexth.allTexts[253]"; //VLC.generaltexth.allTexts[253];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[252]"; //VLC.generaltexth.allTexts[252];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.CAPTURECITY:
                    var cond = new EventCondition(WinLoseType.CONTROL);
                    cond.objectType = Obj.TOWN;
                    cond.position = readInt3();

                    specialVictory.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[249]"; //VLC.generaltexth.allTexts[250];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[249]"; //VLC.generaltexth.allTexts[249];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.BEATMONSTER:
                    var cond = new EventCondition(WinLoseType.DESTROY);
                    cond.objectType = Obj.MONSTER;
                    cond.position = readInt3();

                    specialVictory.effect.toOtherMessage = "VLC.generaltexth.allTexts[287]"; //VLC.generaltexth.allTexts[287];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[286]"; // VLC.generaltexth.allTexts[286];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.TAKEDWELLINGS:
                    var oper = EventExpression.getOperatorAll();
                    oper.expressions.push(new EventCondition(WinLoseType.CONTROL, 0, Obj.CREATURE_GENERATOR1));
                    oper.expressions.push(new EventCondition(WinLoseType.CONTROL, 0, Obj.CREATURE_GENERATOR4));

                    specialVictory.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[289]"; //VLC.generaltexth.allTexts[289];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[288]"; //VLC.generaltexth.allTexts[288];
                    specialVictory.trigger = new EventExpression(oper);

                case VictoryConditionType.TAKEMINES:
                    var cond = new EventCondition(WinLoseType.CONTROL);
                    cond.objectType = Obj.MINE;

                    specialVictory.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[291]"; //VLC.generaltexth.allTexts[291];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[290]"; //VLC.generaltexth.allTexts[290];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.TRANSPORTITEM:
                    var cond = new EventCondition(WinLoseType.TRANSPORT);
                    cond.objectType = reader.readUInt8();
                    cond.position = readInt3();

                    specialVictory.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[293]"; //VLC.generaltexth.allTexts[293];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[292]"; //VLC.generaltexth.allTexts[292];
                    specialVictory.trigger = new EventExpression(cond);

                default:
                    throw '[Error] vicCondition: vicCondition';
            }

            // if condition is human-only turn it into following construction: AllOf(human, condition)
            if (!appliesToAI) {
                var oper = EventExpression.getOperatorAll();
                var notAI = new EventCondition(WinLoseType.IS_HUMAN);
                notAI.value = 1;
                oper.expressions.push(notAI);
                oper.expressions.push(specialVictory.trigger.get());
                specialVictory.trigger = new EventExpression(oper);
            }

            // if normal victory allowed - add one more quest
            if (allowNormalVictory)
            {
                mapHeader.victoryMessage += " / ";
                mapHeader.victoryMessage += "TBD: VLC.generaltexth.victoryConditions[0]"; //VLC.generaltexth.victoryConditions[0];
                mapHeader.triggeredEvents.push(standardVictory);
            }
            mapHeader.triggeredEvents.push(specialVictory);
        }

        // Read loss conditions
        var lossCond:LossConditionType = reader.readUInt8();
        if (lossCond == LossConditionType.LOSSSTANDARD) {
            mapHeader.defeatIconIndex = 3;
            mapHeader.defeatMessage = "TBD: VLC.generaltexth.lossCondtions[0]"; //VLC.generaltexth.lossCondtions[0];
        } else {
            var specialDefeat = new TriggeredEvent();
            specialDefeat.effect.type = EventEffectType.DEFEAT;
            specialDefeat.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[5]"; //VLC.generaltexth.allTexts[5];
            specialDefeat.identifier = "specialDefeat";
            specialDefeat.description = ""; // TODO: display in quest window

            mapHeader.defeatIconIndex = lossCond;
            mapHeader.defeatMessage = "TBD: VLC.generaltexth.lossCondtions[size_t(lossCond) + 1]"; //VLC.generaltexth.lossCondtions[size_t(lossCond) + 1];

            switch(lossCond) {
                case LossConditionType.LOSSCASTLE:
                    var noneOf = EventExpression.getOperatorNone();
                    var cond = new EventCondition(WinLoseType.CONTROL);
                    cond.objectType = Obj.TOWN;
                    cond.position = readInt3();

                    noneOf.expressions.push(cond);
                    specialDefeat.onFulfill = "TBD: VLC.generaltexth.allTexts[251]"; //VLC.generaltexth.allTexts[251];
                    specialDefeat.trigger = new EventExpression(noneOf);

                case LossConditionType.LOSSHERO:
                    var noneOf = EventExpression.getOperatorNone();
                    var cond = new EventCondition(WinLoseType.CONTROL);
                    cond.objectType = Obj.HERO;
                    cond.position = readInt3();

                    noneOf.expressions.push(cond);
                    specialDefeat.onFulfill = "TBD: VLC.generaltexth.allTexts[253]"; //VLC.generaltexth.allTexts[253];
                    specialDefeat.trigger = new EventExpression(noneOf);

                case LossConditionType.TIMEEXPIRES:
                    var cond = new EventCondition(WinLoseType.DAYS_PASSED);
                    cond.value = reader.readUInt16();

                    specialDefeat.onFulfill = "TBD: VLC.generaltexth.allTexts[254]"; //VLC.generaltexth.allTexts[254];
                    specialDefeat.trigger = new EventExpression(cond);

                default:
                    trace('Do nothing?');
            }
            // turn simple loss condition into complete one that can be evaluated later:
            // - any of :
            //   - days without town: 7
            //   - all of:
            //     - is human
            //     - (expression)

            var allOf = EventExpression.getOperatorAll();
            var isHuman = new EventCondition(WinLoseType.IS_HUMAN);
            isHuman.value = 1;

            allOf.expressions.push(isHuman);
            allOf.expressions.push(specialDefeat.trigger.get());
            specialDefeat.trigger = new EventExpression(allOf);

            mapHeader.triggeredEvents.push(specialDefeat);
        }
        mapHeader.triggeredEvents.push(standardDefeat);
    }

    private function readTeamInfo() {
        mapHeader.howManyTeams = reader.readUInt8();
        if(mapHeader.howManyTeams > 0)
        {
            // Teams
            for(i in 0...PlayerColor.PLAYER_LIMIT) {
                mapHeader.players[i].team = new TeamID(reader.readUInt8());
            }
        }
        else
        {
            // No alliances
            for(i in 0...PlayerColor.PLAYER_LIMIT) {
                if(mapHeader.players[i].canComputerPlay || mapHeader.players[i].canHumanPlay) {
                    mapHeader.players[i].team = new TeamID(mapHeader.howManyTeams++);
                }
            }
        }
    }

    private function readAllowedHeroes() {
        var allowedHeroesCount = 8;//ToDo: VLC.heroh.heroes.size()
        mapHeader.allowedHeroes = [for (i in 0...allowedHeroesCount) true];

        var bytes = mapHeader.version == MapFormat.ROE ? 16 : 20;

        readBitmask(mapHeader.allowedHeroes, bytes, GameConstants.HEROES_QUANTITY, false);

        // Probably reserved for further heroes
        if((mapHeader.version:Int) > (MapFormat.ROE:Int)) {
            var placeholdersQty:Int = reader.readUInt32();

            reader.skip(placeholdersQty * 1);
        }
    }

    private function readDisposedHeroes() {
        // Reading disposed heroes (20 bytes)
        if((map.version:Int) >= (MapFormat.SOD:Int)) {
            var disp = reader.readUInt8();
            //map.disposedHeroes.resize(disp);
            for(g in 0...disp) {
                map.disposedHeroes[g].heroId = reader.readUInt8();
                map.disposedHeroes[g].portrait = reader.readUInt8();
                map.disposedHeroes[g].name = reader.readString();
                map.disposedHeroes[g].players = reader.readUInt8();
            }
        }

        //omitting NULLS
        reader.skip(31);
    }

    private function readAllowedArtifacts() {
        var globalArtifacts:Array<Artifact> = [];// ToDo: VLC.arth.artifacts;

        map.allowedArtifact = [for(i in 0...globalArtifacts.length) true]; //handle new artifacts, make them allowed by default

        // Reading allowed artifacts:  17 or 18 bytes
        if(map.version != MapFormat.ROE) {
            var bytes = map.version == MapFormat.AB ? 17 : 18;

            readBitmask(map.allowedArtifact, bytes, GameConstants.ARTIFACTS_QUANTITY);
        }

        // ban combo artifacts
        if (map.version == MapFormat.ROE || map.version == MapFormat.AB)
        {
            for(artifact in globalArtifacts)
            {
                // combo
                if (artifact.constituents != null)
                {
                    map.allowedArtifact[artifact.id] = false;
                }
            }
            if (map.version == MapFormat.ROE)
            {
                map.allowedArtifact[ArtifactId.ARMAGEDDONS_BLADE] = false;
            }
        }

        // Messy, but needed
        for (event in map.triggeredEvents) {
            var patcher = function (cond:EventCondition) : Variant<EventCondition> {
                if (cond.condition == WinLoseType.HAVE_ARTIFACT || cond.condition == WinLoseType.TRANSPORT) {
                    map.allowedArtifact[cond.objectType] = false;
                }
                return cond;
            };

            event.trigger = event.trigger.morph(patcher);
        }
    }

    private function readAllowedSpellsAbilities() {

    }

    private function readRumors() {

    }

    private function readPredefinedHeroes() {

    }

    private function readTerrain() {
        map.initTerrain();

        for(a in 0...2) {
            if(a == 1 && !map.twoLevel) {
                break;
            }

            for(c in 0...map.width) {
                for(z in 0...map.height) {
                    var tile = map.getTile(z, c, a);
                    tile.terType = reader.readUInt8();
                    tile.terView = reader.readUInt8();
                    tile.riverType = reader.readUInt8();
                    tile.riverDir = reader.readUInt8();
                    tile.roadType = reader.readUInt8();
                    tile.roadDir = reader.readUInt8();
                    tile.extTileFlags = reader.readUInt8();
                    tile.blocked = ((tile.terType == TerrainType.ROCK || tile.terType == TerrainType.BORDER ) ? true : false); //underground tiles are always blocked
                    tile.visitable = false;
                }
            }
        }
    }

    private function readDefInfo() {

    }

    private function readObjects() {

    }

    private function readEvents() {

    }


    function readBitmask(dest:Array<Bool>, byteCount:Int, limit:Int, negate:Bool = true) {
        for(byte in 0...byteCount) {
            var mask:Int = reader.readUInt8();
            for(bit in 0...8)
            {
                if(byte * 8 + bit < limit) {
                    var flag:Bool = (mask & (1 << bit)) == 1;
                    if((negate && flag) || (!negate && !flag)) // FIXME: check PR388
                        dest[byte * 8 + bit] = false;
                }
            }
        }
    }

    function readInt3():Int3 {
        var int3 = new Int3(reader.readUInt8(), reader.readUInt8(), reader.readUInt8());
        return int3;

    }

}
