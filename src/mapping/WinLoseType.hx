package mapping;

@:enum abstract WinLoseType(Int) from Int to Int {
    //internal use, deprecated
    public var HAVE_ARTIFACT:Int = 0;     // type - required artifact
    public var HAVE_CREATURES:Int = 1;    // type - creatures to collect, value - amount to collect
    public var HAVE_RESOURCES:Int = 2;    // type - resource ID, value - amount to collect
    public var HAVE_BUILDING:Int = 3;     // position - town, optional, type - building to build
    public var CONTROL:Int = 4;           // position - position of object, optional, type - type of object
    public var DESTROY:Int = 5;           // position - position of object, optional, type - type of object
    public var TRANSPORT:Int = 6;         // position - where artifact should be transported, type - type of artifact

    //map format version pre 1.0
    public var DAYS_PASSED:Int = 7;       // value - number of days from start of the game
    public var IS_HUMAN:Int = 8;          // value - 0 = player is AI, 1 = player is human
    public var DAYS_WITHOUT_TOWN:Int = 9; // value - how long player can live without town, 0=instakill
    public var STANDARD_WIN:Int = 10;      // normal defeat all enemies condition
    public var CONST_VALUE:Int = 11;        // condition that always evaluates to "value" (0 = false, 1 = true)

    //map format version 1.0+
    public var HAVE_0:Int = 12;
    public var HAVE_BUILDING_0:Int = 13;
    public var DESTROY_0:Int = 14;
}
