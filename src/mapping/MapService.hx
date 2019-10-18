package mapping;

import filesystem.CompressedStream;
import filesystem.BinaryReader;
import filesystem.MemoryStream;
import haxe.io.Bytes;

class MapService implements IMapService {
    public function new() {
    }

    public function loadMap(buffer:Bytes, size:Int, name:String):Map {
        var stream = getStreamFromMem(buffer, size);
        var mapLoader = getMapLoader(stream);

    }

    public function loadMapHeader():MapHeader {

    }

    private function getStreamFromMem(bytes:Bytes, size:Int):MemoryStream {
        return new MemoryStream(bytes, size);
    }

    private function getMapLoader(stream:MemoryStream):IMapLoader {
        var reader = new BinaryReader(stream);
        var header = reader.readUInt32();
        reader.getStream().seek(0);

        switch(header) {
            case 0x06054b50 | 0x04034b50 | 0x02014b50:
                return MapLoaderJson(stream);
            default:
                switch(header & 0xffffff) {
                    case 0x00088B1F:
                        var compressed = new CompressedStream(stream, true);
                        return MapLoaderH3M(compressed);
                    case MapFormat.WOG | MapFormat.AB | MapFormat.ROE | MapFormat.SOD:
                        return MapLoaderH3M(stream);
                    default:
                        throw '$header is not supported map format';
                }

        }

    }
}
