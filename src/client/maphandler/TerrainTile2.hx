package client.maphandler;

class TerrainTile2 {
    public var objects:Array<TerrainTileObject>; //pointers to objects being on this tile with rects to be easier to blit this tile on screen

    public function new() {
        objects = [];
    }
}
