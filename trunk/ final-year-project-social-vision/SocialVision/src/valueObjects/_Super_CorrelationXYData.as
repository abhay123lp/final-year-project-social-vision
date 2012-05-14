/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CorrelationXYData.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.CorrelationXYItem;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CorrelationXYData extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.CorrelationXYItem.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CorrelationXYDataEntityMetadata;
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
    private var _internal_from_date : String;
    private var _internal_to_date : String;
    private var _internal_social_field : String;
    private var _internal_financial_field : String;
    private var _internal_day_delta : int;
    private var _internal_correlationXYItems : ArrayCollection;
    model_internal var _internal_correlationXYItems_leaf:valueObjects.CorrelationXYItem;
    private var _internal_kendelCorrelationCoeff : Number;
    private var _internal_kendelSignificanceProbability : Number;
    private var _internal_kendelTheilsStatisitc : int;
    private var _internal_linearCorrelationCoeff : Number;
    private var _internal_linearConfidenceCoeff : Number;
    private var _internal_linearSignificanceProbability : Number;
    private var _internal_linearLowerConfLimit : Number;
    private var _internal_linearHigherConfLimit : Number;
    private var _internal_spearmanCorrelationCoeff : Number;
    private var _internal_spearmanSumOfSqDiff : Number;
    private var _internal_spearmanSignificanceProbability : Number;
    private var _internal_pearsonPMCorrelationCoeff : Number;
    private var _internal_pearsonInterceptionTerma : Number;
    private var _internal_pearsonSlopeTermB : Number;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CorrelationXYData()
    {
        _model = new _CorrelationXYDataEntityMetadata(this);

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
    public function get from_date() : String
    {
        return _internal_from_date;
    }

    [Bindable(event="propertyChange")]
    public function get to_date() : String
    {
        return _internal_to_date;
    }

    [Bindable(event="propertyChange")]
    public function get social_field() : String
    {
        return _internal_social_field;
    }

    [Bindable(event="propertyChange")]
    public function get financial_field() : String
    {
        return _internal_financial_field;
    }

    [Bindable(event="propertyChange")]
    public function get day_delta() : int
    {
        return _internal_day_delta;
    }

    [Bindable(event="propertyChange")]
    public function get correlationXYItems() : ArrayCollection
    {
        return _internal_correlationXYItems;
    }

    [Bindable(event="propertyChange")]
    public function get kendelCorrelationCoeff() : Number
    {
        return _internal_kendelCorrelationCoeff;
    }

    [Bindable(event="propertyChange")]
    public function get kendelSignificanceProbability() : Number
    {
        return _internal_kendelSignificanceProbability;
    }

    [Bindable(event="propertyChange")]
    public function get kendelTheilsStatisitc() : int
    {
        return _internal_kendelTheilsStatisitc;
    }

    [Bindable(event="propertyChange")]
    public function get linearCorrelationCoeff() : Number
    {
        return _internal_linearCorrelationCoeff;
    }

    [Bindable(event="propertyChange")]
    public function get linearConfidenceCoeff() : Number
    {
        return _internal_linearConfidenceCoeff;
    }

    [Bindable(event="propertyChange")]
    public function get linearSignificanceProbability() : Number
    {
        return _internal_linearSignificanceProbability;
    }

    [Bindable(event="propertyChange")]
    public function get linearLowerConfLimit() : Number
    {
        return _internal_linearLowerConfLimit;
    }

    [Bindable(event="propertyChange")]
    public function get linearHigherConfLimit() : Number
    {
        return _internal_linearHigherConfLimit;
    }

    [Bindable(event="propertyChange")]
    public function get spearmanCorrelationCoeff() : Number
    {
        return _internal_spearmanCorrelationCoeff;
    }

    [Bindable(event="propertyChange")]
    public function get spearmanSumOfSqDiff() : Number
    {
        return _internal_spearmanSumOfSqDiff;
    }

    [Bindable(event="propertyChange")]
    public function get spearmanSignificanceProbability() : Number
    {
        return _internal_spearmanSignificanceProbability;
    }

    [Bindable(event="propertyChange")]
    public function get pearsonPMCorrelationCoeff() : Number
    {
        return _internal_pearsonPMCorrelationCoeff;
    }

    [Bindable(event="propertyChange")]
    public function get pearsonInterceptionTerma() : Number
    {
        return _internal_pearsonInterceptionTerma;
    }

    [Bindable(event="propertyChange")]
    public function get pearsonSlopeTermB() : Number
    {
        return _internal_pearsonSlopeTermB;
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

    public function set from_date(value:String) : void
    {
        var oldValue:String = _internal_from_date;
        if (oldValue !== value)
        {
            _internal_from_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "from_date", oldValue, _internal_from_date));
        }
    }

    public function set to_date(value:String) : void
    {
        var oldValue:String = _internal_to_date;
        if (oldValue !== value)
        {
            _internal_to_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "to_date", oldValue, _internal_to_date));
        }
    }

    public function set social_field(value:String) : void
    {
        var oldValue:String = _internal_social_field;
        if (oldValue !== value)
        {
            _internal_social_field = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "social_field", oldValue, _internal_social_field));
        }
    }

    public function set financial_field(value:String) : void
    {
        var oldValue:String = _internal_financial_field;
        if (oldValue !== value)
        {
            _internal_financial_field = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "financial_field", oldValue, _internal_financial_field));
        }
    }

    public function set day_delta(value:int) : void
    {
        var oldValue:int = _internal_day_delta;
        if (oldValue !== value)
        {
            _internal_day_delta = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "day_delta", oldValue, _internal_day_delta));
        }
    }

    public function set correlationXYItems(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_correlationXYItems;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_correlationXYItems = value;
            }
            else if (value is Array)
            {
                _internal_correlationXYItems = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_correlationXYItems = null;
            }
            else
            {
                throw new Error("value of correlationXYItems must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "correlationXYItems", oldValue, _internal_correlationXYItems));
        }
    }

    public function set kendelCorrelationCoeff(value:Number) : void
    {
        var oldValue:Number = _internal_kendelCorrelationCoeff;
        if (isNaN(_internal_kendelCorrelationCoeff) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_kendelCorrelationCoeff = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "kendelCorrelationCoeff", oldValue, _internal_kendelCorrelationCoeff));
        }
    }

    public function set kendelSignificanceProbability(value:Number) : void
    {
        var oldValue:Number = _internal_kendelSignificanceProbability;
        if (isNaN(_internal_kendelSignificanceProbability) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_kendelSignificanceProbability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "kendelSignificanceProbability", oldValue, _internal_kendelSignificanceProbability));
        }
    }

    public function set kendelTheilsStatisitc(value:int) : void
    {
        var oldValue:int = _internal_kendelTheilsStatisitc;
        if (oldValue !== value)
        {
            _internal_kendelTheilsStatisitc = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "kendelTheilsStatisitc", oldValue, _internal_kendelTheilsStatisitc));
        }
    }

    public function set linearCorrelationCoeff(value:Number) : void
    {
        var oldValue:Number = _internal_linearCorrelationCoeff;
        if (isNaN(_internal_linearCorrelationCoeff) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_linearCorrelationCoeff = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linearCorrelationCoeff", oldValue, _internal_linearCorrelationCoeff));
        }
    }

    public function set linearConfidenceCoeff(value:Number) : void
    {
        var oldValue:Number = _internal_linearConfidenceCoeff;
        if (isNaN(_internal_linearConfidenceCoeff) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_linearConfidenceCoeff = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linearConfidenceCoeff", oldValue, _internal_linearConfidenceCoeff));
        }
    }

    public function set linearSignificanceProbability(value:Number) : void
    {
        var oldValue:Number = _internal_linearSignificanceProbability;
        if (isNaN(_internal_linearSignificanceProbability) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_linearSignificanceProbability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linearSignificanceProbability", oldValue, _internal_linearSignificanceProbability));
        }
    }

    public function set linearLowerConfLimit(value:Number) : void
    {
        var oldValue:Number = _internal_linearLowerConfLimit;
        if (isNaN(_internal_linearLowerConfLimit) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_linearLowerConfLimit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linearLowerConfLimit", oldValue, _internal_linearLowerConfLimit));
        }
    }

    public function set linearHigherConfLimit(value:Number) : void
    {
        var oldValue:Number = _internal_linearHigherConfLimit;
        if (isNaN(_internal_linearHigherConfLimit) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_linearHigherConfLimit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "linearHigherConfLimit", oldValue, _internal_linearHigherConfLimit));
        }
    }

    public function set spearmanCorrelationCoeff(value:Number) : void
    {
        var oldValue:Number = _internal_spearmanCorrelationCoeff;
        if (isNaN(_internal_spearmanCorrelationCoeff) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_spearmanCorrelationCoeff = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "spearmanCorrelationCoeff", oldValue, _internal_spearmanCorrelationCoeff));
        }
    }

    public function set spearmanSumOfSqDiff(value:Number) : void
    {
        var oldValue:Number = _internal_spearmanSumOfSqDiff;
        if (isNaN(_internal_spearmanSumOfSqDiff) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_spearmanSumOfSqDiff = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "spearmanSumOfSqDiff", oldValue, _internal_spearmanSumOfSqDiff));
        }
    }

    public function set spearmanSignificanceProbability(value:Number) : void
    {
        var oldValue:Number = _internal_spearmanSignificanceProbability;
        if (isNaN(_internal_spearmanSignificanceProbability) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_spearmanSignificanceProbability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "spearmanSignificanceProbability", oldValue, _internal_spearmanSignificanceProbability));
        }
    }

    public function set pearsonPMCorrelationCoeff(value:Number) : void
    {
        var oldValue:Number = _internal_pearsonPMCorrelationCoeff;
        if (isNaN(_internal_pearsonPMCorrelationCoeff) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_pearsonPMCorrelationCoeff = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pearsonPMCorrelationCoeff", oldValue, _internal_pearsonPMCorrelationCoeff));
        }
    }

    public function set pearsonInterceptionTerma(value:Number) : void
    {
        var oldValue:Number = _internal_pearsonInterceptionTerma;
        if (isNaN(_internal_pearsonInterceptionTerma) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_pearsonInterceptionTerma = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pearsonInterceptionTerma", oldValue, _internal_pearsonInterceptionTerma));
        }
    }

    public function set pearsonSlopeTermB(value:Number) : void
    {
        var oldValue:Number = _internal_pearsonSlopeTermB;
        if (isNaN(_internal_pearsonSlopeTermB) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_pearsonSlopeTermB = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pearsonSlopeTermB", oldValue, _internal_pearsonSlopeTermB));
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
    public function get _model() : _CorrelationXYDataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CorrelationXYDataEntityMetadata) : void
    {
        var oldValue : _CorrelationXYDataEntityMetadata = model_internal::_dminternal_model;
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
