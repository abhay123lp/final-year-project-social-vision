
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _FinancialHourlyDataItemEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("idcurrent_table", "name", "date_time", "symbol", "market", "price", "volume", "avg_daily_volume", "market_cap", "book_value", "ebitda", "dividend_per_share", "dividend_yield", "earnings_per_share", "year_week_high", "year_week_low", "fifty_day_moving_avg", "two_hundred_day_moving_avg", "price_earnings_ratio", "price_earnings_growth_ratio", "price_sales_ratio", "price_book_ratio", "short_ratio", "previous_time_date", "previous_price", "price_change_value", "price_change_percentage", "price_change_text", "hourly_previous_time_date", "hourly_previous_price", "hourly_price_change_value", "hourly_price_change_percentage", "hourly_price_change_text");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("idcurrent_table", "name", "date_time", "symbol", "market", "price", "volume", "avg_daily_volume", "market_cap", "book_value", "ebitda", "dividend_per_share", "dividend_yield", "earnings_per_share", "year_week_high", "year_week_low", "fifty_day_moving_avg", "two_hundred_day_moving_avg", "price_earnings_ratio", "price_earnings_growth_ratio", "price_sales_ratio", "price_book_ratio", "short_ratio", "previous_time_date", "previous_price", "price_change_value", "price_change_percentage", "price_change_text", "hourly_previous_time_date", "hourly_previous_price", "hourly_price_change_value", "hourly_price_change_percentage", "hourly_price_change_text");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("idcurrent_table", "name", "date_time", "symbol", "market", "price", "volume", "avg_daily_volume", "market_cap", "book_value", "ebitda", "dividend_per_share", "dividend_yield", "earnings_per_share", "year_week_high", "year_week_low", "fifty_day_moving_avg", "two_hundred_day_moving_avg", "price_earnings_ratio", "price_earnings_growth_ratio", "price_sales_ratio", "price_book_ratio", "short_ratio", "previous_time_date", "previous_price", "price_change_value", "price_change_percentage", "price_change_text", "hourly_previous_time_date", "hourly_previous_price", "hourly_price_change_value", "hourly_price_change_percentage", "hourly_price_change_text");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("idcurrent_table", "name", "date_time", "symbol", "market", "price", "volume", "avg_daily_volume", "market_cap", "book_value", "ebitda", "dividend_per_share", "dividend_yield", "earnings_per_share", "year_week_high", "year_week_low", "fifty_day_moving_avg", "two_hundred_day_moving_avg", "price_earnings_ratio", "price_earnings_growth_ratio", "price_sales_ratio", "price_book_ratio", "short_ratio", "previous_time_date", "previous_price", "price_change_value", "price_change_percentage", "price_change_text", "hourly_previous_time_date", "hourly_previous_price", "hourly_price_change_value", "hourly_price_change_percentage", "hourly_price_change_text");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "FinancialHourlyDataItem";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_FinancialHourlyDataItem;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _FinancialHourlyDataItemEntityMetadata(value : _Super_FinancialHourlyDataItem)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["idcurrent_table"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["date_time"] = new Array();
            model_internal::dependentsOnMap["symbol"] = new Array();
            model_internal::dependentsOnMap["market"] = new Array();
            model_internal::dependentsOnMap["price"] = new Array();
            model_internal::dependentsOnMap["volume"] = new Array();
            model_internal::dependentsOnMap["avg_daily_volume"] = new Array();
            model_internal::dependentsOnMap["market_cap"] = new Array();
            model_internal::dependentsOnMap["book_value"] = new Array();
            model_internal::dependentsOnMap["ebitda"] = new Array();
            model_internal::dependentsOnMap["dividend_per_share"] = new Array();
            model_internal::dependentsOnMap["dividend_yield"] = new Array();
            model_internal::dependentsOnMap["earnings_per_share"] = new Array();
            model_internal::dependentsOnMap["year_week_high"] = new Array();
            model_internal::dependentsOnMap["year_week_low"] = new Array();
            model_internal::dependentsOnMap["fifty_day_moving_avg"] = new Array();
            model_internal::dependentsOnMap["two_hundred_day_moving_avg"] = new Array();
            model_internal::dependentsOnMap["price_earnings_ratio"] = new Array();
            model_internal::dependentsOnMap["price_earnings_growth_ratio"] = new Array();
            model_internal::dependentsOnMap["price_sales_ratio"] = new Array();
            model_internal::dependentsOnMap["price_book_ratio"] = new Array();
            model_internal::dependentsOnMap["short_ratio"] = new Array();
            model_internal::dependentsOnMap["previous_time_date"] = new Array();
            model_internal::dependentsOnMap["previous_price"] = new Array();
            model_internal::dependentsOnMap["price_change_value"] = new Array();
            model_internal::dependentsOnMap["price_change_percentage"] = new Array();
            model_internal::dependentsOnMap["price_change_text"] = new Array();
            model_internal::dependentsOnMap["hourly_previous_time_date"] = new Array();
            model_internal::dependentsOnMap["hourly_previous_price"] = new Array();
            model_internal::dependentsOnMap["hourly_price_change_value"] = new Array();
            model_internal::dependentsOnMap["hourly_price_change_percentage"] = new Array();
            model_internal::dependentsOnMap["hourly_price_change_text"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["idcurrent_table"] = "int";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["date_time"] = "Date";
        model_internal::propertyTypeMap["symbol"] = "String";
        model_internal::propertyTypeMap["market"] = "String";
        model_internal::propertyTypeMap["price"] = "Number";
        model_internal::propertyTypeMap["volume"] = "Number";
        model_internal::propertyTypeMap["avg_daily_volume"] = "Number";
        model_internal::propertyTypeMap["market_cap"] = "String";
        model_internal::propertyTypeMap["book_value"] = "Number";
        model_internal::propertyTypeMap["ebitda"] = "String";
        model_internal::propertyTypeMap["dividend_per_share"] = "Number";
        model_internal::propertyTypeMap["dividend_yield"] = "Number";
        model_internal::propertyTypeMap["earnings_per_share"] = "Number";
        model_internal::propertyTypeMap["year_week_high"] = "Number";
        model_internal::propertyTypeMap["year_week_low"] = "Number";
        model_internal::propertyTypeMap["fifty_day_moving_avg"] = "Number";
        model_internal::propertyTypeMap["two_hundred_day_moving_avg"] = "Number";
        model_internal::propertyTypeMap["price_earnings_ratio"] = "Number";
        model_internal::propertyTypeMap["price_earnings_growth_ratio"] = "Number";
        model_internal::propertyTypeMap["price_sales_ratio"] = "Number";
        model_internal::propertyTypeMap["price_book_ratio"] = "Number";
        model_internal::propertyTypeMap["short_ratio"] = "Number";
        model_internal::propertyTypeMap["previous_time_date"] = "Date";
        model_internal::propertyTypeMap["previous_price"] = "Number";
        model_internal::propertyTypeMap["price_change_value"] = "Number";
        model_internal::propertyTypeMap["price_change_percentage"] = "Number";
        model_internal::propertyTypeMap["price_change_text"] = "String";
        model_internal::propertyTypeMap["hourly_previous_time_date"] = "Date";
        model_internal::propertyTypeMap["hourly_previous_price"] = "Number";
        model_internal::propertyTypeMap["hourly_price_change_value"] = "Number";
        model_internal::propertyTypeMap["hourly_price_change_percentage"] = "Number";
        model_internal::propertyTypeMap["hourly_price_change_text"] = "String";

        model_internal::_instance = value;
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity FinancialHourlyDataItem");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity FinancialHourlyDataItem");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of FinancialHourlyDataItem");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity FinancialHourlyDataItem");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity FinancialHourlyDataItem");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity FinancialHourlyDataItem");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isIdcurrent_tableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDate_timeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSymbolAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMarketAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPriceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVolumeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAvg_daily_volumeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMarket_capAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBook_valueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEbitdaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDividend_per_shareAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDividend_yieldAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEarnings_per_shareAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isYear_week_highAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isYear_week_lowAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFifty_day_moving_avgAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTwo_hundred_day_moving_avgAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrice_earnings_ratioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrice_earnings_growth_ratioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrice_sales_ratioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrice_book_ratioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isShort_ratioAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrevious_time_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrevious_priceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrice_change_valueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrice_change_percentageAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPrice_change_textAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHourly_previous_time_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHourly_previous_priceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHourly_price_change_valueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHourly_price_change_percentageAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHourly_price_change_textAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get idcurrent_tableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get date_timeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get symbolStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get marketStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get priceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get volumeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get avg_daily_volumeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get market_capStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get book_valueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ebitdaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get dividend_per_shareStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get dividend_yieldStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get earnings_per_shareStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get year_week_highStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get year_week_lowStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get fifty_day_moving_avgStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get two_hundred_day_moving_avgStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get price_earnings_ratioStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get price_earnings_growth_ratioStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get price_sales_ratioStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get price_book_ratioStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get short_ratioStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get previous_time_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get previous_priceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get price_change_valueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get price_change_percentageStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get price_change_textStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hourly_previous_time_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hourly_previous_priceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hourly_price_change_valueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hourly_price_change_percentageStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hourly_price_change_textStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
