/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TwitterRealTimeItem.as.
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
public class _Super_TwitterRealTimeItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _TwitterRealTimeItemEntityMetadata;
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
    private var _internal_idtwitter_real_time : int;
    private var _internal_query : String;
    private var _internal_data_group : String;
    private var _internal_inserted_date : Date;
    private var _internal_rounded_time : Date;
    private var _internal_created_at : Date;
    private var _internal_tweet : String;
    private var _internal_just_text : String;
    private var _internal_url : String;
    private var _internal_screen_name : String;
    private var _internal_is_english : String;
    private var _internal_english_prob : Number;
    private var _internal_not_english_prob : Number;
    private var _internal_relevant : String;
    private var _internal_relevant_prob : Number;
    private var _internal_irrelevant_prob : Number;
    private var _internal_subjectivity : String;
    private var _internal_subjective_prob : Number;
    private var _internal_objective_prob : Number;
    private var _internal_sentiment : String;
    private var _internal_sentiment_pos_prob : Number;
    private var _internal_sentiment_neg_prob : Number;
    private var _internal_sentiment_neu_prob : Number;
    private var _internal_financial_actual : String;
    private var _internal_financial_prediction : String;
    private var _internal_financial_change : Number;
    private var _internal_financial_up_prob : Number;
    private var _internal_financial_down_prob : Number;
    private var _internal_film_sentiment_overall : String;
    private var _internal_film_sentiment_pos_prob : Number;
    private var _internal_film_sentiment_neg_prob : Number;
    private var _internal_growth_recession : String;
    private var _internal_growth_prob : Number;
    private var _internal_recession_prob : Number;
    private var _internal_political_stability : String;
    private var _internal_politically_stable_prob : Number;
    private var _internal_politically_instable_prob : Number;
    private var _internal_IntelMention : String;
    private var _internal_SamsungMention : String;
    private var _internal_ImaginationTechMention : String;
    private var _internal_ImgtecMention : String;
    private var _internal_ARMMention : String;
    private var _internal_GoogleMention : String;
    private var _internal_AppleMention : String;
    private var _internal_HTCMention : String;
    private var _internal_SonyMention : String;
    private var _internal_BlackberryMention : String;
    private var _internal_NokiaMention : String;
    private var _internal_MotorolaMention : String;
    private var _internal_LGMention : String;
    private var _internal_MicrosoftMention : String;
    private var _internal_IBMMention : String;
    private var _internal_ARMHoldingsMention : String;
    private var _internal_RIMMention : String;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TwitterRealTimeItem()
    {
        _model = new _TwitterRealTimeItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get idtwitter_real_time() : int
    {
        return _internal_idtwitter_real_time;
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
    public function get inserted_date() : Date
    {
        return _internal_inserted_date;
    }

    [Bindable(event="propertyChange")]
    public function get rounded_time() : Date
    {
        return _internal_rounded_time;
    }

    [Bindable(event="propertyChange")]
    public function get created_at() : Date
    {
        return _internal_created_at;
    }

    [Bindable(event="propertyChange")]
    public function get tweet() : String
    {
        return _internal_tweet;
    }

    [Bindable(event="propertyChange")]
    public function get just_text() : String
    {
        return _internal_just_text;
    }

    [Bindable(event="propertyChange")]
    public function get url() : String
    {
        return _internal_url;
    }

    [Bindable(event="propertyChange")]
    public function get screen_name() : String
    {
        return _internal_screen_name;
    }

    [Bindable(event="propertyChange")]
    public function get is_english() : String
    {
        return _internal_is_english;
    }

    [Bindable(event="propertyChange")]
    public function get english_prob() : Number
    {
        return _internal_english_prob;
    }

    [Bindable(event="propertyChange")]
    public function get not_english_prob() : Number
    {
        return _internal_not_english_prob;
    }

    [Bindable(event="propertyChange")]
    public function get relevant() : String
    {
        return _internal_relevant;
    }

    [Bindable(event="propertyChange")]
    public function get relevant_prob() : Number
    {
        return _internal_relevant_prob;
    }

    [Bindable(event="propertyChange")]
    public function get irrelevant_prob() : Number
    {
        return _internal_irrelevant_prob;
    }

    [Bindable(event="propertyChange")]
    public function get subjectivity() : String
    {
        return _internal_subjectivity;
    }

    [Bindable(event="propertyChange")]
    public function get subjective_prob() : Number
    {
        return _internal_subjective_prob;
    }

    [Bindable(event="propertyChange")]
    public function get objective_prob() : Number
    {
        return _internal_objective_prob;
    }

    [Bindable(event="propertyChange")]
    public function get sentiment() : String
    {
        return _internal_sentiment;
    }

    [Bindable(event="propertyChange")]
    public function get sentiment_pos_prob() : Number
    {
        return _internal_sentiment_pos_prob;
    }

    [Bindable(event="propertyChange")]
    public function get sentiment_neg_prob() : Number
    {
        return _internal_sentiment_neg_prob;
    }

    [Bindable(event="propertyChange")]
    public function get sentiment_neu_prob() : Number
    {
        return _internal_sentiment_neu_prob;
    }

    [Bindable(event="propertyChange")]
    public function get financial_actual() : String
    {
        return _internal_financial_actual;
    }

    [Bindable(event="propertyChange")]
    public function get financial_prediction() : String
    {
        return _internal_financial_prediction;
    }

    [Bindable(event="propertyChange")]
    public function get financial_change() : Number
    {
        return _internal_financial_change;
    }

    [Bindable(event="propertyChange")]
    public function get financial_up_prob() : Number
    {
        return _internal_financial_up_prob;
    }

    [Bindable(event="propertyChange")]
    public function get financial_down_prob() : Number
    {
        return _internal_financial_down_prob;
    }

    [Bindable(event="propertyChange")]
    public function get film_sentiment_overall() : String
    {
        return _internal_film_sentiment_overall;
    }

    [Bindable(event="propertyChange")]
    public function get film_sentiment_pos_prob() : Number
    {
        return _internal_film_sentiment_pos_prob;
    }

    [Bindable(event="propertyChange")]
    public function get film_sentiment_neg_prob() : Number
    {
        return _internal_film_sentiment_neg_prob;
    }

    [Bindable(event="propertyChange")]
    public function get growth_recession() : String
    {
        return _internal_growth_recession;
    }

    [Bindable(event="propertyChange")]
    public function get growth_prob() : Number
    {
        return _internal_growth_prob;
    }

    [Bindable(event="propertyChange")]
    public function get recession_prob() : Number
    {
        return _internal_recession_prob;
    }

    [Bindable(event="propertyChange")]
    public function get political_stability() : String
    {
        return _internal_political_stability;
    }

    [Bindable(event="propertyChange")]
    public function get politically_stable_prob() : Number
    {
        return _internal_politically_stable_prob;
    }

    [Bindable(event="propertyChange")]
    public function get politically_instable_prob() : Number
    {
        return _internal_politically_instable_prob;
    }

    [Bindable(event="propertyChange")]
    public function get IntelMention() : String
    {
        return _internal_IntelMention;
    }

    [Bindable(event="propertyChange")]
    public function get SamsungMention() : String
    {
        return _internal_SamsungMention;
    }

    [Bindable(event="propertyChange")]
    public function get ImaginationTechMention() : String
    {
        return _internal_ImaginationTechMention;
    }

    [Bindable(event="propertyChange")]
    public function get ImgtecMention() : String
    {
        return _internal_ImgtecMention;
    }

    [Bindable(event="propertyChange")]
    public function get ARMMention() : String
    {
        return _internal_ARMMention;
    }

    [Bindable(event="propertyChange")]
    public function get GoogleMention() : String
    {
        return _internal_GoogleMention;
    }

    [Bindable(event="propertyChange")]
    public function get AppleMention() : String
    {
        return _internal_AppleMention;
    }

    [Bindable(event="propertyChange")]
    public function get HTCMention() : String
    {
        return _internal_HTCMention;
    }

    [Bindable(event="propertyChange")]
    public function get SonyMention() : String
    {
        return _internal_SonyMention;
    }

    [Bindable(event="propertyChange")]
    public function get BlackberryMention() : String
    {
        return _internal_BlackberryMention;
    }

    [Bindable(event="propertyChange")]
    public function get NokiaMention() : String
    {
        return _internal_NokiaMention;
    }

    [Bindable(event="propertyChange")]
    public function get MotorolaMention() : String
    {
        return _internal_MotorolaMention;
    }

    [Bindable(event="propertyChange")]
    public function get LGMention() : String
    {
        return _internal_LGMention;
    }

    [Bindable(event="propertyChange")]
    public function get MicrosoftMention() : String
    {
        return _internal_MicrosoftMention;
    }

    [Bindable(event="propertyChange")]
    public function get IBMMention() : String
    {
        return _internal_IBMMention;
    }

    [Bindable(event="propertyChange")]
    public function get ARMHoldingsMention() : String
    {
        return _internal_ARMHoldingsMention;
    }

    [Bindable(event="propertyChange")]
    public function get RIMMention() : String
    {
        return _internal_RIMMention;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set idtwitter_real_time(value:int) : void
    {
        var oldValue:int = _internal_idtwitter_real_time;
        if (oldValue !== value)
        {
            _internal_idtwitter_real_time = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idtwitter_real_time", oldValue, _internal_idtwitter_real_time));
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

    public function set inserted_date(value:Date) : void
    {
        var oldValue:Date = _internal_inserted_date;
        if (oldValue !== value)
        {
            _internal_inserted_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "inserted_date", oldValue, _internal_inserted_date));
        }
    }

    public function set rounded_time(value:Date) : void
    {
        var oldValue:Date = _internal_rounded_time;
        if (oldValue !== value)
        {
            _internal_rounded_time = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rounded_time", oldValue, _internal_rounded_time));
        }
    }

    public function set created_at(value:Date) : void
    {
        var oldValue:Date = _internal_created_at;
        if (oldValue !== value)
        {
            _internal_created_at = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_at", oldValue, _internal_created_at));
        }
    }

    public function set tweet(value:String) : void
    {
        var oldValue:String = _internal_tweet;
        if (oldValue !== value)
        {
            _internal_tweet = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweet", oldValue, _internal_tweet));
        }
    }

    public function set just_text(value:String) : void
    {
        var oldValue:String = _internal_just_text;
        if (oldValue !== value)
        {
            _internal_just_text = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "just_text", oldValue, _internal_just_text));
        }
    }

    public function set url(value:String) : void
    {
        var oldValue:String = _internal_url;
        if (oldValue !== value)
        {
            _internal_url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "url", oldValue, _internal_url));
        }
    }

    public function set screen_name(value:String) : void
    {
        var oldValue:String = _internal_screen_name;
        if (oldValue !== value)
        {
            _internal_screen_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "screen_name", oldValue, _internal_screen_name));
        }
    }

    public function set is_english(value:String) : void
    {
        var oldValue:String = _internal_is_english;
        if (oldValue !== value)
        {
            _internal_is_english = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_english", oldValue, _internal_is_english));
        }
    }

    public function set english_prob(value:Number) : void
    {
        var oldValue:Number = _internal_english_prob;
        if (isNaN(_internal_english_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_english_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "english_prob", oldValue, _internal_english_prob));
        }
    }

    public function set not_english_prob(value:Number) : void
    {
        var oldValue:Number = _internal_not_english_prob;
        if (isNaN(_internal_not_english_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_not_english_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "not_english_prob", oldValue, _internal_not_english_prob));
        }
    }

    public function set relevant(value:String) : void
    {
        var oldValue:String = _internal_relevant;
        if (oldValue !== value)
        {
            _internal_relevant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "relevant", oldValue, _internal_relevant));
        }
    }

    public function set relevant_prob(value:Number) : void
    {
        var oldValue:Number = _internal_relevant_prob;
        if (isNaN(_internal_relevant_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_relevant_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "relevant_prob", oldValue, _internal_relevant_prob));
        }
    }

    public function set irrelevant_prob(value:Number) : void
    {
        var oldValue:Number = _internal_irrelevant_prob;
        if (isNaN(_internal_irrelevant_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_irrelevant_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "irrelevant_prob", oldValue, _internal_irrelevant_prob));
        }
    }

    public function set subjectivity(value:String) : void
    {
        var oldValue:String = _internal_subjectivity;
        if (oldValue !== value)
        {
            _internal_subjectivity = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subjectivity", oldValue, _internal_subjectivity));
        }
    }

    public function set subjective_prob(value:Number) : void
    {
        var oldValue:Number = _internal_subjective_prob;
        if (isNaN(_internal_subjective_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_subjective_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subjective_prob", oldValue, _internal_subjective_prob));
        }
    }

    public function set objective_prob(value:Number) : void
    {
        var oldValue:Number = _internal_objective_prob;
        if (isNaN(_internal_objective_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_objective_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objective_prob", oldValue, _internal_objective_prob));
        }
    }

    public function set sentiment(value:String) : void
    {
        var oldValue:String = _internal_sentiment;
        if (oldValue !== value)
        {
            _internal_sentiment = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sentiment", oldValue, _internal_sentiment));
        }
    }

    public function set sentiment_pos_prob(value:Number) : void
    {
        var oldValue:Number = _internal_sentiment_pos_prob;
        if (isNaN(_internal_sentiment_pos_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_sentiment_pos_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sentiment_pos_prob", oldValue, _internal_sentiment_pos_prob));
        }
    }

    public function set sentiment_neg_prob(value:Number) : void
    {
        var oldValue:Number = _internal_sentiment_neg_prob;
        if (isNaN(_internal_sentiment_neg_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_sentiment_neg_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sentiment_neg_prob", oldValue, _internal_sentiment_neg_prob));
        }
    }

    public function set sentiment_neu_prob(value:Number) : void
    {
        var oldValue:Number = _internal_sentiment_neu_prob;
        if (isNaN(_internal_sentiment_neu_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_sentiment_neu_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sentiment_neu_prob", oldValue, _internal_sentiment_neu_prob));
        }
    }

    public function set financial_actual(value:String) : void
    {
        var oldValue:String = _internal_financial_actual;
        if (oldValue !== value)
        {
            _internal_financial_actual = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "financial_actual", oldValue, _internal_financial_actual));
        }
    }

    public function set financial_prediction(value:String) : void
    {
        var oldValue:String = _internal_financial_prediction;
        if (oldValue !== value)
        {
            _internal_financial_prediction = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "financial_prediction", oldValue, _internal_financial_prediction));
        }
    }

    public function set financial_change(value:Number) : void
    {
        var oldValue:Number = _internal_financial_change;
        if (isNaN(_internal_financial_change) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_financial_change = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "financial_change", oldValue, _internal_financial_change));
        }
    }

    public function set financial_up_prob(value:Number) : void
    {
        var oldValue:Number = _internal_financial_up_prob;
        if (isNaN(_internal_financial_up_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_financial_up_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "financial_up_prob", oldValue, _internal_financial_up_prob));
        }
    }

    public function set financial_down_prob(value:Number) : void
    {
        var oldValue:Number = _internal_financial_down_prob;
        if (isNaN(_internal_financial_down_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_financial_down_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "financial_down_prob", oldValue, _internal_financial_down_prob));
        }
    }

    public function set film_sentiment_overall(value:String) : void
    {
        var oldValue:String = _internal_film_sentiment_overall;
        if (oldValue !== value)
        {
            _internal_film_sentiment_overall = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "film_sentiment_overall", oldValue, _internal_film_sentiment_overall));
        }
    }

    public function set film_sentiment_pos_prob(value:Number) : void
    {
        var oldValue:Number = _internal_film_sentiment_pos_prob;
        if (isNaN(_internal_film_sentiment_pos_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_film_sentiment_pos_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "film_sentiment_pos_prob", oldValue, _internal_film_sentiment_pos_prob));
        }
    }

    public function set film_sentiment_neg_prob(value:Number) : void
    {
        var oldValue:Number = _internal_film_sentiment_neg_prob;
        if (isNaN(_internal_film_sentiment_neg_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_film_sentiment_neg_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "film_sentiment_neg_prob", oldValue, _internal_film_sentiment_neg_prob));
        }
    }

    public function set growth_recession(value:String) : void
    {
        var oldValue:String = _internal_growth_recession;
        if (oldValue !== value)
        {
            _internal_growth_recession = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "growth_recession", oldValue, _internal_growth_recession));
        }
    }

    public function set growth_prob(value:Number) : void
    {
        var oldValue:Number = _internal_growth_prob;
        if (isNaN(_internal_growth_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_growth_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "growth_prob", oldValue, _internal_growth_prob));
        }
    }

    public function set recession_prob(value:Number) : void
    {
        var oldValue:Number = _internal_recession_prob;
        if (isNaN(_internal_recession_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_recession_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "recession_prob", oldValue, _internal_recession_prob));
        }
    }

    public function set political_stability(value:String) : void
    {
        var oldValue:String = _internal_political_stability;
        if (oldValue !== value)
        {
            _internal_political_stability = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "political_stability", oldValue, _internal_political_stability));
        }
    }

    public function set politically_stable_prob(value:Number) : void
    {
        var oldValue:Number = _internal_politically_stable_prob;
        if (isNaN(_internal_politically_stable_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_politically_stable_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "politically_stable_prob", oldValue, _internal_politically_stable_prob));
        }
    }

    public function set politically_instable_prob(value:Number) : void
    {
        var oldValue:Number = _internal_politically_instable_prob;
        if (isNaN(_internal_politically_instable_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_politically_instable_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "politically_instable_prob", oldValue, _internal_politically_instable_prob));
        }
    }

    public function set IntelMention(value:String) : void
    {
        var oldValue:String = _internal_IntelMention;
        if (oldValue !== value)
        {
            _internal_IntelMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IntelMention", oldValue, _internal_IntelMention));
        }
    }

    public function set SamsungMention(value:String) : void
    {
        var oldValue:String = _internal_SamsungMention;
        if (oldValue !== value)
        {
            _internal_SamsungMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "SamsungMention", oldValue, _internal_SamsungMention));
        }
    }

    public function set ImaginationTechMention(value:String) : void
    {
        var oldValue:String = _internal_ImaginationTechMention;
        if (oldValue !== value)
        {
            _internal_ImaginationTechMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ImaginationTechMention", oldValue, _internal_ImaginationTechMention));
        }
    }

    public function set ImgtecMention(value:String) : void
    {
        var oldValue:String = _internal_ImgtecMention;
        if (oldValue !== value)
        {
            _internal_ImgtecMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ImgtecMention", oldValue, _internal_ImgtecMention));
        }
    }

    public function set ARMMention(value:String) : void
    {
        var oldValue:String = _internal_ARMMention;
        if (oldValue !== value)
        {
            _internal_ARMMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ARMMention", oldValue, _internal_ARMMention));
        }
    }

    public function set GoogleMention(value:String) : void
    {
        var oldValue:String = _internal_GoogleMention;
        if (oldValue !== value)
        {
            _internal_GoogleMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "GoogleMention", oldValue, _internal_GoogleMention));
        }
    }

    public function set AppleMention(value:String) : void
    {
        var oldValue:String = _internal_AppleMention;
        if (oldValue !== value)
        {
            _internal_AppleMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "AppleMention", oldValue, _internal_AppleMention));
        }
    }

    public function set HTCMention(value:String) : void
    {
        var oldValue:String = _internal_HTCMention;
        if (oldValue !== value)
        {
            _internal_HTCMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "HTCMention", oldValue, _internal_HTCMention));
        }
    }

    public function set SonyMention(value:String) : void
    {
        var oldValue:String = _internal_SonyMention;
        if (oldValue !== value)
        {
            _internal_SonyMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "SonyMention", oldValue, _internal_SonyMention));
        }
    }

    public function set BlackberryMention(value:String) : void
    {
        var oldValue:String = _internal_BlackberryMention;
        if (oldValue !== value)
        {
            _internal_BlackberryMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "BlackberryMention", oldValue, _internal_BlackberryMention));
        }
    }

    public function set NokiaMention(value:String) : void
    {
        var oldValue:String = _internal_NokiaMention;
        if (oldValue !== value)
        {
            _internal_NokiaMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NokiaMention", oldValue, _internal_NokiaMention));
        }
    }

    public function set MotorolaMention(value:String) : void
    {
        var oldValue:String = _internal_MotorolaMention;
        if (oldValue !== value)
        {
            _internal_MotorolaMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "MotorolaMention", oldValue, _internal_MotorolaMention));
        }
    }

    public function set LGMention(value:String) : void
    {
        var oldValue:String = _internal_LGMention;
        if (oldValue !== value)
        {
            _internal_LGMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "LGMention", oldValue, _internal_LGMention));
        }
    }

    public function set MicrosoftMention(value:String) : void
    {
        var oldValue:String = _internal_MicrosoftMention;
        if (oldValue !== value)
        {
            _internal_MicrosoftMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "MicrosoftMention", oldValue, _internal_MicrosoftMention));
        }
    }

    public function set IBMMention(value:String) : void
    {
        var oldValue:String = _internal_IBMMention;
        if (oldValue !== value)
        {
            _internal_IBMMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IBMMention", oldValue, _internal_IBMMention));
        }
    }

    public function set ARMHoldingsMention(value:String) : void
    {
        var oldValue:String = _internal_ARMHoldingsMention;
        if (oldValue !== value)
        {
            _internal_ARMHoldingsMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ARMHoldingsMention", oldValue, _internal_ARMHoldingsMention));
        }
    }

    public function set RIMMention(value:String) : void
    {
        var oldValue:String = _internal_RIMMention;
        if (oldValue !== value)
        {
            _internal_RIMMention = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RIMMention", oldValue, _internal_RIMMention));
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
    public function get _model() : _TwitterRealTimeItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TwitterRealTimeItemEntityMetadata) : void
    {
        var oldValue : _TwitterRealTimeItemEntityMetadata = model_internal::_dminternal_model;
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
