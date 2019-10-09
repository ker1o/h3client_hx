package ;

import gui.DefFile;
import filesystem.CompressedStream;
import filesystem.InputStream;
import filesystem.FileInputStream;
import sys.io.FileInput;
import sys.io.FileSeek;
import sys.io.File;
import sys.FileSystem;
import haxe.io.Bytes;

using StringTools;

class Game {

    var bitmaps = new Map<String, ArchiveEntry>();

    var fileInput:FileInput;

    public function new() {
        parseLod("H3sprite.lod");
        var fileName = "edg.def";
        trace('Reading $fileName');
        var data = getInputStream(fileName).readAll();
        trace('File $fileName was read successfully!');
        saveFile(fileName, data.data.getData().bytes);

        var defFile = new DefFile(data.data.getData().bytes);
    }

    private function parseLod(path:String) {
        trace('parse $path exists: ${FileSystem.exists(path)}');
        if(!FileSystem.exists(path)) return;

        fileInput = File.read(path);

        fileInput.seek(8, FileSeek.SeekBegin);

        var totalFiles = fileInput.readInt32();
        trace(totalFiles);

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

    function saveFile(path:String, bytes:Bytes) {
        File.saveBytes(path, bytes);
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
