/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TwitterProcessedDataItem.as.
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
public class _Super_TwitterProcessedDataItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _TwitterProcessedDataItemEntityMetadata;
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
    private var _internal_id_twitter_processed : int;
    private var _internal_name : String;
    private var _internal_query : String;
    private var _internal_data_group : String;
    private var _internal__date : Date;
    private var _internal_no_tweets_collected : int;
    private var _internal_tweet_rate : Number;
    private var _internal_is_quarter_hour : String;
    private var _internal_is_hour : String;
    private var _internal_is_day : String;
    private var _internal_most_used_words : String;
    private var _internal_no_english : int;
    private var _internal_no_not_english : int;
    private var _internal_no_relevant : int;
    private var _internal_no_irrelevant : int;
    private var _internal_no_neutral : int;
    private var _internal_no_not_neutral : int;
    private var _internal_no_subjective : int;
    private var _internal_no_objective : int;
    private var _internal_no_positive_sentiments : int;
    private var _internal_no_negative_sentiments : int;
    private var _internal_no_growth_comments : int;
    private var _internal_no_recession_comments : int;
    private var _internal_no_politically_stable_comments : int;
    private var _internal_no_politically_instable_comments : int;
    private var _internal_no_Intel_comments : int;
    private var _internal_no_Samsung_comments : int;
    private var _internal_no_Imagination_Technologies_comments : int;
    private var _internal_no_Imgtec_comments : int;
    private var _internal_no_ARM_comments : int;
    private var _internal_no_Google_comments : int;
    private var _internal_no_Apple_comments : int;
    private var _internal_no_HTC_comments : int;
    private var _internal_no_Sony_comments : int;
    private var _internal_no_Blackberry_comments : int;
    private var _internal_no_Nokia_comments : int;
    private var _internal_no_Motorola_comments : int;
    private var _internal_no_LG_comments : int;
    private var _internal_no_Microsoft_comments : int;
    private var _internal_no_IBM_comments : int;
    private var _internal_no_ARM_Holdings_comments : int;
    private var _internal_no_RIM_comments : int;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TwitterProcessedDataItem()
    {
        _model = new _TwitterProcessedDataItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id_twitter_processed() : int
    {
        return _internal_id_twitter_processed;
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
    public function get data_group() : String
    {
        return _internal_data_group;
    }

    [Bindable(event="propertyChange")]
    public function get _date() : Date
    {
        return _internal__date;
    }

    [Bindable(event="propertyChange")]
    public function get no_tweets_collected() : int
    {
        return _internal_no_tweets_collected;
    }

    [Bindable(event="propertyChange")]
    public function get tweet_rate() : Number
    {
        return _internal_tweet_rate;
    }

    [Bindable(event="propertyChange")]
    public function get is_quarter_hour() : String
    {
        return _internal_is_quarter_hour;
    }

    [Bindable(event="propertyChange")]
    public function get is_hour() : String
    {
        return _internal_is_hour;
    }

    [Bindable(event="propertyChange")]
    public function get is_day() : String
    {
        return _internal_is_day;
    }

    [Bindable(event="propertyChange")]
    public function get most_used_words() : String
    {
        return _internal_most_used_words;
    }

    [Bindable(event="propertyChange")]
    public function get no_english() : int
    {
        return _internal_no_english;
    }

    [Bindable(event="propertyChange")]
    public function get no_not_english() : int
    {
        return _internal_no_not_english;
    }

    [Bindable(event="propertyChange")]
    public function get no_relevant() : int
    {
        return _internal_no_relevant;
    }

    [Bindable(event="propertyChange")]
    public function get no_irrelevant() : int
    {
        return _internal_no_irrelevant;
    }

    [Bindable(event="propertyChange")]
    public function get no_neutral() : int
    {
        return _internal_no_neutral;
    }

    [Bindable(event="propertyChange")]
    public function get no_not_neutral() : int
    {
        return _internal_no_not_neutral;
    }

    [Bindable(event="propertyChange")]
    public function get no_subjective() : int
    {
        return _internal_no_subjective;
    }

    [Bindable(event="propertyChange")]
    public function get no_objective() : int
    {
        return _internal_no_objective;
    }

    [Bindable(event="propertyChange")]
    public function get no_positive_sentiments() : int
    {
        return _internal_no_positive_sentiments;
    }

    [Bindable(event="propertyChange")]
    public function get no_negative_sentiments() : int
    {
        return _internal_no_negative_sentiments;
    }

    [Bindable(event="propertyChange")]
    public function get no_growth_comments() : int
    {
        return _internal_no_growth_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_recession_comments() : int
    {
        return _internal_no_recession_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_politically_stable_comments() : int
    {
        return _internal_no_politically_stable_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_politically_instable_comments() : int
    {
        return _internal_no_politically_instable_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Intel_comments() : int
    {
        return _internal_no_Intel_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Samsung_comments() : int
    {
        return _internal_no_Samsung_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Imagination_Technologies_comments() : int
    {
        return _internal_no_Imagination_Technologies_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Imgtec_comments() : int
    {
        return _internal_no_Imgtec_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_ARM_comments() : int
    {
        return _internal_no_ARM_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Google_comments() : int
    {
        return _internal_no_Google_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Apple_comments() : int
    {
        return _internal_no_Apple_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_HTC_comments() : int
    {
        return _internal_no_HTC_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Sony_comments() : int
    {
        return _internal_no_Sony_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Blackberry_comments() : int
    {
        return _internal_no_Blackberry_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Nokia_comments() : int
    {
        return _internal_no_Nokia_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Motorola_comments() : int
    {
        return _internal_no_Motorola_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_LG_comments() : int
    {
        return _internal_no_LG_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_Microsoft_comments() : int
    {
        return _internal_no_Microsoft_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_IBM_comments() : int
    {
        return _internal_no_IBM_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_ARM_Holdings_comments() : int
    {
        return _internal_no_ARM_Holdings_comments;
    }

    [Bindable(event="propertyChange")]
    public function get no_RIM_comments() : int
    {
        return _internal_no_RIM_comments;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id_twitter_processed(value:int) : void
    {
        var oldValue:int = _internal_id_twitter_processed;
        if (oldValue !== value)
        {
            _internal_id_twitter_processed = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_twitter_processed", oldValue, _internal_id_twitter_processed));
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

    public function set data_group(value:String) : void
    {
        var oldValue:String = _internal_data_group;
        if (oldValue !== value)
        {
            _internal_data_group = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "data_group", oldValue, _internal_data_group));
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

    public function set no_tweets_collected(value:int) : void
    {
        var oldValue:int = _internal_no_tweets_collected;
        if (oldValue !== value)
        {
            _internal_no_tweets_collected = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_tweets_collected", oldValue, _internal_no_tweets_collected));
        }
    }

    public function set tweet_rate(value:Number) : void
    {
        var oldValue:Number = _internal_tweet_rate;
        if (isNaN(_internal_tweet_rate) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_tweet_rate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweet_rate", oldValue, _internal_tweet_rate));
        }
    }

    public function set is_quarter_hour(value:String) : void
    {
        var oldValue:String = _internal_is_quarter_hour;
        if (oldValue !== value)
        {
            _internal_is_quarter_hour = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_quarter_hour", oldValue, _internal_is_quarter_hour));
        }
    }

    public function set is_hour(value:String) : void
    {
        var oldValue:String = _internal_is_hour;
        if (oldValue !== value)
        {
            _internal_is_hour = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_hour", oldValue, _internal_is_hour));
        }
    }

    public function set is_day(value:String) : void
    {
        var oldValue:String = _internal_is_day;
        if (oldValue !== value)
        {
            _internal_is_day = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_day", oldValue, _internal_is_day));
        }
    }

    public function set most_used_words(value:String) : void
    {
        var oldValue:String = _internal_most_used_words;
        if (oldValue !== value)
        {
            _internal_most_used_words = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "most_used_words", oldValue, _internal_most_used_words));
        }
    }

    public function set no_english(value:int) : void
    {
        var oldValue:int = _internal_no_english;
        if (oldValue !== value)
        {
            _internal_no_english = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_english", oldValue, _internal_no_english));
        }
    }

    public function set no_not_english(value:int) : void
    {
        var oldValue:int = _internal_no_not_english;
        if (oldValue !== value)
        {
            _internal_no_not_english = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_not_english", oldValue, _internal_no_not_english));
        }
    }

    public function set no_relevant(value:int) : void
    {
        var oldValue:int = _internal_no_relevant;
        if (oldValue !== value)
        {
            _internal_no_relevant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_relevant", oldValue, _internal_no_relevant));
        }
    }

    public function set no_irrelevant(value:int) : void
    {
        var oldValue:int = _internal_no_irrelevant;
        if (oldValue !== value)
        {
            _internal_no_irrelevant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_irrelevant", oldValue, _internal_no_irrelevant));
        }
    }

    public function set no_neutral(value:int) : void
    {
        var oldValue:int = _internal_no_neutral;
        if (oldValue !== value)
        {
            _internal_no_neutral = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_neutral", oldValue, _internal_no_neutral));
        }
    }

    public function set no_not_neutral(value:int) : void
    {
        var oldValue:int = _internal_no_not_neutral;
        if (oldValue !== value)
        {
            _internal_no_not_neutral = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_not_neutral", oldValue, _internal_no_not_neutral));
        }
    }

    public function set no_subjective(value:int) : void
    {
        var oldValue:int = _internal_no_subjective;
        if (oldValue !== value)
        {
            _internal_no_subjective = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_subjective", oldValue, _internal_no_subjective));
        }
    }

    public function set no_objective(value:int) : void
    {
        var oldValue:int = _internal_no_objective;
        if (oldValue !== value)
        {
            _internal_no_objective = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_objective", oldValue, _internal_no_objective));
        }
    }

    public function set no_positive_sentiments(value:int) : void
    {
        var oldValue:int = _internal_no_positive_sentiments;
        if (oldValue !== value)
        {
            _internal_no_positive_sentiments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_positive_sentiments", oldValue, _internal_no_positive_sentiments));
        }
    }

    public function set no_negative_sentiments(value:int) : void
    {
        var oldValue:int = _internal_no_negative_sentiments;
        if (oldValue !== value)
        {
            _internal_no_negative_sentiments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_negative_sentiments", oldValue, _internal_no_negative_sentiments));
        }
    }

    public function set no_growth_comments(value:int) : void
    {
        var oldValue:int = _internal_no_growth_comments;
        if (oldValue !== value)
        {
            _internal_no_growth_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_growth_comments", oldValue, _internal_no_growth_comments));
        }
    }

    public function set no_recession_comments(value:int) : void
    {
        var oldValue:int = _internal_no_recession_comments;
        if (oldValue !== value)
        {
            _internal_no_recession_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_recession_comments", oldValue, _internal_no_recession_comments));
        }
    }

    public function set no_politically_stable_comments(value:int) : void
    {
        var oldValue:int = _internal_no_politically_stable_comments;
        if (oldValue !== value)
        {
            _internal_no_politically_stable_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_politically_stable_comments", oldValue, _internal_no_politically_stable_comments));
        }
    }

    public function set no_politically_instable_comments(value:int) : void
    {
        var oldValue:int = _internal_no_politically_instable_comments;
        if (oldValue !== value)
        {
            _internal_no_politically_instable_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_politically_instable_comments", oldValue, _internal_no_politically_instable_comments));
        }
    }

    public function set no_Intel_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Intel_comments;
        if (oldValue !== value)
        {
            _internal_no_Intel_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Intel_comments", oldValue, _internal_no_Intel_comments));
        }
    }

    public function set no_Samsung_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Samsung_comments;
        if (oldValue !== value)
        {
            _internal_no_Samsung_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Samsung_comments", oldValue, _internal_no_Samsung_comments));
        }
    }

    public function set no_Imagination_Technologies_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Imagination_Technologies_comments;
        if (oldValue !== value)
        {
            _internal_no_Imagination_Technologies_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Imagination_Technologies_comments", oldValue, _internal_no_Imagination_Technologies_comments));
        }
    }

    public function set no_Imgtec_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Imgtec_comments;
        if (oldValue !== value)
        {
            _internal_no_Imgtec_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Imgtec_comments", oldValue, _internal_no_Imgtec_comments));
        }
    }

    public function set no_ARM_comments(value:int) : void
    {
        var oldValue:int = _internal_no_ARM_comments;
        if (oldValue !== value)
        {
            _internal_no_ARM_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_ARM_comments", oldValue, _internal_no_ARM_comments));
        }
    }

    public function set no_Google_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Google_comments;
        if (oldValue !== value)
        {
            _internal_no_Google_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Google_comments", oldValue, _internal_no_Google_comments));
        }
    }

    public function set no_Apple_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Apple_comments;
        if (oldValue !== value)
        {
            _internal_no_Apple_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Apple_comments", oldValue, _internal_no_Apple_comments));
        }
    }

    public function set no_HTC_comments(value:int) : void
    {
        var oldValue:int = _internal_no_HTC_comments;
        if (oldValue !== value)
        {
            _internal_no_HTC_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_HTC_comments", oldValue, _internal_no_HTC_comments));
        }
    }

    public function set no_Sony_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Sony_comments;
        if (oldValue !== value)
        {
            _internal_no_Sony_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Sony_comments", oldValue, _internal_no_Sony_comments));
        }
    }

    public function set no_Blackberry_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Blackberry_comments;
        if (oldValue !== value)
        {
            _internal_no_Blackberry_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Blackberry_comments", oldValue, _internal_no_Blackberry_comments));
        }
    }

    public function set no_Nokia_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Nokia_comments;
        if (oldValue !== value)
        {
            _internal_no_Nokia_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Nokia_comments", oldValue, _internal_no_Nokia_comments));
        }
    }

    public function set no_Motorola_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Motorola_comments;
        if (oldValue !== value)
        {
            _internal_no_Motorola_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Motorola_comments", oldValue, _internal_no_Motorola_comments));
        }
    }

    public function set no_LG_comments(value:int) : void
    {
        var oldValue:int = _internal_no_LG_comments;
        if (oldValue !== value)
        {
            _internal_no_LG_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_LG_comments", oldValue, _internal_no_LG_comments));
        }
    }

    public function set no_Microsoft_comments(value:int) : void
    {
        var oldValue:int = _internal_no_Microsoft_comments;
        if (oldValue !== value)
        {
            _internal_no_Microsoft_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_Microsoft_comments", oldValue, _internal_no_Microsoft_comments));
        }
    }

    public function set no_IBM_comments(value:int) : void
    {
        var oldValue:int = _internal_no_IBM_comments;
        if (oldValue !== value)
        {
            _internal_no_IBM_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_IBM_comments", oldValue, _internal_no_IBM_comments));
        }
    }

    public function set no_ARM_Holdings_comments(value:int) : void
    {
        var oldValue:int = _internal_no_ARM_Holdings_comments;
        if (oldValue !== value)
        {
            _internal_no_ARM_Holdings_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_ARM_Holdings_comments", oldValue, _internal_no_ARM_Holdings_comments));
        }
    }

    public function set no_RIM_comments(value:int) : void
    {
        var oldValue:int = _internal_no_RIM_comments;
        if (oldValue !== value)
        {
            _internal_no_RIM_comments = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "no_RIM_comments", oldValue, _internal_no_RIM_comments));
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
    public function get _model() : _TwitterProcessedDataItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TwitterProcessedDataItemEntityMetadata) : void
    {
        var oldValue : _TwitterProcessedDataItemEntityMetadata = model_internal::_dminternal_model;
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
