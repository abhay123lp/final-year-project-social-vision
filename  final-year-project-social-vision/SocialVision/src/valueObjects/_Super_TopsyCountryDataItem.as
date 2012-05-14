/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TopsyCountryDataItem.as.
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
public class _Super_TopsyCountryDataItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _TopsyCountryDataItemEntityMetadata;
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
    private var _internal_idtopsy_table : int;
    private var _internal_name : String;
    private var _internal_type : String;
    private var _internal_query : String;
    private var _internal_title : String;
    private var _internal_url : String;
    private var _internal_score : Number;
    private var _internal__date : Date;
    private var _internal_content : String;
    private var _internal_total_search_results : int;
    private var _internal_trackback_permalink : String;
    private var _internal_hits : int;
    private var _internal_trackback_total : int;
    private var _internal_topsy_trackback_url : String;
    private var _internal_highlight : String;
    private var _internal_is_english : String;
    private var _internal_english_prob : Number;
    private var _internal_not_english_prob : Number;
    private var _internal_relevant : String;
    private var _internal_relevant_prob : Number;
    private var _internal_irrelevant_prob : Number;
    private var _internal_is_neutral : String;
    private var _internal_neutral_prob : Number;
    private var _internal_not_neutral_prob : Number;
    private var _internal_subjectivity : String;
    private var _internal_subjective_prob : Number;
    private var _internal_objective_prob : Number;
    private var _internal_sentiment : String;
    private var _internal_sentiment_pos_prob : Number;
    private var _internal_sentiment_neg_prob : Number;
    private var _internal_growth_recession : String;
    private var _internal_growth_prob : Number;
    private var _internal_recession_prob : Number;
    private var _internal_political_stability : String;
    private var _internal_politically_stable_prob : Number;
    private var _internal_politically_instable_prob : Number;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TopsyCountryDataItem()
    {
        _model = new _TopsyCountryDataItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get idtopsy_table() : int
    {
        return _internal_idtopsy_table;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get type() : String
    {
        return _internal_type;
    }

    [Bindable(event="propertyChange")]
    public function get query() : String
    {
        return _internal_query;
    }

    [Bindable(event="propertyChange")]
    public function get title() : String
    {
        return _internal_title;
    }

    [Bindable(event="propertyChange")]
    public function get url() : String
    {
        return _internal_url;
    }

    [Bindable(event="propertyChange")]
    public function get score() : Number
    {
        return _internal_score;
    }

    [Bindable(event="propertyChange")]
    public function get _date() : Date
    {
        return _internal__date;
    }

    [Bindable(event="propertyChange")]
    public function get content() : String
    {
        return _internal_content;
    }

    [Bindable(event="propertyChange")]
    public function get total_search_results() : int
    {
        return _internal_total_search_results;
    }

    [Bindable(event="propertyChange")]
    public function get trackback_permalink() : String
    {
        return _internal_trackback_permalink;
    }

    [Bindable(event="propertyChange")]
    public function get hits() : int
    {
        return _internal_hits;
    }

    [Bindable(event="propertyChange")]
    public function get trackback_total() : int
    {
        return _internal_trackback_total;
    }

    [Bindable(event="propertyChange")]
    public function get topsy_trackback_url() : String
    {
        return _internal_topsy_trackback_url;
    }

    [Bindable(event="propertyChange")]
    public function get highlight() : String
    {
        return _internal_highlight;
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
    public function get is_neutral() : String
    {
        return _internal_is_neutral;
    }

    [Bindable(event="propertyChange")]
    public function get neutral_prob() : Number
    {
        return _internal_neutral_prob;
    }

    [Bindable(event="propertyChange")]
    public function get not_neutral_prob() : Number
    {
        return _internal_not_neutral_prob;
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

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set idtopsy_table(value:int) : void
    {
        var oldValue:int = _internal_idtopsy_table;
        if (oldValue !== value)
        {
            _internal_idtopsy_table = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idtopsy_table", oldValue, _internal_idtopsy_table));
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

    public function set type(value:String) : void
    {
        var oldValue:String = _internal_type;
        if (oldValue !== value)
        {
            _internal_type = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "type", oldValue, _internal_type));
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

    public function set title(value:String) : void
    {
        var oldValue:String = _internal_title;
        if (oldValue !== value)
        {
            _internal_title = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "title", oldValue, _internal_title));
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

    public function set score(value:Number) : void
    {
        var oldValue:Number = _internal_score;
        if (isNaN(_internal_score) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_score = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "score", oldValue, _internal_score));
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

    public function set content(value:String) : void
    {
        var oldValue:String = _internal_content;
        if (oldValue !== value)
        {
            _internal_content = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "content", oldValue, _internal_content));
        }
    }

    public function set total_search_results(value:int) : void
    {
        var oldValue:int = _internal_total_search_results;
        if (oldValue !== value)
        {
            _internal_total_search_results = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "total_search_results", oldValue, _internal_total_search_results));
        }
    }

    public function set trackback_permalink(value:String) : void
    {
        var oldValue:String = _internal_trackback_permalink;
        if (oldValue !== value)
        {
            _internal_trackback_permalink = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "trackback_permalink", oldValue, _internal_trackback_permalink));
        }
    }

    public function set hits(value:int) : void
    {
        var oldValue:int = _internal_hits;
        if (oldValue !== value)
        {
            _internal_hits = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hits", oldValue, _internal_hits));
        }
    }

    public function set trackback_total(value:int) : void
    {
        var oldValue:int = _internal_trackback_total;
        if (oldValue !== value)
        {
            _internal_trackback_total = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "trackback_total", oldValue, _internal_trackback_total));
        }
    }

    public function set topsy_trackback_url(value:String) : void
    {
        var oldValue:String = _internal_topsy_trackback_url;
        if (oldValue !== value)
        {
            _internal_topsy_trackback_url = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "topsy_trackback_url", oldValue, _internal_topsy_trackback_url));
        }
    }

    public function set highlight(value:String) : void
    {
        var oldValue:String = _internal_highlight;
        if (oldValue !== value)
        {
            _internal_highlight = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "highlight", oldValue, _internal_highlight));
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

    public function set is_neutral(value:String) : void
    {
        var oldValue:String = _internal_is_neutral;
        if (oldValue !== value)
        {
            _internal_is_neutral = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_neutral", oldValue, _internal_is_neutral));
        }
    }

    public function set neutral_prob(value:Number) : void
    {
        var oldValue:Number = _internal_neutral_prob;
        if (isNaN(_internal_neutral_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_neutral_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "neutral_prob", oldValue, _internal_neutral_prob));
        }
    }

    public function set not_neutral_prob(value:Number) : void
    {
        var oldValue:Number = _internal_not_neutral_prob;
        if (isNaN(_internal_not_neutral_prob) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_not_neutral_prob = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "not_neutral_prob", oldValue, _internal_not_neutral_prob));
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
    public function get _model() : _TopsyCountryDataItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TopsyCountryDataItemEntityMetadata) : void
    {
        var oldValue : _TopsyCountryDataItemEntityMetadata = model_internal::_dminternal_model;
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
