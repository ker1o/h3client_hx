package filesystem;

class BinaryReader {

    private var stream:MemoryStream;

    public function new(stream:MemoryStream) {
        this.stream = stream;
    }

    public function getStream():MemoryStream {
        return stream;
    }

    inline public function readUInt32():Int {
        return stream.data.getInt32();
    }

}
