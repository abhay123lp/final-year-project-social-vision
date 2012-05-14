/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ApiTopsyMiniTasksItem.as.
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
public class _Super_ApiTopsyMiniTasksItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ApiTopsyMiniTasksItemEntityMetadata;
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
    private var _internal_idtopsy_tasks : int;
    private var _internal_name : String;
    private var _internal_query : String;
    private var _internal_task_type : String;
    private var _internal_priority : String;
    private var _internal_type : String;
    private var _internal_query_start_date : Date;
    private var _internal_completed : String;
    private var _internal_data_group : String;
    private var _internal_completed_date : Date;
    private var _internal_from_date : Date;
    private var _internal_to_date : Date;
    private var _internal_results_per_page : int;
    private var _internal_max_no_pages : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ApiTopsyMiniTasksItem()
    {
        _model = new _ApiTopsyMiniTasksItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get idtopsy_tasks() : int
    {
        return _internal_idtopsy_tasks;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get query() : String
    {
        return _internal_query;
    }

    [Bindable(event="propertyChange")]
    public function get task_type() : String
    {
        return _internal_task_type;
    }

    [Bindable(event="propertyChange")]
    public function get priority() : String
    {
        return _internal_priority;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get query_start_date() : Date
    {
        return _internal_query_start_date;
    }

    [Bindable(event="propertyChange")]
    public function get completed() : String
    {
        return _internal_completed;
    }

    [Bindable(event="propertyChange")]
    public function get data_group() : String
    {
        return _internal_data_group;
    }

    [Bindable(event="propertyChange")]
    public function get completed_date() : Date
    {
        return _internal_completed_date;
    }

    [Bindable(event="propertyChange")]
    public function get from_date() : Date
    {
        return _internal_from_date;
    }

    [Bindable(event="propertyChange")]
    public function get to_date() : Date
    {
        return _internal_to_date;
    }

    [Bindable(event="propertyChange")]
    public function get results_per_page() : int
    {
        return _internal_results_per_page;
    }

    [Bindable(event="propertyChange")]
    public function get max_no_pages() : int
    {
        return _internal_max_no_pages;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set idtopsy_tasks(value:int) : void
    {
        var oldValue:int = _internal_idtopsy_tasks;
        if (oldValue !== value)
        {
            _internal_idtopsy_tasks = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idtopsy_tasks", oldValue, _internal_idtopsy_tasks));
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

    public function set query(value:String) : void
    {
        var oldValue:String = _internal_query;
        if (oldValue !== value)
        {
            _internal_query = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "query", oldValue, _internal_query));
        }
    }

    public function set task_type(value:String) : void
    {
        var oldValue:String = _internal_task_type;
        if (oldValue !== value)
        {
            _internal_task_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "task_type", oldValue, _internal_task_type));
        }
    }

    public function set priority(value:String) : void
    {
        var oldValue:String = _internal_priority;
        if (oldValue !== value)
        {
            _internal_priority = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "priority", oldValue, _internal_priority));
        }
    }

    public function set type(value:String) : void
    {
        var oldValue:String = _internal_type;
        if (oldValue !== value)
        {
            _internal_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "type", oldValue, _internal_type));
        }
    }

    public function set query_start_date(value:Date) : void
    {
        var oldValue:Date = _internal_query_start_date;
        if (oldValue !== value)
        {
            _internal_query_start_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "query_start_date", oldValue, _internal_query_start_date));
        }
    }

    public function set completed(value:String) : void
    {
        var oldValue:String = _internal_completed;
        if (oldValue !== value)
        {
            _internal_completed = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "completed", oldValue, _internal_completed));
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

    public function set completed_date(value:Date) : void
    {
        var oldValue:Date = _internal_completed_date;
        if (oldValue !== value)
        {
            _internal_completed_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "completed_date", oldValue, _internal_completed_date));
        }
    }

    public function set from_date(value:Date) : void
    {
        var oldValue:Date = _internal_from_date;
        if (oldValue !== value)
        {
            _internal_from_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "from_date", oldValue, _internal_from_date));
        }
    }

    public function set to_date(value:Date) : void
    {
        var oldValue:Date = _internal_to_date;
        if (oldValue !== value)
        {
            _internal_to_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "to_date", oldValue, _internal_to_date));
        }
    }

    public function set results_per_page(value:int) : void
    {
        var oldValue:int = _internal_results_per_page;
        if (oldValue !== value)
        {
            _internal_results_per_page = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "results_per_page", oldValue, _internal_results_per_page));
        }
    }

    public function set max_no_pages(value:int) : void
    {
        var oldValue:int = _internal_max_no_pages;
        if (oldValue !== value)
        {
            _internal_max_no_pages = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "max_no_pages", oldValue, _internal_max_no_pages));
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
    public function get _model() : _ApiTopsyMiniTasksItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ApiTopsyMiniTasksItemEntityMetadata) : void
    {
        var oldValue : _ApiTopsyMiniTasksItemEntityMetadata = model_internal::_dminternal_model;
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
