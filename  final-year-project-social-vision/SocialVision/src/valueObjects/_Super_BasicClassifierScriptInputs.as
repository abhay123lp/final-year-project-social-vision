/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - BasicClassifierScriptInputs.as.
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
public class _Super_BasicClassifierScriptInputs extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _BasicClassifierScriptInputsEntityMetadata;
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
    private var _internal_remove_short_words : String;
    private var _internal_remove_stop_words : String;
    private var _internal_remove_low_info_words : String;
    private var _internal_num_of_inf_words : String;
    private var _internal_use_bigrams : String;
    private var _internal_num_of_most_intersting_features_to_show : String;
    private var _internal_num_of_training_tweets : String;
    private var _internal_num_of_test_tweets : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_BasicClassifierScriptInputs()
    {
        _model = new _BasicClassifierScriptInputsEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

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
    public function get num_of_most_intersting_features_to_show() : String
    {
        return _internal_num_of_most_intersting_features_to_show;
    }

    [Bindable(event="propertyChange")]
    public function get num_of_training_tweets() : String
    {
        return _internal_num_of_training_tweets;
    }

    [Bindable(event="propertyChange")]
    public function get num_of_test_tweets() : String
    {
        return _internal_num_of_test_tweets;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

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

    public function set num_of_most_intersting_features_to_show(value:String) : void
    {
        var oldValue:String = _internal_num_of_most_intersting_features_to_show;
        if (oldValue !== value)
        {
            _internal_num_of_most_intersting_features_to_show = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_of_most_intersting_features_to_show", oldValue, _internal_num_of_most_intersting_features_to_show));
        }
    }

    public function set num_of_training_tweets(value:String) : void
    {
        var oldValue:String = _internal_num_of_training_tweets;
        if (oldValue !== value)
        {
            _internal_num_of_training_tweets = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_of_training_tweets", oldValue, _internal_num_of_training_tweets));
        }
    }

    public function set num_of_test_tweets(value:String) : void
    {
        var oldValue:String = _internal_num_of_test_tweets;
        if (oldValue !== value)
        {
            _internal_num_of_test_tweets = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_of_test_tweets", oldValue, _internal_num_of_test_tweets));
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
    public function get _model() : _BasicClassifierScriptInputsEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _BasicClassifierScriptInputsEntityMetadata) : void
    {
        var oldValue : _BasicClassifierScriptInputsEntityMetadata = model_internal::_dminternal_model;
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
