/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ApiTwitterSearchesItem.as.
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
public class _Super_ApiTwitterSearchesItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ApiTwitterSearchesItemEntityMetadata;
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
    private var _internal_idTwitterSearches : int;
    private var _internal_local_name : String;
    private var _internal_query : String;
    private var _internal_data_group : String;
    private var _internal_date_created : Date;
    private var _internal_stream_hourly_count : int;
    private var _internal_stream_day_count : int;
    private var _internal_tweet_count_process_date : Date;
    private var _internal_tweet_is_english_pocess_date : Date;
    private var _internal_start_time : Date;
    private var _internal_last_completed : Date;
    private var _internal_number_calls : int;
    private var _internal_error_message : String;
    private var _internal_geo_latitude : String;
    private var _internal_geo_longitude : String;
    private var _internal_geo_radius_miles : String;
    private var _internal_language : String;
    private var _internal_num_of_pages : int;
    private var _internal_rpp : int;
    private var _internal_result_type : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ApiTwitterSearchesItem()
    {
        _model = new _ApiTwitterSearchesItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get idTwitterSearches() : int
    {
        return _internal_idTwitterSearches;
    }

    [Bindable(event="propertyChange")]
    public function get local_name() : String
    {
        return _internal_local_name;
    }

    [Bindable(event="propertyChange")]
    public function get query() : String
    {
        return _internal_query;
    }

    [Bindable(event="propertyChange")]
    public function get data_group() : String
    {
        return _internal_data_group;
    }

    [Bindable(event="propertyChange")]
    public function get date_created() : Date
    {
        return _internal_date_created;
    }

    [Bindable(event="propertyChange")]
    public function get stream_hourly_count() : int
    {
        return _internal_stream_hourly_count;
    }

    [Bindable(event="propertyChange")]
    public function get stream_day_count() : int
    {
        return _internal_stream_day_count;
    }

    [Bindable(event="propertyChange")]
    public function get tweet_count_process_date() : Date
    {
        return _internal_tweet_count_process_date;
    }

    [Bindable(event="propertyChange")]
    public function get tweet_is_english_pocess_date() : Date
    {
        return _internal_tweet_is_english_pocess_date;
    }

    [Bindable(event="propertyChange")]
    public function get start_time() : Date
    {
        return _internal_start_time;
    }

    [Bindable(event="propertyChange")]
    public function get last_completed() : Date
    {
        return _internal_last_completed;
    }

    [Bindable(event="propertyChange")]
    public function get number_calls() : int
    {
        return _internal_number_calls;
    }

    [Bindable(event="propertyChange")]
    public function get error_message() : String
    {
        return _internal_error_message;
    }

    [Bindable(event="propertyChange")]
    public function get geo_latitude() : String
    {
        return _internal_geo_latitude;
    }

    [Bindable(event="propertyChange")]
    public function get geo_longitude() : String
    {
        return _internal_geo_longitude;
    }

    [Bindable(event="propertyChange")]
    public function get geo_radius_miles() : String
    {
        return _internal_geo_radius_miles;
    }

    [Bindable(event="propertyChange")]
    public function get language() : String
    {
        return _internal_language;
    }

    [Bindable(event="propertyChange")]
    public function get num_of_pages() : int
    {
        return _internal_num_of_pages;
    }

    [Bindable(event="propertyChange")]
    public function get rpp() : int
    {
        return _internal_rpp;
    }

    [Bindable(event="propertyChange")]
    public function get result_type() : String
    {
        return _internal_result_type;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set idTwitterSearches(value:int) : void
    {
        var oldValue:int = _internal_idTwitterSearches;
        if (oldValue !== value)
        {
            _internal_idTwitterSearches = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idTwitterSearches", oldValue, _internal_idTwitterSearches));
        }
    }

    public function set local_name(value:String) : void
    {
        var oldValue:String = _internal_local_name;
        if (oldValue !== value)
        {
            _internal_local_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "local_name", oldValue, _internal_local_name));
        }
    }

    public function set query(value:String) : void
    {
        var oldValue:String = _internal_query;
        if (oldValue !== value)
        {
            _internal_query = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "query", oldValue, _internal_query));
        }
    }

    public function set data_group(value:String) : void
    {
        var oldValue:String = _internal_data_group;
        if (oldValue !== value)
        {
            _internal_data_group = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "data_group", oldValue, _internal_data_group));
        }
    }

    public function set date_created(value:Date) : void
    {
        var oldValue:Date = _internal_date_created;
        if (oldValue !== value)
        {
            _internal_date_created = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "date_created", oldValue, _internal_date_created));
        }
    }

    public function set stream_hourly_count(value:int) : void
    {
        var oldValue:int = _internal_stream_hourly_count;
        if (oldValue !== value)
        {
            _internal_stream_hourly_count = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stream_hourly_count", oldValue, _internal_stream_hourly_count));
        }
    }

    public function set stream_day_count(value:int) : void
    {
        var oldValue:int = _internal_stream_day_count;
        if (oldValue !== value)
        {
            _internal_stream_day_count = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "stream_day_count", oldValue, _internal_stream_day_count));
        }
    }

    public function set tweet_count_process_date(value:Date) : void
    {
        var oldValue:Date = _internal_tweet_count_process_date;
        if (oldValue !== value)
        {
            _internal_tweet_count_process_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweet_count_process_date", oldValue, _internal_tweet_count_process_date));
        }
    }

    public function set tweet_is_english_pocess_date(value:Date) : void
    {
        var oldValue:Date = _internal_tweet_is_english_pocess_date;
        if (oldValue !== value)
        {
            _internal_tweet_is_english_pocess_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweet_is_english_pocess_date", oldValue, _internal_tweet_is_english_pocess_date));
        }
    }

    public function set start_time(value:Date) : void
    {
        var oldValue:Date = _internal_start_time;
        if (oldValue !== value)
        {
            _internal_start_time = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "start_time", oldValue, _internal_start_time));
        }
    }

    public function set last_completed(value:Date) : void
    {
        var oldValue:Date = _internal_last_completed;
        if (oldValue !== value)
        {
            _internal_last_completed = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "last_completed", oldValue, _internal_last_completed));
        }
    }

    public function set number_calls(value:int) : void
    {
        var oldValue:int = _internal_number_calls;
        if (oldValue !== value)
        {
            _internal_number_calls = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "number_calls", oldValue, _internal_number_calls));
        }
    }

    public function set error_message(value:String) : void
    {
        var oldValue:String = _internal_error_message;
        if (oldValue !== value)
        {
            _internal_error_message = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "error_message", oldValue, _internal_error_message));
        }
    }

    public function set geo_latitude(value:String) : void
    {
        var oldValue:String = _internal_geo_latitude;
        if (oldValue !== value)
        {
            _internal_geo_latitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "geo_latitude", oldValue, _internal_geo_latitude));
        }
    }

    public function set geo_longitude(value:String) : void
    {
        var oldValue:String = _internal_geo_longitude;
        if (oldValue !== value)
        {
            _internal_geo_longitude = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "geo_longitude", oldValue, _internal_geo_longitude));
        }
    }

    public function set geo_radius_miles(value:String) : void
    {
        var oldValue:String = _internal_geo_radius_miles;
        if (oldValue !== value)
        {
            _internal_geo_radius_miles = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "geo_radius_miles", oldValue, _internal_geo_radius_miles));
        }
    }

    public function set language(value:String) : void
    {
        var oldValue:String = _internal_language;
        if (oldValue !== value)
        {
            _internal_language = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "language", oldValue, _internal_language));
        }
    }

    public function set num_of_pages(value:int) : void
    {
        var oldValue:int = _internal_num_of_pages;
        if (oldValue !== value)
        {
            _internal_num_of_pages = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_of_pages", oldValue, _internal_num_of_pages));
        }
    }

    public function set rpp(value:int) : void
    {
        var oldValue:int = _internal_rpp;
        if (oldValue !== value)
        {
            _internal_rpp = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rpp", oldValue, _internal_rpp));
        }
    }

    public function set result_type(value:String) : void
    {
        var oldValue:String = _internal_result_type;
        if (oldValue !== value)
        {
            _internal_result_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "result_type", oldValue, _internal_result_type));
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
    public function get _model() : _ApiTwitterSearchesItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ApiTwitterSearchesItemEntityMetadata) : void
    {
        var oldValue : _ApiTwitterSearchesItemEntityMetadata = model_internal::_dminternal_model;
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
