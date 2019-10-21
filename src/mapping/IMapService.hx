package mapping;

import haxe.io.Bytes;

interface IMapService {
//    function loadMap(bytes:Bytes, size:Int, name:String):Map;
//    function loadMapHeader(bytes:Bytes, size:Int, name:String):MapHeader;

    function loadMapByName(name:String):Map;
    function loadMapHeaderByName(name:String):MapHeader;
}
