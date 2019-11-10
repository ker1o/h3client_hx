package constants;

@:enum abstract Alignment(Int) from Int to Int {
    public var GOOD:Int = 0;
    public var EVIL:Int = 1;
    public var NEUTRAL:Int = 2;
}
