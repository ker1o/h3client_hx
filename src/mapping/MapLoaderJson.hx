package mapping;

import filesystem.MemoryStream;

class MapLoaderJson implements IMapLoader {

    private var _stream:MemoryStream;

    public function new(stream:MemoryStream) {
        _stream = stream;
    }
}
