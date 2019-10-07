package filesystem;

import sys.io.FileSeek;
import haxe.io.UInt8Array;
import sys.io.FileInput;

class FileInputStream extends InputStream {
    private var dataStart:Int;
    private var dataSize:Int;
    private var fileStream:FileInput;

    public function new(fileStream:FileInput, start:Int, size:Int) {
        super();
        this.fileStream = fileStream;
        this.dataStart = start;
        this.dataSize = size;

        fileStream.seek(start, FileSeek.SeekBegin);
    }

    public function tell():Int {
        return fileStream.tell() - dataStart;
    }

    override public function getSize():Int {
        return dataSize;
    }

    override public function seek(position:Int):Int {
        fileStream.seek(dataStart + Std.int(Math.min(position, dataSize)), FileSeek.SeekBegin);
        return tell();
    }

    override public function read(data:UInt8Array, size:Int):Int {
        var origin = tell();
        var toRead = Std.int(Math.min(dataSize - origin, size));
        var bytes = fileStream.read(toRead);
        data.getData().bytes.blit(0, bytes, 0, bytes.length);
        return toRead;
    }

}
