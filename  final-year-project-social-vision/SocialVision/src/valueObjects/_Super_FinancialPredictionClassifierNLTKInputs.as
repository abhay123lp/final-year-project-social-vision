/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FinancialPredictionClassifierNLTKInputs.as.
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
public class _Super_FinancialPredictionClassifierNLTKInputs extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FinancialPredictionClassifierNLTKInputsEntityMetadata;
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
    private var _internal_training_from_date : String;
    private var _internal_training_to_date : String;
    private var _internal_training_limit : String;
    private var _internal_test_from_date : String;
    private var _internal_test_to_date : String;
    private var _internal_interval_value : String;
    private var _internal_tweets_fin_time_delta_value : String;
    private var _internal_interval_unit : String;
    private var _internal_tweets_fin_time_delta_unit : String;
    private var _internal_tweet_source : String;
    private var _internal_remove_short_words : String;
    private var _internal_remove_stop_words : String;
    private var _internal_remove_low_info_words : String;
    private var _internal_num_of_inf_words : String;
    private var _internal_use_bigrams : String;
    private var _internal_remove_non_english : String;
    private var _internal_remove_irrelevant : String;
    private var _internal_include_subjective : String;
    private var _internal_include_objective : String;
    private var _internal_company_name : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FinancialPredictionClassifierNLTKInputs()
    {
        _model = new _FinancialPredictionClassifierNLTKInputsEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get training_from_date() : String
    {
        return _internal_training_from_date;
    }

    [Bindable(event="propertyChange")]
    public function get training_to_date() : String
    {
        return _internal_training_to_date;
    }

    [Bindable(event="propertyChange")]
    public function get training_limit() : String
    {
        return _internal_training_limit;
    }

    [Bindable(event="propertyChange")]
    public function get test_from_date() : String
    {
        return _internal_test_from_date;
    }

    [Bindable(event="propertyChange")]
    public function get test_to_date() : String
    {
        return _internal_test_to_date;
    }

    [Bindable(event="propertyChange")]
    public function get interval_value() : String
    {
        return _internal_interval_value;
    }

    [Bindable(event="propertyChange")]
    public function get tweets_fin_time_delta_value() : String
    {
        return _internal_tweets_fin_time_delta_value;
    }

    [Bindable(event="propertyChange")]
    public function get interval_unit() : String
    {
        return _internal_interval_unit;
    }

    [Bindable(event="propertyChange")]
    public function get tweets_fin_time_delta_unit() : String
    {
        return _internal_tweets_fin_time_delta_unit;
    }

    [Bindable(event="propertyChange")]
    public function get tweet_source() : String
    {
        return _internal_tweet_source;
    }

    [Bindable(event="propertyChange")]
    public function get remove_short_words() : String
    {
        return _internal_remove_short_words;
    }

    [Bindable(event="propertyChange")]
    public function get remove_stop_words() : String
    {
        return _internal_remove_stop_words;
    }

    [Bindable(event="propertyChange")]
    public function get remove_low_info_words() : String
    {
        return _internal_remove_low_info_words;
    }

    [Bindable(event="propertyChange")]
    public function get num_of_inf_words() : String
    {
        return _internal_num_of_inf_words;
    }

    [Bindable(event="propertyChange")]
    public function get use_bigrams() : String
    {
        return _internal_use_bigrams;
    }

    [Bindable(event="propertyChange")]
    public function get remove_non_english() : String
    {
        return _internal_remove_non_english;
    }

    [Bindable(event="propertyChange")]
    public function get remove_irrelevant() : String
    {
        return _internal_remove_irrelevant;
    }

    [Bindable(event="propertyChange")]
    public function get include_subjective() : String
    {
        return _internal_include_subjective;
    }

    [Bindable(event="propertyChange")]
    public function get include_objective() : String
    {
        return _internal_include_objective;
    }

    [Bindable(event="propertyChange")]
    public function get company_name() : String
    {
        return _internal_company_name;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set training_from_date(value:String) : void
    {
        var oldValue:String = _internal_training_from_date;
        if (oldValue !== value)
        {
            _internal_training_from_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "training_from_date", oldValue, _internal_training_from_date));
        }
    }

    public function set training_to_date(value:String) : void
    {
        var oldValue:String = _internal_training_to_date;
        if (oldValue !== value)
        {
            _internal_training_to_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "training_to_date", oldValue, _internal_training_to_date));
        }
    }

    public function set training_limit(value:String) : void
    {
        var oldValue:String = _internal_training_limit;
        if (oldValue !== value)
        {
            _internal_training_limit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "training_limit", oldValue, _internal_training_limit));
        }
    }

    public function set test_from_date(value:String) : void
    {
        var oldValue:String = _internal_test_from_date;
        if (oldValue !== value)
        {
            _internal_test_from_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "test_from_date", oldValue, _internal_test_from_date));
        }
    }

    public function set test_to_date(value:String) : void
    {
        var oldValue:String = _internal_test_to_date;
        if (oldValue !== value)
        {
            _internal_test_to_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "test_to_date", oldValue, _internal_test_to_date));
        }
    }

    public function set interval_value(value:String) : void
    {
        var oldValue:String = _internal_interval_value;
        if (oldValue !== value)
        {
            _internal_interval_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "interval_value", oldValue, _internal_interval_value));
        }
    }

    public function set tweets_fin_time_delta_value(value:String) : void
    {
        var oldValue:String = _internal_tweets_fin_time_delta_value;
        if (oldValue !== value)
        {
            _internal_tweets_fin_time_delta_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweets_fin_time_delta_value", oldValue, _internal_tweets_fin_time_delta_value));
        }
    }

    public function set interval_unit(value:String) : void
    {
        var oldValue:String = _internal_interval_unit;
        if (oldValue !== value)
        {
            _internal_interval_unit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "interval_unit", oldValue, _internal_interval_unit));
        }
    }

    public function set tweets_fin_time_delta_unit(value:String) : void
    {
        var oldValue:String = _internal_tweets_fin_time_delta_unit;
        if (oldValue !== value)
        {
            _internal_tweets_fin_time_delta_unit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweets_fin_time_delta_unit", oldValue, _internal_tweets_fin_time_delta_unit));
        }
    }

    public function set tweet_source(value:String) : void
    {
        var oldValue:String = _internal_tweet_source;
        if (oldValue !== value)
        {
            _internal_tweet_source = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweet_source", oldValue, _internal_tweet_source));
        }
    }

    public function set remove_short_words(value:String) : void
    {
        var oldValue:String = _internal_remove_short_words;
        if (oldValue !== value)
        {
            _internal_remove_short_words = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "remove_short_words", oldValue, _internal_remove_short_words));
        }
    }

    public function set remove_stop_words(value:String) : void
    {
        var oldValue:String = _internal_remove_stop_words;
        if (oldValue !== value)
        {
            _internal_remove_stop_words = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "remove_stop_words", oldValue, _internal_remove_stop_words));
        }
    }

    public function set remove_low_info_words(value:String) : void
    {
        var oldValue:String = _internal_remove_low_info_words;
        if (oldValue !== value)
        {
            _internal_remove_low_info_words = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "remove_low_info_words", oldValue, _internal_remove_low_info_words));
        }
    }

    public function set num_of_inf_words(value:String) : void
    {
        var oldValue:String = _internal_num_of_inf_words;
        if (oldValue !== value)
        {
            _internal_num_of_inf_words = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_of_inf_words", oldValue, _internal_num_of_inf_words));
        }
    }

    public function set use_bigrams(value:String) : void
    {
        var oldValue:String = _internal_use_bigrams;
        if (oldValue !== value)
        {
            _internal_use_bigrams = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "use_bigrams", oldValue, _internal_use_bigrams));
        }
    }

    public function set remove_non_english(value:String) : void
    {
        var oldValue:String = _internal_remove_non_english;
        if (oldValue !== value)
        {
            _internal_remove_non_english = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "remove_non_english", oldValue, _internal_remove_non_english));
        }
    }

    public function set remove_irrelevant(value:String) : void
    {
        var oldValue:String = _internal_remove_irrelevant;
        if (oldValue !== value)
        {
            _internal_remove_irrelevant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "remove_irrelevant", oldValue, _internal_remove_irrelevant));
        }
    }

    public function set include_subjective(value:String) : void
    {
        var oldValue:String = _internal_include_subjective;
        if (oldValue !== value)
        {
            _internal_include_subjective = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "include_subjective", oldValue, _internal_include_subjective));
        }
    }

    public function set include_objective(value:String) : void
    {
        var oldValue:String = _internal_include_objective;
        if (oldValue !== value)
        {
            _internal_include_objective = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "include_objective", oldValue, _internal_include_objective));
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
    public function get _model() : _FinancialPredictionClassifierNLTKInputsEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FinancialPredictionClassifierNLTKInputsEntityMetadata) : void
    {
        var oldValue : _FinancialPredictionClassifierNLTKInputsEntityMetadata = model_internal::_dminternal_model;
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
