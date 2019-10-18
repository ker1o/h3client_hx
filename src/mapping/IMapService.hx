package mapping;

import haxe.io.Bytes;

interface IMapService {
    function loadMap(bytes:Bytes, size:Int, name:String):Map;
    function loadMapHeader():MapHeader;
}
