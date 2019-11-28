package utils;

import lib.herobonus.Bonus;

using Reflect;

class JsonUtils {
    public static function parseBonus(obj:Dynamic):Bonus {
        //ToDo
        return new Bonus();
    }

    public static function merge(dest:Dynamic, destField:String, source:Dynamic, noOverride:Bool = false):Void {
        if(!dest.hasField(destField) || dest.field(destField) == null) {
            dest.setField(destField, source);
            return;
        }

        if (source == null) {
            dest.deleteField(destField);
            trace("Really???");
        } else if (Std.is(source, Array) || !source.isObject()) {
            // there must be a simple value ar an array
            dest.setField(destField, source);
        } else {
            // there must be an object
//        if(!noOverride && source.flags, "override")) {
//            dest.setField(destField, source);
//        } else {
            //recursively merge all entries from struct
            for(nodeField in source.fields()) {
                merge(dest.field(destField), nodeField, source.field(nodeField), noOverride);
            }
//        }
        }
    }
}
