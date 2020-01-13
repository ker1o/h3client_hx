package client.maphandler;

import gui.Animation;
import gui.geometries.Rect;
import utils.Int3;

class MapDrawingInfo {
    public var scaled:Bool;
    public var topTile:Int3; // top-left tile in viewport [in tiles]
    public var visibilityMap:Array<Array<Array<Bool>>>;
    public var drawBounds:Rect; // map rect drawing bounds on screen
    public var icons:Animation; // holds overlay icons for world view mode
    public var scale:Float; // map scale for world view mode (only if scaled == true)

    public var otherheroAnim:Bool;
    public var anim:Int;
    public var heroAnim:Int;

    public var movement:Int3; // used for smooth map movement

    public var puzzleMode:Bool;
    public var grailPos:Int3; // location of grail for puzzle mode [in tiles]

    public var additionalIcons:Array<Dynamic>;

    public var showAllTerrain:Bool; //for expert viewEarth

    public function new(topTile:Int3, visibilityMap:Array<Array<Array<Bool>>>, drawBounds:Rect, icons:Animation = null) {
        scaled = false;
        this.topTile = topTile;
        this.visibilityMap = visibilityMap;
        this.drawBounds = drawBounds;
        this.icons = icons;
        scale = 1.0;
        otherheroAnim = false;
        anim = 0;
        heroAnim = 0;
        movement = new Int3();
        puzzleMode = false;
        grailPos = new Int3();
        additionalIcons = null;
        showAllTerrain = false;
    }
}
