/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - PythonScriptItem.as.
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
public class _Super_PythonScriptItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _PythonScriptItemEntityMetadata;
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
    private var _internal_id_python_script : int;
    private var _internal_name : String;
    private var _internal_interval : String;
    private var _internal_status : String;
    private var _internal_progress : String;
    private var _internal_last_run_date : Date;
    private var _internal_last_progress_update : Date;
    private var _internal_error_message : String;
    private var _internal_error_date_time : Date;
    private var _internal_daily_run_count : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_PythonScriptItem()
    {
        _model = new _PythonScriptItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id_python_script() : int
    {
        return _internal_id_python_script;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get interval() : String
    {
        return _internal_interval;
    }

    [Bindable(event="propertyChange")]
    public function get status() : String
    {
        return _internal_status;
    }

    [Bindable(event="propertyChange")]
    public function get progress() : String
    {
        return _internal_progress;
    }

    [Bindable(event="propertyChange")]
    public function get last_run_date() : Date
    {
        return _internal_last_run_date;
    }

    [Bindable(event="propertyChange")]
    public function get last_progress_update() : Date
    {
        return _internal_last_progress_update;
    }

    [Bindable(event="propertyChange")]
    public function get error_message() : String
    {
        return _internal_error_message;
    }

    [Bindable(event="propertyChange")]
    public function get error_date_time() : Date
    {
        return _internal_error_date_time;
    }

    [Bindable(event="propertyChange")]
    public function get daily_run_count() : int
    {
        return _internal_daily_run_count;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id_python_script(value:int) : void
    {
        var oldValue:int = _internal_id_python_script;
        if (oldValue !== value)
        {
            _internal_id_python_script = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_python_script", oldValue, _internal_id_python_script));
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

    public function set interval(value:String) : void
    {
        var oldValue:String = _internal_interval;
        if (oldValue !== value)
        {
            _internal_interval = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "interval", oldValue, _internal_interval));
        }
    }

    public function set status(value:String) : void
    {
        var oldValue:String = _internal_status;
        if (oldValue !== value)
        {
            _internal_status = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "status", oldValue, _internal_status));
        }
    }

    public function set progress(value:String) : void
    {
        var oldValue:String = _internal_progress;
        if (oldValue !== value)
        {
            _internal_progress = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "progress", oldValue, _internal_progress));
        }
    }

    public function set last_run_date(value:Date) : void
    {
        var oldValue:Date = _internal_last_run_date;
        if (oldValue !== value)
        {
            _internal_last_run_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "last_run_date", oldValue, _internal_last_run_date));
        }
    }

    public function set last_progress_update(value:Date) : void
    {
        var oldValue:Date = _internal_last_progress_update;
        if (oldValue !== value)
        {
            _internal_last_progress_update = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "last_progress_update", oldValue, _internal_last_progress_update));
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

    public function set error_date_time(value:Date) : void
    {
        var oldValue:Date = _internal_error_date_time;
        if (oldValue !== value)
        {
            _internal_error_date_time = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "error_date_time", oldValue, _internal_error_date_time));
        }
    }

    public function set daily_run_count(value:int) : void
    {
        var oldValue:int = _internal_daily_run_count;
        if (oldValue !== value)
        {
            _internal_daily_run_count = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "daily_run_count", oldValue, _internal_daily_run_count));
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
    public function get _model() : _PythonScriptItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PythonScriptItemEntityMetadata) : void
    {
        var oldValue : _PythonScriptItemEntityMetadata = model_internal::_dminternal_model;
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
