package filesystem;

import haxe.io.Bytes;
import haxe.io.UInt8Array;

class BufferedStream extends InputStream {

    private var position:Int;
    private var buffer:UInt8Array;
    private var endOfFileReached:Bool;

    public function new() {
        super();
        position = 0;
        buffer = new UInt8Array(0);
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

            var stepBuffer = new UInt8Array(currentStep);

            var mergedBytes = BytesUtil.resize(buffer.getData().bytes, initialSize + currentStep);
            buffer = UInt8Array.fromBytes(mergedBytes);
            var readSize = readMore(buffer, currentStep);

            if (readSize != currentStep) {
                endOfFileReached = true;
                buffer = UInt8Array.fromBytes(BytesUtil.resize(buffer.getData().bytes, initialSize + readSize));
                return;
            }
        }
    }



    public function readMore(data:UInt8Array, size:Int):Int {
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

    override public function read(data:UInt8Array, size:Int):Int {
        ensureSize(position + size);

        var start = position;
        var toRead = Std.int(Math.min(size, buffer.length - position));
        data.getData().bytes.blit(0, buffer.getData().bytes, start, toRead);

        trace(start, size);
        trace(data.getData().bytes.toHex());
        position += toRead;
        return size;
    }

}
