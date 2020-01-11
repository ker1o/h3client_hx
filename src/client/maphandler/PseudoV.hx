package client.maphandler;

class PseudoV<T> {
    private var _offset:Int;
    private var _inver:Array<T>;

    public function new() {
        _inver = [];
        _offset = 0;
    }

    public function resize(rest:Int, before:Int, after:Int, clsT:Class<T>) {
        // do we need "real" array resize?
        var length = before + rest + after;
        if (_inver.length < length) {
            for (i in _inver.length...length) {
                var inst = Type.createInstance(clsT, []);
                _inver.push(inst);
            }
        } else {
            for (i in length..._inver.length) {
                _inver.pop();
            }
        }
        _offset = before;
    }

    public function get(index:Int):T {
        return _inver[_offset + index];
    }

    public function set(index:Int, value:T):Void {
        _inver[_offset + index] = value;
    }

    public function size() {
        return _inver.length;
    }
}
