package gui.animation;

import filesystem.ArchiveEntry;
import filesystem.CompressedStream;
import filesystem.FileInputStream;
import filesystem.InputStream;
import haxe.io.UInt8Array;
import sys.FileSystem;
import sys.io.File;
import sys.io.FileInput;
import sys.io.FileSeek;

class FileCache {

    public static var instance(default, null) = new FileCache();

    private var bitmaps = new Map<String, ArchiveEntry>();
    private var fileInput:FileInput;

    private function new() {
        parseLod("H3sprite.lod");
    }

    public function getCahedFile(name:String):UInt8Array {
        var data = getInputStream(name).readAll();
        return data.data;
    }

    private function parseLod(path:String) {
        trace('parse $path, exists: ${FileSystem.exists(path)}');
        if(!FileSystem.exists(path)) return;

        fileInput = File.read(path);

        fileInput.seek(8, FileSeek.SeekBegin);

        var totalFiles = fileInput.readInt32();
        trace('Total files: $totalFiles');

        fileInput.seek(0x5C, FileSeek.SeekBegin);
        for(i in 0...totalFiles) {
            var archiveEntry = new ArchiveEntry();
            var name = fileInput.readString(16);
            var index = name.indexOf(String.fromCharCode(0));
            if(index > 0) {
                name = name.substring(0, index).toLowerCase();
            }
            archiveEntry.name = name;
            archiveEntry.offset = fileInput.readInt32();
            archiveEntry.fullSize = fileInput.readInt32();
            fileInput.seek(4, FileSeek.SeekCur);
            archiveEntry.compressedSize = fileInput.readInt32();

//            trace(archiveEntry);
            bitmaps.set(archiveEntry.name, archiveEntry);
        }
    }

    private function getInputStream(name:String):InputStream {
        var entry:ArchiveEntry = bitmaps.get(name);
        if(entry == null) throw '$name resource is not found';

        if (entry.compressedSize != 0) {
            var filestream = new FileInputStream(fileInput, entry.offset, entry.compressedSize);
            return new CompressedStream(filestream, false, entry.fullSize);
        } else {
            return new FileInputStream(fileInput, entry.offset, entry.fullSize);
        }
    }


}
