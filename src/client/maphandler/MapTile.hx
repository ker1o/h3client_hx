package client.maphandler;

class MapTile {
    public var objects:Array<MapTileObject>; //pointers to objects being on this tile with rects to be easier to blit this tile on screen

    public function new() {
        objects = [];
    }
}
