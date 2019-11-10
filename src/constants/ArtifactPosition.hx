package constants;

@:enum abstract ArtifactPosition(Int) from Int to Int {
    public var FIRST_AVAILABLE:Int = -2;
    public var PRE_FIRST:Int = -1; //sometimes used as error, sometimes as first free in backpack
    public var HEAD:Int = 0;
    public var SHOULDERS:Int = 1;
    public var NECK:Int = 2;
    public var RIGHT_HAND:Int = 3;
    public var LEFT_HAND:Int = 4;
    public var TORSO:Int = 5; //5
    public var RIGHT_RING:Int = 6;
    public var LEFT_RING:Int = 7;
    public var FEET:Int = 8; //8
    public var MISC1:Int = 9;
    public var MISC2:Int = 10;
    public var MISC3:Int = 11;
    public var MISC4:Int = 12; //12
    public var MACH1:Int = 13;
    public var MACH2:Int = 14;
    public var MACH3:Int = 15;
    public var MACH4:Int = 16; //16
    public var SPELLBOOK:Int = 17;
    public var MISC5:Int = 18; //18
    public var AFTER_LAST:Int = 19;
    //cres
    public var CREATURE_SLOT = 0;
    public var COMMANDER1 = 0;
    public var COMMANDER2 = 1;
    public var COMMANDER3 = 2;
    public var COMMANDER4 = 3;
    public var COMMANDER5 = 4;
    public var COMMANDER6 = 5;
    public var COMMANDER_AFTER_LAST = 6;
}