/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FinancialHourlyDataItem.as.
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
public class _Super_FinancialHourlyDataItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FinancialHourlyDataItemEntityMetadata;
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
    private var _internal_idcurrent_table : int;
    private var _internal_name : String;
    private var _internal_date_time : Date;
    private var _internal_symbol : String;
    private var _internal_market : String;
    private var _internal_price : Number;
    private var _internal_volume : Number;
    private var _internal_avg_daily_volume : Number;
    private var _internal_market_cap : String;
    private var _internal_book_value : Number;
    private var _internal_ebitda : String;
    private var _internal_dividend_per_share : Number;
    private var _internal_dividend_yield : Number;
    private var _internal_earnings_per_share : Number;
    private var _internal_year_week_high : Number;
    private var _internal_year_week_low : Number;
    private var _internal_fifty_day_moving_avg : Number;
    private var _internal_two_hundred_day_moving_avg : Number;
    private var _internal_price_earnings_ratio : Number;
    private var _internal_price_earnings_growth_ratio : Number;
    private var _internal_price_sales_ratio : Number;
    private var _internal_price_book_ratio : Number;
    private var _internal_short_ratio : Number;
    private var _internal_previous_time_date : Date;
    private var _internal_previous_price : Number;
    private var _internal_price_change_value : Number;
    private var _internal_price_change_percentage : Number;
    private var _internal_price_change_text : String;
    private var _internal_hourly_previous_time_date : Date;
    private var _internal_hourly_previous_price : Number;
    private var _internal_hourly_price_change_value : Number;
    private var _internal_hourly_price_change_percentage : Number;
    private var _internal_hourly_price_change_text : String;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FinancialHourlyDataItem()
    {
        _model = new _FinancialHourlyDataItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get idcurrent_table() : int
    {
        return _internal_idcurrent_table;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get date_time() : Date
    {
        return _internal_date_time;
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
    public function get price() : Number
    {
        return _internal_price;
    }

    [Bindable(event="propertyChange")]
    public function get volume() : Number
    {
        return _internal_volume;
    }

    [Bindable(event="propertyChange")]
    public function get avg_daily_volume() : Number
    {
        return _internal_avg_daily_volume;
    }

    [Bindable(event="propertyChange")]
    public function get market_cap() : String
    {
        return _internal_market_cap;
    }

    [Bindable(event="propertyChange")]
    public function get book_value() : Number
    {
        return _internal_book_value;
    }

    [Bindable(event="propertyChange")]
    public function get ebitda() : String
    {
        return _internal_ebitda;
    }

    [Bindable(event="propertyChange")]
    public function get dividend_per_share() : Number
    {
        return _internal_dividend_per_share;
    }

    [Bindable(event="propertyChange")]
    public function get dividend_yield() : Number
    {
        return _internal_dividend_yield;
    }

    [Bindable(event="propertyChange")]
    public function get earnings_per_share() : Number
    {
        return _internal_earnings_per_share;
    }

    [Bindable(event="propertyChange")]
    public function get year_week_high() : Number
    {
        return _internal_year_week_high;
    }

    [Bindable(event="propertyChange")]
    public function get year_week_low() : Number
    {
        return _internal_year_week_low;
    }

    [Bindable(event="propertyChange")]
    public function get fifty_day_moving_avg() : Number
    {
        return _internal_fifty_day_moving_avg;
    }

    [Bindable(event="propertyChange")]
    public function get two_hundred_day_moving_avg() : Number
    {
        return _internal_two_hundred_day_moving_avg;
    }

    [Bindable(event="propertyChange")]
    public function get price_earnings_ratio() : Number
    {
        return _internal_price_earnings_ratio;
    }

    [Bindable(event="propertyChange")]
    public function get price_earnings_growth_ratio() : Number
    {
        return _internal_price_earnings_growth_ratio;
    }

    [Bindable(event="propertyChange")]
    public function get price_sales_ratio() : Number
    {
        return _internal_price_sales_ratio;
    }

    [Bindable(event="propertyChange")]
    public function get price_book_ratio() : Number
    {
        return _internal_price_book_ratio;
    }

    [Bindable(event="propertyChange")]
    public function get short_ratio() : Number
    {
        return _internal_short_ratio;
    }

    [Bindable(event="propertyChange")]
    public function get previous_time_date() : Date
    {
        return _internal_previous_time_date;
    }

    [Bindable(event="propertyChange")]
    public function get previous_price() : Number
    {
        return _internal_previous_price;
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

    [Bindable(event="propertyChange")]
    public function get hourly_previous_time_date() : Date
    {
        return _internal_hourly_previous_time_date;
    }

    [Bindable(event="propertyChange")]
    public function get hourly_previous_price() : Number
    {
        return _internal_hourly_previous_price;
    }

    [Bindable(event="propertyChange")]
    public function get hourly_price_change_value() : Number
    {
        return _internal_hourly_price_change_value;
    }

    [Bindable(event="propertyChange")]
    public function get hourly_price_change_percentage() : Number
    {
        return _internal_hourly_price_change_percentage;
    }

    [Bindable(event="propertyChange")]
    public function get hourly_price_change_text() : String
    {
        return _internal_hourly_price_change_text;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set idcurrent_table(value:int) : void
    {
        var oldValue:int = _internal_idcurrent_table;
        if (oldValue !== value)
        {
            _internal_idcurrent_table = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idcurrent_table", oldValue, _internal_idcurrent_table));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set date_time(value:Date) : void
    {
        var oldValue:Date = _internal_date_time;
        if (oldValue !== value)
        {
            _internal_date_time = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "date_time", oldValue, _internal_date_time));
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

    public function set price(value:Number) : void
    {
        var oldValue:Number = _internal_price;
        if (isNaN(_internal_price) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_price = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price", oldValue, _internal_price));
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

    public function set avg_daily_volume(value:Number) : void
    {
        var oldValue:Number = _internal_avg_daily_volume;
        if (isNaN(_internal_avg_daily_volume) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_avg_daily_volume = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "avg_daily_volume", oldValue, _internal_avg_daily_volume));
        }
    }

    public function set market_cap(value:String) : void
    {
        var oldValue:String = _internal_market_cap;
        if (oldValue !== value)
        {
            _internal_market_cap = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "market_cap", oldValue, _internal_market_cap));
        }
    }

    public function set book_value(value:Number) : void
    {
        var oldValue:Number = _internal_book_value;
        if (isNaN(_internal_book_value) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_book_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "book_value", oldValue, _internal_book_value));
        }
    }

    public function set ebitda(value:String) : void
    {
        var oldValue:String = _internal_ebitda;
        if (oldValue !== value)
        {
            _internal_ebitda = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ebitda", oldValue, _internal_ebitda));
        }
    }

    public function set dividend_per_share(value:Number) : void
    {
        var oldValue:Number = _internal_dividend_per_share;
        if (isNaN(_internal_dividend_per_share) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_dividend_per_share = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dividend_per_share", oldValue, _internal_dividend_per_share));
        }
    }

    public function set dividend_yield(value:Number) : void
    {
        var oldValue:Number = _internal_dividend_yield;
        if (isNaN(_internal_dividend_yield) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_dividend_yield = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dividend_yield", oldValue, _internal_dividend_yield));
        }
    }

    public function set earnings_per_share(value:Number) : void
    {
        var oldValue:Number = _internal_earnings_per_share;
        if (isNaN(_internal_earnings_per_share) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_earnings_per_share = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "earnings_per_share", oldValue, _internal_earnings_per_share));
        }
    }

    public function set year_week_high(value:Number) : void
    {
        var oldValue:Number = _internal_year_week_high;
        if (isNaN(_internal_year_week_high) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_year_week_high = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "year_week_high", oldValue, _internal_year_week_high));
        }
    }

    public function set year_week_low(value:Number) : void
    {
        var oldValue:Number = _internal_year_week_low;
        if (isNaN(_internal_year_week_low) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_year_week_low = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "year_week_low", oldValue, _internal_year_week_low));
        }
    }

    public function set fifty_day_moving_avg(value:Number) : void
    {
        var oldValue:Number = _internal_fifty_day_moving_avg;
        if (isNaN(_internal_fifty_day_moving_avg) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_fifty_day_moving_avg = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fifty_day_moving_avg", oldValue, _internal_fifty_day_moving_avg));
        }
    }

    public function set two_hundred_day_moving_avg(value:Number) : void
    {
        var oldValue:Number = _internal_two_hundred_day_moving_avg;
        if (isNaN(_internal_two_hundred_day_moving_avg) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_two_hundred_day_moving_avg = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "two_hundred_day_moving_avg", oldValue, _internal_two_hundred_day_moving_avg));
        }
    }

    public function set price_earnings_ratio(value:Number) : void
    {
        var oldValue:Number = _internal_price_earnings_ratio;
        if (isNaN(_internal_price_earnings_ratio) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_price_earnings_ratio = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price_earnings_ratio", oldValue, _internal_price_earnings_ratio));
        }
    }

    public function set price_earnings_growth_ratio(value:Number) : void
    {
        var oldValue:Number = _internal_price_earnings_growth_ratio;
        if (isNaN(_internal_price_earnings_growth_ratio) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_price_earnings_growth_ratio = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price_earnings_growth_ratio", oldValue, _internal_price_earnings_growth_ratio));
        }
    }

    public function set price_sales_ratio(value:Number) : void
    {
        var oldValue:Number = _internal_price_sales_ratio;
        if (isNaN(_internal_price_sales_ratio) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_price_sales_ratio = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price_sales_ratio", oldValue, _internal_price_sales_ratio));
        }
    }

    public function set price_book_ratio(value:Number) : void
    {
        var oldValue:Number = _internal_price_book_ratio;
        if (isNaN(_internal_price_book_ratio) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_price_book_ratio = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "price_book_ratio", oldValue, _internal_price_book_ratio));
        }
    }

    public function set short_ratio(value:Number) : void
    {
        var oldValue:Number = _internal_short_ratio;
        if (isNaN(_internal_short_ratio) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_short_ratio = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "short_ratio", oldValue, _internal_short_ratio));
        }
    }

    public function set previous_time_date(value:Date) : void
    {
        var oldValue:Date = _internal_previous_time_date;
        if (oldValue !== value)
        {
            _internal_previous_time_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "previous_time_date", oldValue, _internal_previous_time_date));
        }
    }

    public function set previous_price(value:Number) : void
    {
        var oldValue:Number = _internal_previous_price;
        if (isNaN(_internal_previous_price) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_previous_price = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "previous_price", oldValue, _internal_previous_price));
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

    public function set hourly_previous_time_date(value:Date) : void
    {
        var oldValue:Date = _internal_hourly_previous_time_date;
        if (oldValue !== value)
        {
            _internal_hourly_previous_time_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hourly_previous_time_date", oldValue, _internal_hourly_previous_time_date));
        }
    }

    public function set hourly_previous_price(value:Number) : void
    {
        var oldValue:Number = _internal_hourly_previous_price;
        if (isNaN(_internal_hourly_previous_price) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_hourly_previous_price = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hourly_previous_price", oldValue, _internal_hourly_previous_price));
        }
    }

    public function set hourly_price_change_value(value:Number) : void
    {
        var oldValue:Number = _internal_hourly_price_change_value;
        if (isNaN(_internal_hourly_price_change_value) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_hourly_price_change_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hourly_price_change_value", oldValue, _internal_hourly_price_change_value));
        }
    }

    public function set hourly_price_change_percentage(value:Number) : void
    {
        var oldValue:Number = _internal_hourly_price_change_percentage;
        if (isNaN(_internal_hourly_price_change_percentage) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_hourly_price_change_percentage = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hourly_price_change_percentage", oldValue, _internal_hourly_price_change_percentage));
        }
    }

    public function set hourly_price_change_text(value:String) : void
    {
        var oldValue:String = _internal_hourly_price_change_text;
        if (oldValue !== value)
        {
            _internal_hourly_price_change_text = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hourly_price_change_text", oldValue, _internal_hourly_price_change_text));
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
    public function get _model() : _FinancialHourlyDataItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FinancialHourlyDataItemEntityMetadata) : void
    {
        var oldValue : _FinancialHourlyDataItemEntityMetadata = model_internal::_dminternal_model;
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
