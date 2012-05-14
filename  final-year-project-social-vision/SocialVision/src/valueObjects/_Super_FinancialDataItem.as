/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FinancialDataItem.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_FinancialDataItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FinancialDataItemEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_name : String;
    private var _internal_symbol : String;
    private var _internal_market : String;
    private var _internal__date : Date;
    private var _internal_open : Number;
    private var _internal_high : Number;
    private var _internal_low : Number;
    private var _internal_close : Number;
    private var _internal_volume : Number;
    private var _internal_adj_close : Number;
    private var _internal_price_change_value : Number;
    private var _internal_price_change_percentage : Number;
    private var _internal_price_change_text : String;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FinancialDataItem()
    {
        _model = new _FinancialDataItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get symbol() : String
    {
        return _internal_symbol;
    }

    [Bindable(event="propertyChange")]
    public function get market() : String
    {
        return _internal_market;
    }

    [Bindable(event="propertyChange")]
    public function get _date() : Date
    {
        return _internal__date;
    }

    [Bindable(event="propertyChange")]
    public function get open() : Number
    {
        return _internal_open;
    }

    [Bindable(event="propertyChange")]
    public function get high() : Number
    {
        return _internal_high;
    }

    [Bindable(event="propertyChange")]
    public function get low() : Number
    {
        return _internal_low;
    }

    [Bindable(event="propertyChange")]
    public function get close() : Number
    {
        return _internal_close;
    }

    [Bindable(event="propertyChange")]
    public function get volume() : Number
    {
        return _internal_volume;
    }

    [Bindable(event="propertyChange")]
    public function get adj_close() : Number
    {
        return _internal_adj_close;
    }

    [Bindable(event="propertyChange")]
    public function get price_change_value() : Number
    {
        return _internal_price_change_value;
    }

    [Bindable(event="propertyChange")]
    public function get price_change_percentage() : Number
    {
        return _internal_price_change_percentage;
    }

    [Bindable(event="propertyChange")]
    public function get price_change_text() : String
    {
        return _internal_price_change_text;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set symbol(value:String) : void
    {
        var oldValue:String = _internal_symbol;
        if (oldValue !== value)
        {
            _internal_symbol = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "symbol", oldValue, _internal_symbol));
        }
    }

    public function set market(value:String) : void
    {
        var oldValue:String = _internal_market;
        if (oldValue !== value)
        {
            _internal_market = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "market", oldValue, _internal_market));
        }
    }

    public function set _date(value:Date) : void
    {
        var oldValue:Date = _internal__date;
        if (oldValue !== value)
        {
            _internal__date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_date", oldValue, _internal__date));
        }
    }

    public function set open(value:Number) : void
    {
        var oldValue:Number = _internal_open;
        if (isNaN(_internal_open) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_open = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "open", oldValue, _internal_open));
        }
    }

    public function set high(value:Number) : void
    {
        var oldValue:Number = _internal_high;
        if (isNaN(_internal_high) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_high = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "high", oldValue, _internal_high));
        }
    }

    public function set low(value:Number) : void
    {
        var oldValue:Number = _internal_low;
        if (isNaN(_internal_low) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_low = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "low", oldValue, _internal_low));
        }
    }

    public function set close(value:Number) : void
    {
        var oldValue:Number = _internal_close;
        if (isNaN(_internal_close) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_close = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "close", oldValue, _internal_close));
        }
    }

    public function set volume(value:Number) : void
    {
        var oldValue:Number = _internal_volume;
        if (isNaN(_internal_volume) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_volume = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "volume", oldValue, _internal_volume));
        }
    }

    public function set adj_close(value:Number) : void
    {
        var oldValue:Number = _internal_adj_close;
        if (isNaN(_internal_adj_close) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_adj_close = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "adj_close", oldValue, _internal_adj_close));
        }
    }

    public function set price_change_value(value:Number) : void
    {
        var oldValue:Number = _internal_price_change_value;
        if (isNaN(_internal_price_change_value) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_price_change_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price_change_value", oldValue, _internal_price_change_value));
        }
    }

    public function set price_change_percentage(value:Number) : void
    {
        var oldValue:Number = _internal_price_change_percentage;
        if (isNaN(_internal_price_change_percentage) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_price_change_percentage = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price_change_percentage", oldValue, _internal_price_change_percentage));
        }
    }

    public function set price_change_text(value:String) : void
    {
        var oldValue:String = _internal_price_change_text;
        if (oldValue !== value)
        {
            _internal_price_change_text = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price_change_text", oldValue, _internal_price_change_text));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */
    

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _FinancialDataItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FinancialDataItemEntityMetadata) : void
    {
        var oldValue : _FinancialDataItemEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }


}

}
