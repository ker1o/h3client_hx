package utils.logicalexpression;

import mapping.EventCondition;

class EventExpression extends LogicalExpression<EventCondition>{
    public function new(data:Variant<EventCondition>) {
        super(data);
    }

    public static function getOperatorAll():LogicalElement<EventCondition> {
        return new LogicalElement<EventCondition>(LogicalElementType.ALL);
    }

    public static function getOperatorNone<T>():LogicalElement<EventCondition> {
        return new LogicalElement<EventCondition>(LogicalElementType.NONE);
    }

    public static function getOperatorSome<T>():LogicalElement<EventCondition> {
        return new LogicalElement<EventCondition>(LogicalElementType.SOME);
    }
}
