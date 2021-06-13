package gui;

class FadeAnimation {
    private static var DEFAULT_DELTA:Float = 0.05;

    @:isVar public var fadingMode(get, null):FadingMode = FadingMode.NONE;
    @:isVar public var alpha(get, null):Float;

    var _delta:Float = 0;
    var _fading:Bool;

    public function new() {
    }

    public function get_fadingMode() {
        return fadingMode;
    }

    public function get_alpha() {
        return alpha;
    }

    public function init(mode:FadingMode, animDelta:Float) {
        if (_fading) {
            // in that case, immediately finish the previous fade
            // (alternatively, we could just return here to ignore the new fade request until this one finished (but we'd need to free the passed bitmap to avoid leaks))
            trace("Tried to init fading animation that is already running.");
        }
        if (animDelta <= 0.0) {
            trace('Fade anim: delta should be positive; $animDelta given.');
            animDelta = DEFAULT_DELTA;
        }

        _delta = animDelta;
        fadingMode = mode;
        alpha = fadingMode == FadingMode.OUT ? 1 : 0;
        _fading = true;
    }

    public function update() {
        if (!_fading)
            return;

        if (fadingMode == FadingMode.OUT) {
            alpha -= _delta;
        } else {
            alpha += _delta;
        }

        if (isFinished()) {
            _fading = false;
        }
    }

    inline function isFinished() {
        if (fadingMode == FadingMode.OUT) {
            return alpha <= 0.0;
        }
        return alpha >= 1.0;
    }

    public function isFading() {
        return _fading;
    }
}

@:enum abstract FadingMode(Int) from Int to Int {
    var NONE;
    var IN;
    var OUT;
}