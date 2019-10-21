package mapping;

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

    private var _mapHeader:MapHeader;
    private var _map:Map;
    private var _reader:BinaryReader;

    public function new(stream:Bytes) {
        _stream = stream;
        _reader = new BinaryReader(stream);
    }

    public function loadMap():Map {
        _map = new Map();
        _mapHeader = _map;
        init();
        return new Map();
    }

    public function loadMapHeader():MapHeader {
        _mapHeader = new MapHeader();
        readHeader();
        return _mapHeader;
    }

    private function init() {

        readHeader();

        // read header details

        readTerrain();
    }

    private function readHeader() {
        _mapHeader.version = _reader.readUInt32();
        _mapHeader.areAnyPlayers = _reader.readBool();
        _mapHeader.height = _mapHeader.width = _reader.readUInt32();
        _mapHeader.twoLevel = _reader.readBool();
        _mapHeader.name = _reader.readString();
        _mapHeader.description = _reader.readString();
        _mapHeader.difficulty = _reader.readInt8();

        if(_mapHeader.version != MapFormat.ROE) {
            _mapHeader.levelLimit = _reader.readUInt8();
        } else {
            _mapHeader.levelLimit = 0;
        }

        // TBD
        readPlayerInfo();
        readVictoryLossConditions();
//        readTeamInfo();
//        readAllowedHeroes();
    }

    private function readPlayerInfo() {
        for (i in 0..._mapHeader.players.length) {
            _mapHeader.players[i].canHumanPlay = _reader.readBool();
            _mapHeader.players[i].canComputerPlay = _reader.readBool();

            // If nobody can play with this player
            if(!(_mapHeader.players[i].canHumanPlay || _mapHeader.players[i].canComputerPlay)) {
                switch(_mapHeader.version) {
                    case MapFormat.SOD | MapFormat.WOG:
                        _reader.skip(13);
                    case MapFormat.AB:
                        _reader.skip(12);
                    case MapFormat.ROE:
                        _reader.skip(6);
                    default:
                        continue;
                }
            }

            _mapHeader.players[i].aiTactic = _reader.readUInt8();

            if(_mapHeader.version == MapFormat.SOD || _mapHeader.version == MapFormat.WOG) {
                _mapHeader.players[i].p7 = _reader.readUInt8();
            } else {
                _mapHeader.players[i].p7 = -1;
            }

            // Factions this player can choose
            var allowedFactions:Int = _reader.readUInt8();
            // How many factions will be read from map
            var totalFactions:Int = GameConstants.F_NUMBER;

            if(_mapHeader.version != MapFormat.ROE) {
                allowedFactions += _reader.readUInt8() * 256;
            } else {
                totalFactions--; //exclude conflux for ROE
            }

            for(fact in 0...totalFactions) {
                if((allowedFactions & (1 << fact)) == 0) {
                    _mapHeader.players[i].allowedFactions.remove(fact);
                }
            }

            _mapHeader.players[i].isFactionRandom = _reader.readBool();
            _mapHeader.players[i].hasMainTown = _reader.readBool();
            if(_mapHeader.players[i].hasMainTown) {
                if(_mapHeader.version != MapFormat.ROE) {
                    _mapHeader.players[i].generateHeroAtMainTown = _reader.readBool();
                    _mapHeader.players[i].generateHero = _reader.readBool();
                } else {
                    _mapHeader.players[i].generateHeroAtMainTown = true;
                    _mapHeader.players[i].generateHero = false;
                }
               _mapHeader.players[i].posOfMainTown = readInt3();
            }

            _mapHeader.players[i].hasRandomHero = _reader.readBool();
            _mapHeader.players[i].mainCustomHeroId = _reader.readUInt8();

            if(_mapHeader.players[i].mainCustomHeroId != 0xff) {
                _mapHeader.players[i].mainCustomHeroPortrait = _reader.readUInt8();
                if (_mapHeader.players[i].mainCustomHeroPortrait == 0xff) {
                    _mapHeader.players[i].mainCustomHeroPortrait = -1; //correct 1-byte -1 (0xff) into 4-byte -1
                }

                 _mapHeader.players[i].mainCustomHeroName = _reader.readString();
            } else {
                _mapHeader.players[i].mainCustomHeroId = -1; //correct 1-byte -1 (0xff) into 4-byte -1
            }

            if(_mapHeader.version != MapFormat.ROE) {
                _mapHeader.players[i].powerPlaceholders = _reader.readUInt8(); //unknown byte
                var heroCount = _reader.readUInt8();
                _reader.skip(3);
                for(pp in 0...heroCount) {
                    var vv = new HeroName();
                    vv.id = _reader.readUInt8();
                    vv.name = _reader.readString();

                    _mapHeader.players[i].heroesNames.push(vv);
                }
            }
        }
    }

    private function readVictoryLossConditions() {
        _mapHeader.triggeredEvents.splice(0, _mapHeader.triggeredEvents.length);

        var vicCondition:VictoryConditionType = _reader.readUInt8();

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
            _mapHeader.triggeredEvents.push(standardVictory);
            _mapHeader.victoryIconIndex = 11;
            _mapHeader.victoryMessage = "TBD: mapHeader.victoryMessage"; //VLC.generaltexth.victoryConditions[0];
        } else {
            var specialVictory = new TriggeredEvent();
            specialVictory.effect.type = EventEffectType.VICTORY;
            specialVictory.identifier = "specialVictory";
            specialVictory.description = ""; // TODO: display in quest window

            _mapHeader.victoryIconIndex = vicCondition;
            _mapHeader.victoryMessage = "TBD: mapHeader.victoryMessage"; //VLC.generaltexth.victoryConditions[size_t(vicCondition) + 1];

            var allowNormalVictory:Bool = _reader.readBool();
            var appliesToAI:Bool = _reader.readBool();

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
                    cond.objectType = _reader.readUInt8();
                    if (_mapHeader.version != MapFormat.ROE)
                        _reader.skip(1);

                    specialVictory.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[281]"; //VLC.generaltexth.allTexts[281];
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[280]"; //VLC.generaltexth.allTexts[280];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.GATHERTROOP:
                    var cond = new EventCondition(WinLoseType.HAVE_CREATURES);
                    cond.objectType = _reader.readUInt8();
                    if (_mapHeader.version != MapFormat.ROE)
                        _reader.skip(1);
                    cond.value = _reader.readUInt32();

                    specialVictory.effect.toOtherMessage = "VLC.generaltexth.allTexts[277]"; //VLC.generaltexth.allTexts[277];
                    specialVictory.onFulfill = "VLC.generaltexth.allTexts[276]"; //VLC.generaltexth.allTexts[276];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.GATHERRESOURCE:
                    var cond = new EventCondition(WinLoseType.HAVE_RESOURCES);
                    cond.objectType = _reader.readUInt8();
                    cond.value = _reader.readUInt32();

                    specialVictory.effect.toOtherMessage = "VLC.generaltexth.allTexts[279]"; //VLC.generaltexth.allTexts[279]
                    specialVictory.onFulfill = "TBD: VLC.generaltexth.allTexts[278]"; //VLC.generaltexth.allTexts[278];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.BUILDCITY:
                    var oper = EventExpression.getOperatorAll();
                    var cond = new EventCondition(WinLoseType.HAVE_BUILDING);
                    cond.position = readInt3();
                    cond.objectType = BuildingID.VILLAGE_HALL + _reader.readUInt8();
                    oper.expressions.push(cond);
                    cond.objectType = BuildingID.FORT + _reader.readUInt8();
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
                    cond.objectType = _reader.readUInt8();
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
                _mapHeader.victoryMessage += " / ";
                _mapHeader.victoryMessage += "TBD: VLC.generaltexth.victoryConditions[0]"; //VLC.generaltexth.victoryConditions[0];
                _mapHeader.triggeredEvents.push(standardVictory);
            }
            _mapHeader.triggeredEvents.push(specialVictory);
        }

        // Read loss conditions
        var lossCond:LossConditionType = _reader.readUInt8();
        if (lossCond == LossConditionType.LOSSSTANDARD) {
            _mapHeader.defeatIconIndex = 3;
            _mapHeader.defeatMessage = "TBD: VLC.generaltexth.lossCondtions[0]"; //VLC.generaltexth.lossCondtions[0];
        } else {
            var specialDefeat = new TriggeredEvent();
            specialDefeat.effect.type = EventEffectType.DEFEAT;
            specialDefeat.effect.toOtherMessage = "TBD: VLC.generaltexth.allTexts[5]"; //VLC.generaltexth.allTexts[5];
            specialDefeat.identifier = "specialDefeat";
            specialDefeat.description = ""; // TODO: display in quest window

            _mapHeader.defeatIconIndex = lossCond;
            _mapHeader.defeatMessage = "TBD: VLC.generaltexth.lossCondtions[size_t(lossCond) + 1]"; //VLC.generaltexth.lossCondtions[size_t(lossCond) + 1];

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
                    cond.value = _reader.readUInt16();

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

            _mapHeader.triggeredEvents.push(specialDefeat);
        }
        _mapHeader.triggeredEvents.push(standardDefeat);

        //ToDo: remove
        standardDefeat.trigger.test(function (ec:EventCondition) {
            return true;
        });
    }

    private function readTerrain() {
        _map.initTerrain();

        for(a in 0...2) {
            if(a == 1 && !_map.twoLevel) {
                break;
            }

            for(c in 0..._map.width) {
                for(z in 0..._map.height) {
                    var tile = _map.getTile(z, c, a);
                    tile.terType = _reader.readUInt8();
                    tile.terView = _reader.readUInt8();
                    tile.riverType = _reader.readUInt8();
                    tile.riverDir = _reader.readUInt8();
                    tile.roadType = _reader.readUInt8();
                    tile.roadDir = _reader.readUInt8();
                    tile.extTileFlags = _reader.readUInt8();
                    tile.blocked = ((tile.terType == TerrainType.ROCK || tile.terType == TerrainType.BORDER ) ? true : false); //underground tiles are always blocked
                    tile.visitable = false;
                }
            }
        }
    }

    function readInt3():Int3 {
        var int3 = new Int3(_reader.readUInt8(), _reader.readUInt8(), _reader.readUInt8());
        return int3;

    }

}
