package constants;

class BuildingID {
    //Quite useful as long as most of building mechanics hardcoded
    // NOTE: all building with completely configurable mechanics will be removed from list
    public static var DEFAULT:Int = -50;
    public static var NONE = -1;
    public static var MAGES_GUILD_1 = 0;
    public static var MAGES_GUILD_2 = 1;
    public static var MAGES_GUILD_3 = 2;
    public static var MAGES_GUILD_4 = 3;
    public static var MAGES_GUILD_5 = 4;
    public static var TAVERN = 5;
    public static var SHIPYARD = 6;
    public static var FORT = 7;
    public static var CITADEL = 8;
    public static var CASTLE = 9;
    public static var VILLAGE_HALL = 10;
    public static var TOWN_HALL = 11;
    public static var CITY_HALL = 12;
    public static var CAPITOL = 13;
    public static var MARKETPLACE = 14;
    public static var RESOURCE_SILO = 15;
    public static var BLACKSMITH = 16;
    public static var SPECIAL_1 = 17;
    public static var HORDE_1 = 18;
    public static var HORDE_1_UPGR = 19;
    public static var SHIP = 20;
    public static var SPECIAL_2 = 21;
    public static var SPECIAL_3 = 22;
    public static var SPECIAL_4 = 23;
    public static var HORDE_2 = 24;
    public static var HORDE_2_UPGR = 25;
    public static var GRAIL = 26;
    public static var EXTRA_TOWN_HALL = 27;
    public static var EXTRA_CITY_HALL = 28;
    public static var EXTRA_CAPITOL = 29;
    public static var DWELL_FIRST = 30;
    public static var DWELL_LVL_2 = 31;
    public static var DWELL_LVL_3 = 32;
    public static var DWELL_LVL_4 = 33;
    public static var DWELL_LVL_5 = 34;
    public static var DWELL_LVL_6 = 35;
    public static var DWELL_LAST= 36;
    public static var DWELL_UP_FIRST = 37;
    public static var DWELL_LVL_2_UP = 38;
    public static var DWELL_LVL_3_UP = 39;
    public static var DWELL_LVL_4_UP = 40;
    public static var DWELL_LVL_5_UP = 41;
    public static var DWELL_LVL_6_UP = 42;
    public static var DWELL_UP_LAST = 43;

    public static var DWELL_LVL_1 = DWELL_FIRST;
    public static var DWELL_LVL_7 = DWELL_LAST;
    public static var DWELL_LVL_1_UP = DWELL_UP_FIRST;
    public static var DWELL_LVL_7_UP = DWELL_UP_LAST;

    //Special buildings for towns.
    public static var LIGHTHOUSE  = SPECIAL_1;
    public static var STABLES     = SPECIAL_2; //Castle
    public static var BROTHERHOOD = SPECIAL_3;

    public static var MYSTIC_POND         = SPECIAL_1;
    public static var FOUNTAIN_OF_FORTUNE = SPECIAL_2; //Rampart
    public static var TREASURY            = SPECIAL_3;

    public static var ARTIFACT_MERCHANT = SPECIAL_1;
    public static var LOOKOUT_TOWER     = SPECIAL_2; //Tower
    public static var LIBRARY           = SPECIAL_3;
    public static var WALL_OF_KNOWLEDGE = SPECIAL_4;

    public static var STORMCLOUDS   = SPECIAL_2;
    public static var CASTLE_GATE   = SPECIAL_3; //Inferno
    public static var ORDER_OF_FIRE = SPECIAL_4;

    public static var COVER_OF_DARKNESS    = SPECIAL_1;
    public static var NECROMANCY_AMPLIFIER = SPECIAL_2; //Necropolis
    public static var SKELETON_TRANSFORMER = SPECIAL_3;

    //ARTIFACT_MERCHANT - same ID as in tower
    public static var MANA_VORTEX      = SPECIAL_2;
    public static var PORTAL_OF_SUMMON = SPECIAL_3; //Dungeon
    public static var BATTLE_ACADEMY   = SPECIAL_4;

    public static var ESCAPE_TUNNEL     = SPECIAL_1;
    public static var FREELANCERS_GUILD = SPECIAL_2; //Stronghold
    public static var BALLISTA_YARD     = SPECIAL_3;
    public static var HALL_OF_VALHALLA  = SPECIAL_4;

    public static var CAGE_OF_WARLORDS = SPECIAL_1;
    public static var GLYPHS_OF_FEAR   = SPECIAL_2; // Fortress
    public static var BLOOD_OBELISK    = SPECIAL_3;

    //ARTIFACT_MERCHANT - same ID as in tower
    public static var MAGIC_UNIVERSITY = SPECIAL_2; // Conflux

}
