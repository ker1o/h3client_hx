package client;

import client.maphandler.MapData;
import mod.VLC;
import artifacts.ArtHandler;
import creature.CreatureHandler;
import hero.HeroHandler;
import mapObjects.ObjectClassesHandler;
import mapObjects.ObjectsHandler;
import mod.ModHandler;
import skill.SkillHandler;
import spells.SpellHandler;
import text.GeneralTextHandler;
import town.TownHandler;

/// CGameInfo class
/// for allowing different functions for accessing game informations
class GameInfo {
    public var modh:ModHandler; //public?
    public var arth:ArtHandler;
    public var heroh:HeroHandler;
    public var creh:CreatureHandler;
    public var spellh:SpellHandler;
    public var skillh:SkillHandler;
    public var objh:ObjectsHandler;
    public var objtypeh:ObjectClassesHandler;
    public var generaltexth:GeneralTextHandler;
    public var mapData:MapData;
    public var townh:TownHandler;

    public function new() {
        generaltexth = null;
        mapData = null;
        townh = null;
    }

    public function setFromLib() {
        modh = VLC.instance.modh;
        generaltexth = VLC.instance.generaltexth;
        arth = VLC.instance.arth;
        creh = VLC.instance.creh;
        townh = VLC.instance.townh;
        heroh = VLC.instance.heroh;
        objh = VLC.instance.objh;
        spellh = VLC.instance.spellh;
        skillh = VLC.instance.skillh;
        objtypeh = VLC.instance.objtypeh;
    }
}
