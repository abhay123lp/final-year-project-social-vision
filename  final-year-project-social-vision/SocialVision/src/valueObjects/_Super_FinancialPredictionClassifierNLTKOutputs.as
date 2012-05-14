/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FinancialPredictionClassifierNLTKOutputs.as.
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
public class _Super_FinancialPredictionClassifierNLTKOutputs extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FinancialPredictionClassifierNLTKOutputsEntityMetadata;
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
    private var _internal_down_recall : String;
    private var _internal_up_recall : String;
    private var _internal_up_precision : String;
    private var _internal_down_precision : String;
    private var _internal_accuracy : String;
    private var _internal_most_informative_features : String;
    private var _internal_prediction : String;
    private var _internal_up_prediction_prob : String;
    private var _internal_down_prediction_prob : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FinancialPredictionClassifierNLTKOutputs()
    {
        _model = new _FinancialPredictionClassifierNLTKOutputsEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get down_recall() : String
    {
        return _internal_down_recall;
    }

    [Bindable(event="propertyChange")]
    public function get up_recall() : String
    {
        return _internal_up_recall;
    }

    [Bindable(event="propertyChange")]
    public function get up_precision() : String
    {
        return _internal_up_precision;
    }

    [Bindable(event="propertyChange")]
    public function get down_precision() : String
    {
        return _internal_down_precision;
    }

    [Bindable(event="propertyChange")]
    public function get accuracy() : String
    {
        return _internal_accuracy;
    }

    [Bindable(event="propertyChange")]
    public function get most_informative_features() : String
    {
        return _internal_most_informative_features;
    }

    [Bindable(event="propertyChange")]
    public function get prediction() : String
    {
        return _internal_prediction;
    }

    [Bindable(event="propertyChange")]
    public function get up_prediction_prob() : String
    {
        return _internal_up_prediction_prob;
    }

    [Bindable(event="propertyChange")]
    public function get down_prediction_prob() : String
    {
        return _internal_down_prediction_prob;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set down_recall(value:String) : void
    {
        var oldValue:String = _internal_down_recall;
        if (oldValue !== value)
        {
            _internal_down_recall = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "down_recall", oldValue, _internal_down_recall));
        }
    }

    public function set up_recall(value:String) : void
    {
        var oldValue:String = _internal_up_recall;
        if (oldValue !== value)
        {
            _internal_up_recall = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "up_recall", oldValue, _internal_up_recall));
        }
    }

    public function set up_precision(value:String) : void
    {
        var oldValue:String = _internal_up_precision;
        if (oldValue !== value)
        {
            _internal_up_precision = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "up_precision", oldValue, _internal_up_precision));
        }
    }

    public function set down_precision(value:String) : void
    {
        var oldValue:String = _internal_down_precision;
        if (oldValue !== value)
        {
            _internal_down_precision = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "down_precision", oldValue, _internal_down_precision));
        }
    }

    public function set accuracy(value:String) : void
    {
        var oldValue:String = _internal_accuracy;
        if (oldValue !== value)
        {
            _internal_accuracy = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "accuracy", oldValue, _internal_accuracy));
        }
    }

    public function set most_informative_features(value:String) : void
    {
        var oldValue:String = _internal_most_informative_features;
        if (oldValue !== value)
        {
            _internal_most_informative_features = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "most_informative_features", oldValue, _internal_most_informative_features));
        }
    }

    public function set prediction(value:String) : void
    {
        var oldValue:String = _internal_prediction;
        if (oldValue !== value)
        {
            _internal_prediction = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "prediction", oldValue, _internal_prediction));
        }
    }

    public function set up_prediction_prob(value:String) : void
    {
        var oldValue:String = _internal_up_prediction_prob;
        if (oldValue !== value)
        {
            _internal_up_prediction_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "up_prediction_prob", oldValue, _internal_up_prediction_prob));
        }
    }

    public function set down_prediction_prob(value:String) : void
    {
        var oldValue:String = _internal_down_prediction_prob;
        if (oldValue !== value)
        {
            _internal_down_prediction_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "down_prediction_prob", oldValue, _internal_down_prediction_prob));
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
    public function get _model() : _FinancialPredictionClassifierNLTKOutputsEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FinancialPredictionClassifierNLTKOutputsEntityMetadata) : void
    {
        var oldValue : _FinancialPredictionClassifierNLTKOutputsEntityMetadata = model_internal::_dminternal_model;
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
