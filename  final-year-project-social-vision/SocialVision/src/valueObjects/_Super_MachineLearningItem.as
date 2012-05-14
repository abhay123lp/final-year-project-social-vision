/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - MachineLearningItem.as.
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
public class _Super_MachineLearningItem extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _MachineLearningItemEntityMetadata;
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
    private var _internal_tweet_id : int;
    private var _internal_name : String;
    private var _internal_tweet_source : String;
    private var _internal_data_group : String;
    private var _internal_is_classified : String;
    private var _internal_content : String;
    private var _internal_sentiment_relevance : String;
    private var _internal_is_english : String;
    private var _internal_relevant : String;
    private var _internal_subjectivity : String;
    private var _internal_is_neutral : String;
    private var _internal_sentiment : String;
    private var _internal_growth_recession : String;
    private var _internal_political_stability : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_MachineLearningItem()
    {
        _model = new _MachineLearningItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get tweet_id() : int
    {
        return _internal_tweet_id;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get tweet_source() : String
    {
        return _internal_tweet_source;
    }

    [Bindable(event="propertyChange")]
    public function get data_group() : String
    {
        return _internal_data_group;
    }

    [Bindable(event="propertyChange")]
    public function get is_classified() : String
    {
        return _internal_is_classified;
    }

    [Bindable(event="propertyChange")]
    public function get content() : String
    {
        return _internal_content;
    }

    [Bindable(event="propertyChange")]
    public function get sentiment_relevance() : String
    {
        return _internal_sentiment_relevance;
    }

    [Bindable(event="propertyChange")]
    public function get is_english() : String
    {
        return _internal_is_english;
    }

    [Bindable(event="propertyChange")]
    public function get relevant() : String
    {
        return _internal_relevant;
    }

    [Bindable(event="propertyChange")]
    public function get subjectivity() : String
    {
        return _internal_subjectivity;
    }

    [Bindable(event="propertyChange")]
    public function get is_neutral() : String
    {
        return _internal_is_neutral;
    }

    [Bindable(event="propertyChange")]
    public function get sentiment() : String
    {
        return _internal_sentiment;
    }

    [Bindable(event="propertyChange")]
    public function get growth_recession() : String
    {
        return _internal_growth_recession;
    }

    [Bindable(event="propertyChange")]
    public function get political_stability() : String
    {
        return _internal_political_stability;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set tweet_id(value:int) : void
    {
        var oldValue:int = _internal_tweet_id;
        if (oldValue !== value)
        {
            _internal_tweet_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweet_id", oldValue, _internal_tweet_id));
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

    public function set tweet_source(value:String) : void
    {
        var oldValue:String = _internal_tweet_source;
        if (oldValue !== value)
        {
            _internal_tweet_source = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tweet_source", oldValue, _internal_tweet_source));
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

    public function set is_classified(value:String) : void
    {
        var oldValue:String = _internal_is_classified;
        if (oldValue !== value)
        {
            _internal_is_classified = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_classified", oldValue, _internal_is_classified));
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

    public function set sentiment_relevance(value:String) : void
    {
        var oldValue:String = _internal_sentiment_relevance;
        if (oldValue !== value)
        {
            _internal_sentiment_relevance = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sentiment_relevance", oldValue, _internal_sentiment_relevance));
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

    public function set relevant(value:String) : void
    {
        var oldValue:String = _internal_relevant;
        if (oldValue !== value)
        {
            _internal_relevant = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "relevant", oldValue, _internal_relevant));
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

    public function set is_neutral(value:String) : void
    {
        var oldValue:String = _internal_is_neutral;
        if (oldValue !== value)
        {
            _internal_is_neutral = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_neutral", oldValue, _internal_is_neutral));
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

    public function set growth_recession(value:String) : void
    {
        var oldValue:String = _internal_growth_recession;
        if (oldValue !== value)
        {
            _internal_growth_recession = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "growth_recession", oldValue, _internal_growth_recession));
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
    public function get _model() : _MachineLearningItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _MachineLearningItemEntityMetadata) : void
    {
        var oldValue : _MachineLearningItemEntityMetadata = model_internal::_dminternal_model;
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
