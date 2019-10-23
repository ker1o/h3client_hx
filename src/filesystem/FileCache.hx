package filesystem;

#if js
import js.Promise;
import js.JsLoader;
#end
import filesystem.FileInputStream;
import haxe.io.Bytes;
import filesystem.ArchiveEntry;
import filesystem.CompressedStream;
import filesystem.FileInputStream;
import filesystem.InputStream;

class FileCache {

    public static var instance(default, null) = new FileCache();

    private var bitmaps = new Map<String, ArchiveEntry>();
    private var fileBytes:Bytes;
    private var mapBytes:Bytes;

    private function new() {
    }

#if js
    public function initGraphicsAsync():Promise<Array<String>> {
        return new Promise(function (resolve, reject) {
            loadBinaryByUrl("H3sprite.lod").then(function(bytes:Bytes) {
                fileBytes = bytes;
                parseLod(fileBytes);
                resolve([for (key in bitmaps.keys()) key]);
            });
        });
    }

    public function initMapAsync(name:String):Promise<Bool> {
        return new Promise(function (resolve, reject) {
            loadBinaryByUrl(name).then(function(bytes:Bytes) {
                mapBytes = bytes;
                resolve(true);
            });
        });
    }

#else
    public function initGraphics() {
        // use it for local checks in neko
        fileBytes = loadBinary("H3sprite.lod");
        parseLod(fileBytes);
    }

    public function initMap(name:String) {
        mapBytes = loadBinary(name);
    }
#end

    public function getMap(name:String):Bytes {
        return mapBytes;
    }

    public function getCahedFile(name:String):Bytes {
        var data = getInputStream(name).readAll();
        return data.data;
    }

#if js
    private function loadBinaryByUrl(url:String):Promise<Bytes> {
        return new Promise(function (resolve, reject) {
            var jsLoader = new JsLoader(url);
            jsLoader.load().then(function(bytes:Bytes) {
                resolve(bytes);
            });
        });
    }
#else
    private function loadBinary(url:String):Bytes {
        trace('load $url, exists: ${sys.FileSystem.exists(url)}');
        if(!sys.FileSystem.exists(url)) return null;
        return sys.io.File.getBytes(url);
    }
#end

    private function parseLod(bytes:Bytes) {
        var pos:Int = 8;
        trace('bytes length: ${bytes.length}, ${bytes == null}');
        var totalFiles = bytes.getInt32(pos);
        trace('Total files: $totalFiles');

        pos = 0x5C;
        for(i in 0...totalFiles) {
            var archiveEntry = new ArchiveEntry();
            var name = bytes.getString(pos, 16); pos += 16;
            var index = name.indexOf(String.fromCharCode(0));
            if(index > 0) {
                name = name.substring(0, index);
            }
            archiveEntry.name = name.toLowerCase();
            archiveEntry.offset = bytes.getInt32(pos); pos += 4;
            archiveEntry.fullSize = bytes.getInt32(pos); pos += 4;
            pos += 4;
            archiveEntry.compressedSize = bytes.getInt32(pos); pos += 4;

//            trace(archiveEntry);
            bitmaps.set(archiveEntry.name, archiveEntry);
        }
    }

    private function getInputStream(name:String):InputStream {
        var entry:ArchiveEntry = bitmaps.get(name);
        if(entry == null) throw '$name resource is not found';

        if (entry.compressedSize != 0) {
            var filestream = new FileInputStream(fileBytes, entry.offset, entry.compressedSize);
            return new CompressedStream(filestream, false, entry.fullSize);
        } else {
            return new FileInputStream(fileBytes, entry.offset, entry.fullSize);
        }
    }


}
