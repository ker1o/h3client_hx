package mapping;

import constants.SpellId;
import lib.netpacks.ArtifactLocation;
import lib.artifacts.ArtifactInstance;
import constants.ArtifactPosition;
import constants.SecondarySkill;
import constants.PrimarySkill;
import lib.mapping.Rumor;
import lib.mapObjects.hero.GHeroInstance;
import lib.mod.VLC;
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
    private var map:MapBody;
    private var reader:BinaryReader;

    public function new(stream:Bytes) {
        _stream = stream;
        reader = new BinaryReader(stream);
    }

    public function loadMap():MapBody {
        map = new MapBody();
        mapHeader = map;
        init();
        return new MapBody();
    }

    public function loadMapHeader():MapHeader {
        mapHeader = new MapHeader();
        readHeader();
        return mapHeader;
    }

    private function init() {

        readHeader();

        map.allHeroes = [for (i in 0...map.allowedHeroes.length) new GHeroInstance()];

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
        standardVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[5];
        standardVictory.identifier = "standardVictory";
        standardVictory.description = ""; // TODO: display in quest window
        standardVictory.onFulfill = VLC.instance.generaltexth.allTexts[659];
	    standardVictory.trigger = new EventExpression(victoryCondition);

        var standardDefeat = new TriggeredEvent();
        standardDefeat.effect.type = EventEffectType.DEFEAT;
        standardDefeat.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[8];
        standardDefeat.identifier = "standardDefeat";
        standardDefeat.description = ""; // TODO: display in quest window
        standardDefeat.onFulfill = "TBD: standardDefeat.onFulfill"; //VLC.generaltexth.allTexts[7];
    	standardDefeat.trigger = new EventExpression(defeatCondition);

        // Specific victory conditions
        if(vicCondition == VictoryConditionType.WINSTANDARD) {
            // create normal condition
            mapHeader.triggeredEvents.push(standardVictory);
            mapHeader.victoryIconIndex = 11;
            mapHeader.victoryMessage = VLC.instance.generaltexth.victoryConditions[0];
        } else {
            var specialVictory = new TriggeredEvent();
            specialVictory.effect.type = EventEffectType.VICTORY;
            specialVictory.identifier = "specialVictory";
            specialVictory.description = ""; // TODO: display in quest window

            mapHeader.victoryIconIndex = vicCondition;
            mapHeader.victoryMessage = VLC.instance.generaltexth.victoryConditions[(vicCondition:Int) + 1];

            var allowNormalVictory:Bool = reader.readBool();
            var appliesToAI:Bool = reader.readBool();

            if (allowNormalVictory) {
                var playersOnMap:Int = Lambda.count(mapHeader.players, function(info:PlayerInfo) {
                    return info.canAnyonePlay();
                });

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

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[281];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[280];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.GATHERTROOP:
                    var cond = new EventCondition(WinLoseType.HAVE_CREATURES);
                    cond.objectType = reader.readUInt8();
                    if (mapHeader.version != MapFormat.ROE)
                        reader.skip(1);
                    cond.value = reader.readUInt32();

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[277];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[276];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.GATHERRESOURCE:
                    var cond = new EventCondition(WinLoseType.HAVE_RESOURCES);
                    cond.objectType = reader.readUInt8();
                    cond.value = reader.readUInt32();

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[279];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[278];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.BUILDCITY:
                    var oper = EventExpression.getOperatorAll();
                    var cond = new EventCondition(WinLoseType.HAVE_BUILDING);
                    cond.position = readInt3();
                    cond.objectType = BuildingID.VILLAGE_HALL + reader.readUInt8();
                    oper.expressions.push(cond);
                    cond.objectType = BuildingID.FORT + reader.readUInt8();
                    oper.expressions.push(cond);

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[283];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[282];
                    specialVictory.trigger = new EventExpression(oper);

                case VictoryConditionType.BUILDGRAIL:
                    var cond = new EventCondition(WinLoseType.HAVE_BUILDING);
                    cond.objectType = BuildingID.GRAIL;
                    cond.position = readInt3();
                    if(cond.position.z > 2)
                        cond.position = new Int3(-1,-1,-1);

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[285];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[284];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.BEATHERO:
                    var cond = new EventCondition(WinLoseType.DESTROY);
                    cond.objectType = Obj.HERO;
                    cond.position = readInt3();

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[253];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[252];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.CAPTURECITY:
                    var cond = new EventCondition(WinLoseType.CONTROL);
                    cond.objectType = Obj.TOWN;
                    cond.position = readInt3();

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[250];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[249];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.BEATMONSTER:
                    var cond = new EventCondition(WinLoseType.DESTROY);
                    cond.objectType = Obj.MONSTER;
                    cond.position = readInt3();

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[287];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[286];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.TAKEDWELLINGS:
                    var oper = EventExpression.getOperatorAll();
                    oper.expressions.push(new EventCondition(WinLoseType.CONTROL, 0, Obj.CREATURE_GENERATOR1));
                    oper.expressions.push(new EventCondition(WinLoseType.CONTROL, 0, Obj.CREATURE_GENERATOR4));

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[289];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[288];
                    specialVictory.trigger = new EventExpression(oper);

                case VictoryConditionType.TAKEMINES:
                    var cond = new EventCondition(WinLoseType.CONTROL);
                    cond.objectType = Obj.MINE;

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[291];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[290];
                    specialVictory.trigger = new EventExpression(cond);

                case VictoryConditionType.TRANSPORTITEM:
                    var cond = new EventCondition(WinLoseType.TRANSPORT);
                    cond.objectType = reader.readUInt8();
                    cond.position = readInt3();

                    specialVictory.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[293];
                    specialVictory.onFulfill = VLC.instance.generaltexth.allTexts[292];
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
                mapHeader.victoryMessage += VLC.instance.generaltexth.victoryConditions[0];
                mapHeader.triggeredEvents.push(standardVictory);
            }
            mapHeader.triggeredEvents.push(specialVictory);
        }

        // Read loss conditions
        var lossCond:LossConditionType = reader.readUInt8();
        if (lossCond == LossConditionType.LOSSSTANDARD) {
            mapHeader.defeatIconIndex = 3;
            mapHeader.defeatMessage = VLC.instance.generaltexth.lossCondtions[0];
        } else {
            var specialDefeat = new TriggeredEvent();
            specialDefeat.effect.type = EventEffectType.DEFEAT;
            specialDefeat.effect.toOtherMessage = VLC.instance.generaltexth.allTexts[5];
            specialDefeat.identifier = "specialDefeat";
            specialDefeat.description = ""; // TODO: display in quest window

            mapHeader.defeatIconIndex = lossCond;
            mapHeader.defeatMessage = VLC.instance.generaltexth.lossCondtions[lossCond + 1];

            switch(lossCond) {
                case LossConditionType.LOSSCASTLE:
                    var noneOf = EventExpression.getOperatorNone();
                    var cond = new EventCondition(WinLoseType.CONTROL);
                    cond.objectType = Obj.TOWN;
                    cond.position = readInt3();

                    noneOf.expressions.push(cond);
                    specialDefeat.onFulfill = VLC.instance.generaltexth.allTexts[251];
                    specialDefeat.trigger = new EventExpression(noneOf);

                case LossConditionType.LOSSHERO:
                    var noneOf = EventExpression.getOperatorNone();
                    var cond = new EventCondition(WinLoseType.CONTROL);
                    cond.objectType = Obj.HERO;
                    cond.position = readInt3();

                    noneOf.expressions.push(cond);
                    specialDefeat.onFulfill = VLC.instance.generaltexth.allTexts[253];
                    specialDefeat.trigger = new EventExpression(noneOf);

                case LossConditionType.TIMEEXPIRES:
                    var cond = new EventCondition(WinLoseType.DAYS_PASSED);
                    cond.value = reader.readUInt16();

                    specialDefeat.onFulfill = VLC.instance.generaltexth.allTexts[254];
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
        if(mapHeader.howManyTeams > 0) {
            // Teams
            for(i in 0...PlayerColor.PLAYER_LIMIT) {
                mapHeader.players[i].team = new TeamID(reader.readUInt8());
            }
        } else {
            // No alliances
            for(i in 0...PlayerColor.PLAYER_LIMIT) {
                if(mapHeader.players[i].canComputerPlay || mapHeader.players[i].canHumanPlay) {
                    mapHeader.players[i].team = new TeamID(mapHeader.howManyTeams++);
                }
            }
        }
    }

    private function readAllowedHeroes() {
        var allowedHeroesCount = VLC.instance.heroh.heroes.length;
        mapHeader.allowedHeroes = [for (i in 0...allowedHeroesCount) true];

        var bytes = mapHeader.version == MapFormat.ROE ? 16 : 20;

        readBoolBitmask(mapHeader.allowedHeroes, bytes, GameConstants.HEROES_QUANTITY, false);

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
        var globalArtifacts:Array<Artifact> = VLC.instance.arth.artifacts;

        map.allowedArtifact = [for(i in 0...globalArtifacts.length) true]; //handle new artifacts, make them allowed by default

        // Reading allowed artifacts:  17 or 18 bytes
        if(map.version != MapFormat.ROE) {
            var bytes = map.version == MapFormat.AB ? 17 : 18;

            readBoolBitmask(map.allowedArtifact, bytes, GameConstants.ARTIFACTS_QUANTITY);
        }

        // ban combo artifacts
        if (map.version == MapFormat.ROE || map.version == MapFormat.AB) {
            for(artifact in globalArtifacts) {
                // combo
                if (artifact.constituents != null) {
                    map.allowedArtifact[artifact.id] = false;
                }
            }
            if (map.version == MapFormat.ROE) {
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
        // Read allowed spells, including new ones
        map.allowedSpell = [for(i in 0...VLC.instance.spellh.objects.length) true];

        // Read allowed abilities
        map.allowedAbilities = [for(i in 0...GameConstants.SKILL_QUANTITY) true];

        if((map.version:Int) >= (MapFormat.SOD:Int)) {
            // Reading allowed spells (9 bytes)
            var spell_bytes:Int = 9;
            readBoolBitmask(map.allowedSpell, spell_bytes, GameConstants.SPELLS_QUANTITY);

            // Allowed hero's abilities (4 bytes)
            var abil_bytes:Int = 4;
            readBoolBitmask(map.allowedAbilities, abil_bytes, GameConstants.SKILL_QUANTITY);
        }

        //do not generate special abilities and spells
        for (spell in VLC.instance.spellh.objects) {
            if (spell == null) continue;

            if (spell.isSpecialSpell() || spell.isCreatureAbility()) {
                map.allowedSpell[spell.id] = false;
            }
        }
    }

    private function readRumors() {
        map.rumors = [];
        var rumNr:Int = reader.readUInt32();

        for(it in 0...rumNr) {
            var ourRumor = new Rumor();
            ourRumor.name = reader.readString();
            ourRumor.text = reader.readString();
            map.rumors.push(ourRumor);
        }
    }

    private function readPredefinedHeroes() {
        switch(map.version) {
            case MapFormat.WOG | MapFormat.SOD:
                // Disposed heroes
                for(z in 0...GameConstants.HEROES_QUANTITY) {
                    var custom:Int =  reader.readUInt8();
                    if(custom == 0) continue;

                    var hero = new GHeroInstance();
                    hero.ID = Obj.HERO;
                    hero.subID = z;

                    var hasExp:Bool = reader.readBool();
                    if(hasExp) {
                        hero.exp = reader.readUInt32();
                    } else {
                        hero.exp = 0;
                    }

                    var hasSecSkills:Bool = reader.readBool();
                    if(hasSecSkills) {
                        var howMany:Int = reader.readUInt32();
                        hero.secSkills = [];
                        for(yy in 0...howMany) {
                            var secondarySkill = {skill: (reader.readUInt8():SecondarySkill), level: reader.readUInt8()};
                            hero.secSkills[yy] = secondarySkill;
                        }
                    }

                    loadArtifactsOfHero(hero);

                    var hasCustomBio:Bool = reader.readBool();
                    if(hasCustomBio) {
                        hero.biography = reader.readString();
                    }

                    // 0xFF is default, 00 male, 01 female
                    hero.sex = reader.readUInt8();

                    var hasCustomSpells:Bool = reader.readBool();
                    if(hasCustomSpells) {
                        readSpells(hero.spells);
                    }

                    var hasCustomPrimSkills:Bool = reader.readBool();
                    if(hasCustomPrimSkills) {
                        for(xx in 0...GameConstants.PRIMARY_SKILLS) {
                            hero.pushPrimSkill((xx:PrimarySkill), reader.readUInt8());
                        }
                    }
                    map.predefinedHeroes.push(hero);
                }
            case MapFormat.ROE:
            default:
        }
    }

    private function readSpells(dest:Array<SpellId>) {
        readBitmask(dest, 9, GameConstants.SPELLS_QUANTITY, false);
    }

    private function loadArtifactsOfHero(hero:GHeroInstance) {
        var artSet:Bool = reader.readBool();

        // True if artifact set is not default (hero has some artifacts)
        if(artSet) {
            if(hero.artifactSet.artifactsWorn.iterator().hasNext() || hero.artifactSet.artifactsInBackpack.length > 0) {
                // logGlobal.warn("Hero %s at %s has set artifacts twice (in map properties and on adventure map instance). Using the latter set...", hero.name, hero.pos.toString());
                hero.artifactSet.artifactsInBackpack = [];
                for(artifactWon in hero.artifactSet.artifactsWorn.keys()) {
                    hero.artifactSet.eraseArtSlot(artifactWon);
                }
            }

            for(pom in 0...16) {
                loadArtifactToSlot(hero, pom);
            }

            // misc5 art //17
            if((map.version:Int) >= (MapFormat.SOD:Int))
            {
                // assert(!hero.getArt(ArtifactPosition.MACH4));
                if(!loadArtifactToSlot(hero, ArtifactPosition.MACH4))
                {
                    // catapult by default
                    // assert(!hero.getArt(ArtifactPosition.MACH4));
                    hero.putArtifact(ArtifactPosition.MACH4, ArtifactInstance.createArtifact(map, ArtifactId.CATAPULT));
                }
            }

            loadArtifactToSlot(hero, ArtifactPosition.SPELLBOOK);

            // 19 //???what is that? gap in file or what? - it's probably fifth slot..
            if((map.version:Int) > (MapFormat.ROE:Int)) {
                loadArtifactToSlot(hero, ArtifactPosition.MISC5);
            } else {
                reader.skip(1);
            }

            // bag artifacts //20
            // number of artifacts in hero's bag
            var amount:Int = reader.readUInt16();
            for(ss in 0...amount) {
                loadArtifactToSlot(hero, GameConstants.BACKPACK_START + hero.artifactSet.artifactsInBackpack.length);
            }
        }
    }

    private function loadArtifactToSlot(hero:GHeroInstance, slot:Int):Bool {
        var artmask:Int = map.version == MapFormat.ROE ? 0xff : 0xffff;
        var aid:Int = map.version == MapFormat.ROE ? reader.readUInt8() : reader.readUInt16();

        var isArt:Bool = aid != artmask;
        if(isArt) {
            var art:Artifact = (aid:ArtifactId).toArtifact();

            if (art == null) {
                // logGlobal.warn("Invalid artifact in hero's backpack, ignoring...");
                return false;
            }

            if(art.isBig() && slot >= GameConstants.BACKPACK_START) {
                // logGlobal.warn("A big artifact (war machine) in hero's backpack, ignoring...");
                return false;
            }
            if(aid == 0 && slot == ArtifactPosition.MISC5) {
                //TODO: check how H3 handles it . art 0 in slot 18 in AB map
                // logGlobal.warn("Spellbook to MISC5 slot? Putting it spellbook place. AB format peculiarity? (format %d)", static_cast<int>(map.version));
                slot = ArtifactPosition.SPELLBOOK;
            }

            // this is needed, because some H3M maps (last scenario of ROE map) contain invalid data like misplaced artifacts
            var artifact = ArtifactInstance.createArtifact(map, aid);
            var artifactPos:ArtifactPosition = slot;
            if (artifact.canBePutAt(new ArtifactLocation(hero, artifactPos))) {
                hero.putArtifact(artifactPos, artifact);
            } else {
                // logGlobal.debug("Artifact can't be put at the specified location."); //TODO add more debugging information
            }
        }

        return isArt;
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

    private function readBitmask<T>(dest:Array<T>, byteCount:Int, limit:Int, negate:Bool) {
        var temp:Array<Bool> = [for (i in 0...limit) true];
        readBoolBitmask(temp, byteCount, limit, negate);

        var min = Std.int(Math.min(temp.length, limit));
        for(i in 0...min) {
            if(temp[i]) {
                var value:T = cast i;
                dest.push(value);
            }
        }
    }

    function readBoolBitmask(dest:Array<Bool>, byteCount:Int, limit:Int, negate:Bool = true) {
        for(byte in 0...byteCount) {
            var mask:Int = reader.readUInt8();
            for(bit in 0...8) {
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
