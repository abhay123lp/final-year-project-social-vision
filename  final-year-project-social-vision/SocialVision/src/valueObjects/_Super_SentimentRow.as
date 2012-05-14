/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SentimentRow.as.
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
public class _Super_SentimentRow extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _SentimentRowEntityMetadata;
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
    private var _internal_numOfNotEnglish : int;
    private var _internal_numOfEnglish : int;
    private var _internal_numOfNotRelevant : int;
    private var _internal_numOfRelevant : int;
    private var _internal_numOfNeutral : int;
    private var _internal_numOfPositive : int;
    private var _internal_numOfNegative : int;
    private var _internal_numOfRecession : int;
    private var _internal_numOfGrowth : int;
    private var _internal_numOfPoliticallyStable : int;
    private var _internal_numOfPoliticallyInStable : int;
    private var _internal_totalTweetsClassified : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SentimentRow()
    {
        _model = new _SentimentRowEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get numOfNotEnglish() : int
    {
        return _internal_numOfNotEnglish;
    }

    [Bindable(event="propertyChange")]
    public function get numOfEnglish() : int
    {
        return _internal_numOfEnglish;
    }

    [Bindable(event="propertyChange")]
    public function get numOfNotRelevant() : int
    {
        return _internal_numOfNotRelevant;
    }

    [Bindable(event="propertyChange")]
    public function get numOfRelevant() : int
    {
        return _internal_numOfRelevant;
    }

    [Bindable(event="propertyChange")]
    public function get numOfNeutral() : int
    {
        return _internal_numOfNeutral;
    }

    [Bindable(event="propertyChange")]
    public function get numOfPositive() : int
    {
        return _internal_numOfPositive;
    }

    [Bindable(event="propertyChange")]
    public function get numOfNegative() : int
    {
        return _internal_numOfNegative;
    }

    [Bindable(event="propertyChange")]
    public function get numOfRecession() : int
    {
        return _internal_numOfRecession;
    }

    [Bindable(event="propertyChange")]
    public function get numOfGrowth() : int
    {
        return _internal_numOfGrowth;
    }

    [Bindable(event="propertyChange")]
    public function get numOfPoliticallyStable() : int
    {
        return _internal_numOfPoliticallyStable;
    }

    [Bindable(event="propertyChange")]
    public function get numOfPoliticallyInStable() : int
    {
        return _internal_numOfPoliticallyInStable;
    }

    [Bindable(event="propertyChange")]
    public function get totalTweetsClassified() : int
    {
        return _internal_totalTweetsClassified;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set numOfNotEnglish(value:int) : void
    {
        var oldValue:int = _internal_numOfNotEnglish;
        if (oldValue !== value)
        {
            _internal_numOfNotEnglish = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfNotEnglish", oldValue, _internal_numOfNotEnglish));
        }
    }

    public function set numOfEnglish(value:int) : void
    {
        var oldValue:int = _internal_numOfEnglish;
        if (oldValue !== value)
        {
            _internal_numOfEnglish = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfEnglish", oldValue, _internal_numOfEnglish));
        }
    }

    public function set numOfNotRelevant(value:int) : void
    {
        var oldValue:int = _internal_numOfNotRelevant;
        if (oldValue !== value)
        {
            _internal_numOfNotRelevant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfNotRelevant", oldValue, _internal_numOfNotRelevant));
        }
    }

    public function set numOfRelevant(value:int) : void
    {
        var oldValue:int = _internal_numOfRelevant;
        if (oldValue !== value)
        {
            _internal_numOfRelevant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfRelevant", oldValue, _internal_numOfRelevant));
        }
    }

    public function set numOfNeutral(value:int) : void
    {
        var oldValue:int = _internal_numOfNeutral;
        if (oldValue !== value)
        {
            _internal_numOfNeutral = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfNeutral", oldValue, _internal_numOfNeutral));
        }
    }

    public function set numOfPositive(value:int) : void
    {
        var oldValue:int = _internal_numOfPositive;
        if (oldValue !== value)
        {
            _internal_numOfPositive = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfPositive", oldValue, _internal_numOfPositive));
        }
    }

    public function set numOfNegative(value:int) : void
    {
        var oldValue:int = _internal_numOfNegative;
        if (oldValue !== value)
        {
            _internal_numOfNegative = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfNegative", oldValue, _internal_numOfNegative));
        }
    }

    public function set numOfRecession(value:int) : void
    {
        var oldValue:int = _internal_numOfRecession;
        if (oldValue !== value)
        {
            _internal_numOfRecession = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfRecession", oldValue, _internal_numOfRecession));
        }
    }

    public function set numOfGrowth(value:int) : void
    {
        var oldValue:int = _internal_numOfGrowth;
        if (oldValue !== value)
        {
            _internal_numOfGrowth = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfGrowth", oldValue, _internal_numOfGrowth));
        }
    }

    public function set numOfPoliticallyStable(value:int) : void
    {
        var oldValue:int = _internal_numOfPoliticallyStable;
        if (oldValue !== value)
        {
            _internal_numOfPoliticallyStable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfPoliticallyStable", oldValue, _internal_numOfPoliticallyStable));
        }
    }

    public function set numOfPoliticallyInStable(value:int) : void
    {
        var oldValue:int = _internal_numOfPoliticallyInStable;
        if (oldValue !== value)
        {
            _internal_numOfPoliticallyInStable = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "numOfPoliticallyInStable", oldValue, _internal_numOfPoliticallyInStable));
        }
    }

    public function set totalTweetsClassified(value:int) : void
    {
        var oldValue:int = _internal_totalTweetsClassified;
        if (oldValue !== value)
        {
            _internal_totalTweetsClassified = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "totalTweetsClassified", oldValue, _internal_totalTweetsClassified));
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
    public function get _model() : _SentimentRowEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SentimentRowEntityMetadata) : void
    {
        var oldValue : _SentimentRowEntityMetadata = model_internal::_dminternal_model;
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
