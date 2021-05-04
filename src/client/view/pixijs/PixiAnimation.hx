package client.view.pixijs;

import pixi.extras.AnimatedSprite;

abstract PixiAnimation(Map<Int, AnimatedSprite>) {
    public inline function new() {
        this = new Map<Int, AnimatedSprite>();
    }

    @:arrayAccess
    public inline function get(key:Int) {
        return this.get(key);
    }
    @:arrayAccess
    public inline function set(k:Int, v:AnimatedSprite):AnimatedSprite {
        this.set(k, v);
        return v;
    }

    public inline function size(groupId:Int = 0):Int {
        return this.exists(groupId) ? this.get(groupId).textures.length : 0;
    }

    public function getTexture(index:Int, group:Int = 0) {
        return this.get(group).textures[index];
    }
}
