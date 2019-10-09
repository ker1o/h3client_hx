package gui;

@:enum abstract DefType(Int) from Int to Int
{
    public var SPELL:Int = 0x40;
    public var SPRITE:Int = 0x41;
    public var CREATURE:Int = 0x42;
    public var MAP:Int = 0x43;
    public var MAP_HERO:Int = 0x44;
    public var TERRAIN:Int = 0x45;
    public var CURSOR:Int = 0x46;
    public var INTERFACE:Int = 0x47;
    public var SPRITE_FRAME:Int = 0x48;
    public var BATTLE_HERO:Int = 0x49;
}
