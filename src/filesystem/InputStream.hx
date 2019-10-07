package filesystem;

import haxe.io.UInt8Array;

class InputStream {
    public function new() {
    }

    public function readAll():{data:UInt8Array, size:Int} {
        var size = getSize();
        var data = new UInt8Array(size);

        seek(0);
        var readSize = read(data, size);
        if(readSize != size) {
            throw "[Error] InputStream.readAll(): readSize != getSize()";
        }

        return {data:data, size:getSize()};
    }

    public function getSize():Int {
        throw "InputStream.getSize() is abstract";
    }

    public function seek(position:Int):Int {
        throw "InputStream.seek() is abstract";
    }

    public function read(data:UInt8Array, size:Int):Int {
        throw "InputStream.read() is abstract";
    }
}
