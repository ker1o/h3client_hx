package filesystem;

import haxe.io.Bytes;
import filesystem.ArchiveEntry;
import filesystem.CompressedStream;
import filesystem.FileInputStream;
import filesystem.InputStream;
import sys.FileSystem;
import sys.io.File;

class FileCache {

    public static var instance(default, null) = new FileCache();

    private var bitmaps = new Map<String, ArchiveEntry>();
    private var fileBytes:Bytes;

    private function new() {
        fileBytes = loadLod("H3sprite.lod");
        parseLod(fileBytes);
    }

    public function getCahedFile(name:String):Bytes {
        var data = getInputStream(name).readAll();
        return data.data;
    }

    private function loadLod(url:String):Bytes {
        trace('load $url, exists: ${FileSystem.exists(url)}');
        if(!FileSystem.exists(url)) return null;
        return File.getBytes(url);
    }

    private function parseLod(bytes:Bytes) {
        var pos:Int = 8;
        var totalFiles = bytes.getInt32(pos);
        trace('Total files: $totalFiles');

        pos = 0x5C;
        for(i in 0...totalFiles) {
            var archiveEntry = new ArchiveEntry();
            var name = bytes.getString(pos, 16); pos += 16;
            var index = name.indexOf(String.fromCharCode(0));
            if(index > 0) {
                name = name.substring(0, index).toLowerCase();
            }
            archiveEntry.name = name;
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
