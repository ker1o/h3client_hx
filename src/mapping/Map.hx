package mapping;

class Map extends MapHeader {

    private var _terrain:Array<Array<Array<TerrainTile>>>;
    private var _guardingCreaturePositions:Array<Array<Array<Int>>>;

    public function new() {
        super();
    }

    public function initTerrain() {
        var level = twoLevel ? 2 : 1;
        _terrain = [];
        _guardingCreaturePositions = [];
        for(i in 0...width) {
            _terrain[i] = [];
            _guardingCreaturePositions[i] = []; // height
            for(j in 0...height) {
                _terrain[i][j] = new Array<TerrainTile>(); //level
                _guardingCreaturePositions[i][j] = new Array<Int>();
                for(l in 0...level) {
                    _terrain[i][j][l] = new TerrainTile();
                    _guardingCreaturePositions[i][j][l] = 0;
                }
            }
        }
    }

    public function getTile(x:Int, y:Int, z:Int):TerrainTile {
        return _terrain[x][y][z];
    }

}
