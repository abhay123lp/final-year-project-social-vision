/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FinancialPredictionPerformanceItem.as.
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
public class _Super_FinancialPredictionPerformanceItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FinancialPredictionPerformanceItemEntityMetadata;
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
    private var _internal_prediction_data_item_id : int;
    private var _internal_prediction_task_id : int;
    private var _internal_company_name : String;
    private var _internal_predicton_type : String;
    private var _internal__date : Date;
    private var _internal_predicted_from_date : Date;
    private var _internal_actual_financial_change_value : Number;
    private var _internal_actual_financial_change_percent : Number;
    private var _internal_actual_financial_direction : String;
    private var _internal_predicted_financial_direction : String;
    private var _internal_predicted_financial_change : Number;
    private var _internal_predicted_financial_up_prob : Number;
    private var _internal_predicted_financial_down_prob : Number;
    private var _internal_predicted_financial_normalised_prob : Number;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FinancialPredictionPerformanceItem()
    {
        _model = new _FinancialPredictionPerformanceItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get prediction_data_item_id() : int
    {
        return _internal_prediction_data_item_id;
    }

    [Bindable(event="propertyChange")]
    public function get prediction_task_id() : int
    {
        return _internal_prediction_task_id;
    }

    [Bindable(event="propertyChange")]
    public function get company_name() : String
    {
        return _internal_company_name;
    }

    [Bindable(event="propertyChange")]
    public function get predicton_type() : String
    {
        return _internal_predicton_type;
    }

    [Bindable(event="propertyChange")]
    public function get _date() : Date
    {
        return _internal__date;
    }

    [Bindable(event="propertyChange")]
    public function get predicted_from_date() : Date
    {
        return _internal_predicted_from_date;
    }

    [Bindable(event="propertyChange")]
    public function get actual_financial_change_value() : Number
    {
        return _internal_actual_financial_change_value;
    }

    [Bindable(event="propertyChange")]
    public function get actual_financial_change_percent() : Number
    {
        return _internal_actual_financial_change_percent;
    }

    [Bindable(event="propertyChange")]
    public function get actual_financial_direction() : String
    {
        return _internal_actual_financial_direction;
    }

    [Bindable(event="propertyChange")]
    public function get predicted_financial_direction() : String
    {
        return _internal_predicted_financial_direction;
    }

    [Bindable(event="propertyChange")]
    public function get predicted_financial_change() : Number
    {
        return _internal_predicted_financial_change;
    }

    [Bindable(event="propertyChange")]
    public function get predicted_financial_up_prob() : Number
    {
        return _internal_predicted_financial_up_prob;
    }

    [Bindable(event="propertyChange")]
    public function get predicted_financial_down_prob() : Number
    {
        return _internal_predicted_financial_down_prob;
    }

    [Bindable(event="propertyChange")]
    public function get predicted_financial_normalised_prob() : Number
    {
        return _internal_predicted_financial_normalised_prob;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set prediction_data_item_id(value:int) : void
    {
        var oldValue:int = _internal_prediction_data_item_id;
        if (oldValue !== value)
        {
            _internal_prediction_data_item_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "prediction_data_item_id", oldValue, _internal_prediction_data_item_id));
        }
    }

    public function set prediction_task_id(value:int) : void
    {
        var oldValue:int = _internal_prediction_task_id;
        if (oldValue !== value)
        {
            _internal_prediction_task_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "prediction_task_id", oldValue, _internal_prediction_task_id));
        }
    }

    public function set company_name(value:String) : void
    {
        var oldValue:String = _internal_company_name;
        if (oldValue !== value)
        {
            _internal_company_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "company_name", oldValue, _internal_company_name));
        }
    }

    public function set predicton_type(value:String) : void
    {
        var oldValue:String = _internal_predicton_type;
        if (oldValue !== value)
        {
            _internal_predicton_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "predicton_type", oldValue, _internal_predicton_type));
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

    public function set predicted_from_date(value:Date) : void
    {
        var oldValue:Date = _internal_predicted_from_date;
        if (oldValue !== value)
        {
            _internal_predicted_from_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "predicted_from_date", oldValue, _internal_predicted_from_date));
        }
    }

    public function set actual_financial_change_value(value:Number) : void
    {
        var oldValue:Number = _internal_actual_financial_change_value;
        if (isNaN(_internal_actual_financial_change_value) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_actual_financial_change_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actual_financial_change_value", oldValue, _internal_actual_financial_change_value));
        }
    }

    public function set actual_financial_change_percent(value:Number) : void
    {
        var oldValue:Number = _internal_actual_financial_change_percent;
        if (isNaN(_internal_actual_financial_change_percent) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_actual_financial_change_percent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actual_financial_change_percent", oldValue, _internal_actual_financial_change_percent));
        }
    }

    public function set actual_financial_direction(value:String) : void
    {
        var oldValue:String = _internal_actual_financial_direction;
        if (oldValue !== value)
        {
            _internal_actual_financial_direction = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "actual_financial_direction", oldValue, _internal_actual_financial_direction));
        }
    }

    public function set predicted_financial_direction(value:String) : void
    {
        var oldValue:String = _internal_predicted_financial_direction;
        if (oldValue !== value)
        {
            _internal_predicted_financial_direction = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "predicted_financial_direction", oldValue, _internal_predicted_financial_direction));
        }
    }

    public function set predicted_financial_change(value:Number) : void
    {
        var oldValue:Number = _internal_predicted_financial_change;
        if (isNaN(_internal_predicted_financial_change) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_predicted_financial_change = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "predicted_financial_change", oldValue, _internal_predicted_financial_change));
        }
    }

    public function set predicted_financial_up_prob(value:Number) : void
    {
        var oldValue:Number = _internal_predicted_financial_up_prob;
        if (isNaN(_internal_predicted_financial_up_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_predicted_financial_up_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "predicted_financial_up_prob", oldValue, _internal_predicted_financial_up_prob));
        }
    }

    public function set predicted_financial_down_prob(value:Number) : void
    {
        var oldValue:Number = _internal_predicted_financial_down_prob;
        if (isNaN(_internal_predicted_financial_down_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_predicted_financial_down_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "predicted_financial_down_prob", oldValue, _internal_predicted_financial_down_prob));
        }
    }

    public function set predicted_financial_normalised_prob(value:Number) : void
    {
        var oldValue:Number = _internal_predicted_financial_normalised_prob;
        if (isNaN(_internal_predicted_financial_normalised_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_predicted_financial_normalised_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "predicted_financial_normalised_prob", oldValue, _internal_predicted_financial_normalised_prob));
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
    public function get _model() : _FinancialPredictionPerformanceItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FinancialPredictionPerformanceItemEntityMetadata) : void
    {
        var oldValue : _FinancialPredictionPerformanceItemEntityMetadata = model_internal::_dminternal_model;
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
