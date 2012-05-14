/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FinancialPredictionTask.as.
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
public class _Super_FinancialPredictionTask extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FinancialPredictionTaskEntityMetadata;
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
    private var _internal_prediction_task_id : int;
    private var _internal_company_name : String;
    private var _internal_date_run : Date;
    private var _internal_tweet_source : String;
    private var _internal_prediction_type : String;
    private var _internal_historical_current_type : String;
    private var _internal_tweets_fin_time_delta_value : int;
    private var _internal_tweets_fin_time_delta_unit : String;
    private var _internal_interval_value : int;
    private var _internal_interval_unit : String;
    private var _internal_training_limit : int;
    private var _internal_training_from_date : Date;
    private var _internal_training_to_date : Date;
    private var _internal_test_from_date : Date;
    private var _internal_test_to_date : Date;
    private var _internal_remove_short_words : String;
    private var _internal_remove_stop_words : String;
    private var _internal_remove_low_info_words : String;
    private var _internal_num_of_inf_words : int;
    private var _internal_use_bigrams : String;
    private var _internal_remove_non_english : String;
    private var _internal_remove_irrelevant : String;
    private var _internal_include_subjective : String;
    private var _internal_include_objective : String;
    private var _internal_accuracy : String;
    private var _internal_down_precision : Number;
    private var _internal_down_recall : Number;
    private var _internal_up_precision : Number;
    private var _internal_up_recall : Number;
    private var _internal_prediction : String;
    private var _internal_up_prediction_prob : Number;
    private var _internal_down_prediction_prob : Number;
    private var _internal_num_of_most_intersting_features_to_show : int;
    private var _internal_most_informative_features : String;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FinancialPredictionTask()
    {
        _model = new _FinancialPredictionTaskEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

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
    public function get date_run() : Date
    {
        return _internal_date_run;
    }

    [Bindable(event="propertyChange")]
    public function get tweet_source() : String
    {
        return _internal_tweet_source;
    }

    [Bindable(event="propertyChange")]
    public function get prediction_type() : String
    {
        return _internal_prediction_type;
    }

    [Bindable(event="propertyChange")]
    public function get historical_current_type() : String
    {
        return _internal_historical_current_type;
    }

    [Bindable(event="propertyChange")]
    public function get tweets_fin_time_delta_value() : int
    {
        return _internal_tweets_fin_time_delta_value;
    }

    [Bindable(event="propertyChange")]
    public function get tweets_fin_time_delta_unit() : String
    {
        return _internal_tweets_fin_time_delta_unit;
    }

    [Bindable(event="propertyChange")]
    public function get interval_value() : int
    {
        return _internal_interval_value;
    }

    [Bindable(event="propertyChange")]
    public function get interval_unit() : String
    {
        return _internal_interval_unit;
    }

    [Bindable(event="propertyChange")]
    public function get training_limit() : int
    {
        return _internal_training_limit;
    }

    [Bindable(event="propertyChange")]
    public function get training_from_date() : Date
    {
        return _internal_training_from_date;
    }

    [Bindable(event="propertyChange")]
    public function get training_to_date() : Date
    {
        return _internal_training_to_date;
    }

    [Bindable(event="propertyChange")]
    public function get test_from_date() : Date
    {
        return _internal_test_from_date;
    }

    [Bindable(event="propertyChange")]
    public function get test_to_date() : Date
    {
        return _internal_test_to_date;
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
    public function get num_of_inf_words() : int
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
    public function get accuracy() : String
    {
        return _internal_accuracy;
    }

    [Bindable(event="propertyChange")]
    public function get down_precision() : Number
    {
        return _internal_down_precision;
    }

    [Bindable(event="propertyChange")]
    public function get down_recall() : Number
    {
        return _internal_down_recall;
    }

    [Bindable(event="propertyChange")]
    public function get up_precision() : Number
    {
        return _internal_up_precision;
    }

    [Bindable(event="propertyChange")]
    public function get up_recall() : Number
    {
        return _internal_up_recall;
    }

    [Bindable(event="propertyChange")]
    public function get prediction() : String
    {
        return _internal_prediction;
    }

    [Bindable(event="propertyChange")]
    public function get up_prediction_prob() : Number
    {
        return _internal_up_prediction_prob;
    }

    [Bindable(event="propertyChange")]
    public function get down_prediction_prob() : Number
    {
        return _internal_down_prediction_prob;
    }

    [Bindable(event="propertyChange")]
    public function get num_of_most_intersting_features_to_show() : int
    {
        return _internal_num_of_most_intersting_features_to_show;
    }

    [Bindable(event="propertyChange")]
    public function get most_informative_features() : String
    {
        return _internal_most_informative_features;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

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

    public function set date_run(value:Date) : void
    {
        var oldValue:Date = _internal_date_run;
        if (oldValue !== value)
        {
            _internal_date_run = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "date_run", oldValue, _internal_date_run));
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

    public function set prediction_type(value:String) : void
    {
        var oldValue:String = _internal_prediction_type;
        if (oldValue !== value)
        {
            _internal_prediction_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "prediction_type", oldValue, _internal_prediction_type));
        }
    }

    public function set historical_current_type(value:String) : void
    {
        var oldValue:String = _internal_historical_current_type;
        if (oldValue !== value)
        {
            _internal_historical_current_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "historical_current_type", oldValue, _internal_historical_current_type));
        }
    }

    public function set tweets_fin_time_delta_value(value:int) : void
    {
        var oldValue:int = _internal_tweets_fin_time_delta_value;
        if (oldValue !== value)
        {
            _internal_tweets_fin_time_delta_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweets_fin_time_delta_value", oldValue, _internal_tweets_fin_time_delta_value));
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

    public function set interval_value(value:int) : void
    {
        var oldValue:int = _internal_interval_value;
        if (oldValue !== value)
        {
            _internal_interval_value = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "interval_value", oldValue, _internal_interval_value));
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

    public function set training_limit(value:int) : void
    {
        var oldValue:int = _internal_training_limit;
        if (oldValue !== value)
        {
            _internal_training_limit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "training_limit", oldValue, _internal_training_limit));
        }
    }

    public function set training_from_date(value:Date) : void
    {
        var oldValue:Date = _internal_training_from_date;
        if (oldValue !== value)
        {
            _internal_training_from_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "training_from_date", oldValue, _internal_training_from_date));
        }
    }

    public function set training_to_date(value:Date) : void
    {
        var oldValue:Date = _internal_training_to_date;
        if (oldValue !== value)
        {
            _internal_training_to_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "training_to_date", oldValue, _internal_training_to_date));
        }
    }

    public function set test_from_date(value:Date) : void
    {
        var oldValue:Date = _internal_test_from_date;
        if (oldValue !== value)
        {
            _internal_test_from_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "test_from_date", oldValue, _internal_test_from_date));
        }
    }

    public function set test_to_date(value:Date) : void
    {
        var oldValue:Date = _internal_test_to_date;
        if (oldValue !== value)
        {
            _internal_test_to_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "test_to_date", oldValue, _internal_test_to_date));
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

    public function set num_of_inf_words(value:int) : void
    {
        var oldValue:int = _internal_num_of_inf_words;
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

    public function set accuracy(value:String) : void
    {
        var oldValue:String = _internal_accuracy;
        if (oldValue !== value)
        {
            _internal_accuracy = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "accuracy", oldValue, _internal_accuracy));
        }
    }

    public function set down_precision(value:Number) : void
    {
        var oldValue:Number = _internal_down_precision;
        if (isNaN(_internal_down_precision) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_down_precision = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "down_precision", oldValue, _internal_down_precision));
        }
    }

    public function set down_recall(value:Number) : void
    {
        var oldValue:Number = _internal_down_recall;
        if (isNaN(_internal_down_recall) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_down_recall = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "down_recall", oldValue, _internal_down_recall));
        }
    }

    public function set up_precision(value:Number) : void
    {
        var oldValue:Number = _internal_up_precision;
        if (isNaN(_internal_up_precision) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_up_precision = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "up_precision", oldValue, _internal_up_precision));
        }
    }

    public function set up_recall(value:Number) : void
    {
        var oldValue:Number = _internal_up_recall;
        if (isNaN(_internal_up_recall) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_up_recall = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "up_recall", oldValue, _internal_up_recall));
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

    public function set up_prediction_prob(value:Number) : void
    {
        var oldValue:Number = _internal_up_prediction_prob;
        if (isNaN(_internal_up_prediction_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_up_prediction_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "up_prediction_prob", oldValue, _internal_up_prediction_prob));
        }
    }

    public function set down_prediction_prob(value:Number) : void
    {
        var oldValue:Number = _internal_down_prediction_prob;
        if (isNaN(_internal_down_prediction_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_down_prediction_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "down_prediction_prob", oldValue, _internal_down_prediction_prob));
        }
    }

    public function set num_of_most_intersting_features_to_show(value:int) : void
    {
        var oldValue:int = _internal_num_of_most_intersting_features_to_show;
        if (oldValue !== value)
        {
            _internal_num_of_most_intersting_features_to_show = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_of_most_intersting_features_to_show", oldValue, _internal_num_of_most_intersting_features_to_show));
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
    public function get _model() : _FinancialPredictionTaskEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FinancialPredictionTaskEntityMetadata) : void
    {
        var oldValue : _FinancialPredictionTaskEntityMetadata = model_internal::_dminternal_model;
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
