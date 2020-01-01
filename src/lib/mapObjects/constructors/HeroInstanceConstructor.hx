package lib.mapObjects.constructors;

import constants.id.HeroTypeId;
import lib.hero.HeroClass;
import lib.mapObjects.hero.GHeroInstance;
import utils.logicalexpression.LogicalExpression;

class HeroInstanceConstructor extends DefaultObjectTypeHandler<GHeroInstance> {
    public var heroClass:HeroClass;
    public var filters:Map<String, LogicalExpression<HeroTypeId>>;

    public function new() {
        super(GHeroInstance);
    }

    override public function create(objTempl:ObjectTemplate):GObjectInstance {
        var obj:GHeroInstance = createTyped(objTempl);
        obj.type = null;
        return obj;
    }
}
