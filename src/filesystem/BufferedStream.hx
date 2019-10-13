package filesystem;

import haxe.io.Bytes;

class BufferedStream extends InputStream {

    private var position:Int;
    private var buffer:Bytes;
    private var endOfFileReached:Bool;

    public function new() {
        super();
        position = 0;
        buffer = Bytes.alloc(0);
        endOfFileReached = false;
    }

    public function tell():Int {
        return position;
    }

    public function ensureSize(size:Int) {
        while (buffer.length < size && !endOfFileReached) {
            var initialSize = buffer.length;
            var currentStep = size < buffer.length ? size : buffer.length;
            currentStep = currentStep > 1024 ? currentStep : 1024;

            var stepBuffer = Bytes.alloc(currentStep);

            var mergedBytes = BytesUtil.resize(buffer, initialSize + currentStep);
            buffer = mergedBytes;
            var readSize = readMore(buffer, currentStep);

            if (readSize != currentStep) {
                endOfFileReached = true;
                buffer = BytesUtil.resize(buffer, initialSize + readSize);
                return;
            }
        }
    }

    public function readMore(data:Bytes, size:Int):Int {
        throw "[ERROR] BufferedStream.readMore() is abstract!";
    }

    override public function getSize():Int {
        var previousPos = tell();
        seek(2147483647);
        var size = tell();
        seek(previousPos);
        return size;
    }

    override public function seek(position:Int):Int {
        ensureSize(position);
        this.position = position < buffer.length ? position : buffer.length;
        return this.position;
    }

    override public function read(data:Bytes, size:Int):Int {
        ensureSize(position + size);

        var start = position;
        var toRead = Std.int(Math.min(size, buffer.length - position));
        data.blit(0, buffer, start, toRead);

//        trace(data.getData().bytes.toHex());
        position += toRead;
        return size;
    }

}
