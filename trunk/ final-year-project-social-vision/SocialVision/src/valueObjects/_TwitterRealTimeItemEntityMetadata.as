
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _TwitterRealTimeItemEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("idtwitter_real_time", "query", "data_group", "inserted_date", "rounded_time", "created_at", "tweet", "just_text", "url", "screen_name", "is_english", "english_prob", "not_english_prob", "relevant", "relevant_prob", "irrelevant_prob", "subjectivity", "subjective_prob", "objective_prob", "sentiment", "sentiment_pos_prob", "sentiment_neg_prob", "sentiment_neu_prob", "financial_actual", "financial_prediction", "financial_change", "financial_up_prob", "financial_down_prob", "film_sentiment_overall", "film_sentiment_pos_prob", "film_sentiment_neg_prob", "growth_recession", "growth_prob", "recession_prob", "political_stability", "politically_stable_prob", "politically_instable_prob", "IntelMention", "SamsungMention", "ImaginationTechMention", "ImgtecMention", "ARMMention", "GoogleMention", "AppleMention", "HTCMention", "SonyMention", "BlackberryMention", "NokiaMention", "MotorolaMention", "LGMention", "MicrosoftMention", "IBMMention", "ARMHoldingsMention", "RIMMention");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("idtwitter_real_time", "query", "data_group", "inserted_date", "rounded_time", "created_at", "tweet", "just_text", "url", "screen_name", "is_english", "english_prob", "not_english_prob", "relevant", "relevant_prob", "irrelevant_prob", "subjectivity", "subjective_prob", "objective_prob", "sentiment", "sentiment_pos_prob", "sentiment_neg_prob", "sentiment_neu_prob", "financial_actual", "financial_prediction", "financial_change", "financial_up_prob", "financial_down_prob", "film_sentiment_overall", "film_sentiment_pos_prob", "film_sentiment_neg_prob", "growth_recession", "growth_prob", "recession_prob", "political_stability", "politically_stable_prob", "politically_instable_prob", "IntelMention", "SamsungMention", "ImaginationTechMention", "ImgtecMention", "ARMMention", "GoogleMention", "AppleMention", "HTCMention", "SonyMention", "BlackberryMention", "NokiaMention", "MotorolaMention", "LGMention", "MicrosoftMention", "IBMMention", "ARMHoldingsMention", "RIMMention");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("idtwitter_real_time", "query", "data_group", "inserted_date", "rounded_time", "created_at", "tweet", "just_text", "url", "screen_name", "is_english", "english_prob", "not_english_prob", "relevant", "relevant_prob", "irrelevant_prob", "subjectivity", "subjective_prob", "objective_prob", "sentiment", "sentiment_pos_prob", "sentiment_neg_prob", "sentiment_neu_prob", "financial_actual", "financial_prediction", "financial_change", "financial_up_prob", "financial_down_prob", "film_sentiment_overall", "film_sentiment_pos_prob", "film_sentiment_neg_prob", "growth_recession", "growth_prob", "recession_prob", "political_stability", "politically_stable_prob", "politically_instable_prob", "IntelMention", "SamsungMention", "ImaginationTechMention", "ImgtecMention", "ARMMention", "GoogleMention", "AppleMention", "HTCMention", "SonyMention", "BlackberryMention", "NokiaMention", "MotorolaMention", "LGMention", "MicrosoftMention", "IBMMention", "ARMHoldingsMention", "RIMMention");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("idtwitter_real_time", "query", "data_group", "inserted_date", "rounded_time", "created_at", "tweet", "just_text", "url", "screen_name", "is_english", "english_prob", "not_english_prob", "relevant", "relevant_prob", "irrelevant_prob", "subjectivity", "subjective_prob", "objective_prob", "sentiment", "sentiment_pos_prob", "sentiment_neg_prob", "sentiment_neu_prob", "financial_actual", "financial_prediction", "financial_change", "financial_up_prob", "financial_down_prob", "film_sentiment_overall", "film_sentiment_pos_prob", "film_sentiment_neg_prob", "growth_recession", "growth_prob", "recession_prob", "political_stability", "politically_stable_prob", "politically_instable_prob", "IntelMention", "SamsungMention", "ImaginationTechMention", "ImgtecMention", "ARMMention", "GoogleMention", "AppleMention", "HTCMention", "SonyMention", "BlackberryMention", "NokiaMention", "MotorolaMention", "LGMention", "MicrosoftMention", "IBMMention", "ARMHoldingsMention", "RIMMention");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "TwitterRealTimeItem";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_TwitterRealTimeItem;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _TwitterRealTimeItemEntityMetadata(value : _Super_TwitterRealTimeItem)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["idtwitter_real_time"] = new Array();
            model_internal::dependentsOnMap["query"] = new Array();
            model_internal::dependentsOnMap["data_group"] = new Array();
            model_internal::dependentsOnMap["inserted_date"] = new Array();
            model_internal::dependentsOnMap["rounded_time"] = new Array();
            model_internal::dependentsOnMap["created_at"] = new Array();
            model_internal::dependentsOnMap["tweet"] = new Array();
            model_internal::dependentsOnMap["just_text"] = new Array();
            model_internal::dependentsOnMap["url"] = new Array();
            model_internal::dependentsOnMap["screen_name"] = new Array();
            model_internal::dependentsOnMap["is_english"] = new Array();
            model_internal::dependentsOnMap["english_prob"] = new Array();
            model_internal::dependentsOnMap["not_english_prob"] = new Array();
            model_internal::dependentsOnMap["relevant"] = new Array();
            model_internal::dependentsOnMap["relevant_prob"] = new Array();
            model_internal::dependentsOnMap["irrelevant_prob"] = new Array();
            model_internal::dependentsOnMap["subjectivity"] = new Array();
            model_internal::dependentsOnMap["subjective_prob"] = new Array();
            model_internal::dependentsOnMap["objective_prob"] = new Array();
            model_internal::dependentsOnMap["sentiment"] = new Array();
            model_internal::dependentsOnMap["sentiment_pos_prob"] = new Array();
            model_internal::dependentsOnMap["sentiment_neg_prob"] = new Array();
            model_internal::dependentsOnMap["sentiment_neu_prob"] = new Array();
            model_internal::dependentsOnMap["financial_actual"] = new Array();
            model_internal::dependentsOnMap["financial_prediction"] = new Array();
            model_internal::dependentsOnMap["financial_change"] = new Array();
            model_internal::dependentsOnMap["financial_up_prob"] = new Array();
            model_internal::dependentsOnMap["financial_down_prob"] = new Array();
            model_internal::dependentsOnMap["film_sentiment_overall"] = new Array();
            model_internal::dependentsOnMap["film_sentiment_pos_prob"] = new Array();
            model_internal::dependentsOnMap["film_sentiment_neg_prob"] = new Array();
            model_internal::dependentsOnMap["growth_recession"] = new Array();
            model_internal::dependentsOnMap["growth_prob"] = new Array();
            model_internal::dependentsOnMap["recession_prob"] = new Array();
            model_internal::dependentsOnMap["political_stability"] = new Array();
            model_internal::dependentsOnMap["politically_stable_prob"] = new Array();
            model_internal::dependentsOnMap["politically_instable_prob"] = new Array();
            model_internal::dependentsOnMap["IntelMention"] = new Array();
            model_internal::dependentsOnMap["SamsungMention"] = new Array();
            model_internal::dependentsOnMap["ImaginationTechMention"] = new Array();
            model_internal::dependentsOnMap["ImgtecMention"] = new Array();
            model_internal::dependentsOnMap["ARMMention"] = new Array();
            model_internal::dependentsOnMap["GoogleMention"] = new Array();
            model_internal::dependentsOnMap["AppleMention"] = new Array();
            model_internal::dependentsOnMap["HTCMention"] = new Array();
            model_internal::dependentsOnMap["SonyMention"] = new Array();
            model_internal::dependentsOnMap["BlackberryMention"] = new Array();
            model_internal::dependentsOnMap["NokiaMention"] = new Array();
            model_internal::dependentsOnMap["MotorolaMention"] = new Array();
            model_internal::dependentsOnMap["LGMention"] = new Array();
            model_internal::dependentsOnMap["MicrosoftMention"] = new Array();
            model_internal::dependentsOnMap["IBMMention"] = new Array();
            model_internal::dependentsOnMap["ARMHoldingsMention"] = new Array();
            model_internal::dependentsOnMap["RIMMention"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["idtwitter_real_time"] = "int";
        model_internal::propertyTypeMap["query"] = "String";
        model_internal::propertyTypeMap["data_group"] = "String";
        model_internal::propertyTypeMap["inserted_date"] = "Date";
        model_internal::propertyTypeMap["rounded_time"] = "Date";
        model_internal::propertyTypeMap["created_at"] = "Date";
        model_internal::propertyTypeMap["tweet"] = "String";
        model_internal::propertyTypeMap["just_text"] = "String";
        model_internal::propertyTypeMap["url"] = "String";
        model_internal::propertyTypeMap["screen_name"] = "String";
        model_internal::propertyTypeMap["is_english"] = "String";
        model_internal::propertyTypeMap["english_prob"] = "Number";
        model_internal::propertyTypeMap["not_english_prob"] = "Number";
        model_internal::propertyTypeMap["relevant"] = "String";
        model_internal::propertyTypeMap["relevant_prob"] = "Number";
        model_internal::propertyTypeMap["irrelevant_prob"] = "Number";
        model_internal::propertyTypeMap["subjectivity"] = "String";
        model_internal::propertyTypeMap["subjective_prob"] = "Number";
        model_internal::propertyTypeMap["objective_prob"] = "Number";
        model_internal::propertyTypeMap["sentiment"] = "String";
        model_internal::propertyTypeMap["sentiment_pos_prob"] = "Number";
        model_internal::propertyTypeMap["sentiment_neg_prob"] = "Number";
        model_internal::propertyTypeMap["sentiment_neu_prob"] = "Number";
        model_internal::propertyTypeMap["financial_actual"] = "String";
        model_internal::propertyTypeMap["financial_prediction"] = "String";
        model_internal::propertyTypeMap["financial_change"] = "Number";
        model_internal::propertyTypeMap["financial_up_prob"] = "Number";
        model_internal::propertyTypeMap["financial_down_prob"] = "Number";
        model_internal::propertyTypeMap["film_sentiment_overall"] = "String";
        model_internal::propertyTypeMap["film_sentiment_pos_prob"] = "Number";
        model_internal::propertyTypeMap["film_sentiment_neg_prob"] = "Number";
        model_internal::propertyTypeMap["growth_recession"] = "String";
        model_internal::propertyTypeMap["growth_prob"] = "Number";
        model_internal::propertyTypeMap["recession_prob"] = "Number";
        model_internal::propertyTypeMap["political_stability"] = "String";
        model_internal::propertyTypeMap["politically_stable_prob"] = "Number";
        model_internal::propertyTypeMap["politically_instable_prob"] = "Number";
        model_internal::propertyTypeMap["IntelMention"] = "String";
        model_internal::propertyTypeMap["SamsungMention"] = "String";
        model_internal::propertyTypeMap["ImaginationTechMention"] = "String";
        model_internal::propertyTypeMap["ImgtecMention"] = "String";
        model_internal::propertyTypeMap["ARMMention"] = "String";
        model_internal::propertyTypeMap["GoogleMention"] = "String";
        model_internal::propertyTypeMap["AppleMention"] = "String";
        model_internal::propertyTypeMap["HTCMention"] = "String";
        model_internal::propertyTypeMap["SonyMention"] = "String";
        model_internal::propertyTypeMap["BlackberryMention"] = "String";
        model_internal::propertyTypeMap["NokiaMention"] = "String";
        model_internal::propertyTypeMap["MotorolaMention"] = "String";
        model_internal::propertyTypeMap["LGMention"] = "String";
        model_internal::propertyTypeMap["MicrosoftMention"] = "String";
        model_internal::propertyTypeMap["IBMMention"] = "String";
        model_internal::propertyTypeMap["ARMHoldingsMention"] = "String";
        model_internal::propertyTypeMap["RIMMention"] = "String";

        model_internal::_instance = value;
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity TwitterRealTimeItem");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity TwitterRealTimeItem");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of TwitterRealTimeItem");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity TwitterRealTimeItem");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity TwitterRealTimeItem");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity TwitterRealTimeItem");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isIdtwitter_real_timeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQueryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isData_groupAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInserted_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRounded_timeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreated_atAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTweetAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isJust_textAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isScreen_nameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIs_englishAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEnglish_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNot_english_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRelevantAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRelevant_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIrrelevant_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSubjectivityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSubjective_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isObjective_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSentimentAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSentiment_pos_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSentiment_neg_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSentiment_neu_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFinancial_actualAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFinancial_predictionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFinancial_changeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFinancial_up_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFinancial_down_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFilm_sentiment_overallAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFilm_sentiment_pos_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFilm_sentiment_neg_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGrowth_recessionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGrowth_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRecession_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPolitical_stabilityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPolitically_stable_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPolitically_instable_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIntelMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSamsungMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isImaginationTechMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isImgtecMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isARMMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGoogleMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isAppleMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHTCMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSonyMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBlackberryMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNokiaMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMotorolaMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLGMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMicrosoftMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIBMMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isARMHoldingsMentionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRIMMentionAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get idtwitter_real_timeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get queryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get data_groupStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get inserted_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get rounded_timeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get created_atStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tweetStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get just_textStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get urlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get screen_nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get is_englishStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get english_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get not_english_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get relevantStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get relevant_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get irrelevant_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get subjectivityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get subjective_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get objective_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get sentimentStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get sentiment_pos_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get sentiment_neg_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get sentiment_neu_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get financial_actualStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get financial_predictionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get financial_changeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get financial_up_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get financial_down_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get film_sentiment_overallStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get film_sentiment_pos_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get film_sentiment_neg_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get growth_recessionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get growth_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get recession_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get political_stabilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get politically_stable_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get politically_instable_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get IntelMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get SamsungMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ImaginationTechMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ImgtecMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ARMMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get GoogleMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get AppleMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get HTCMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get SonyMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get BlackberryMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get NokiaMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get MotorolaMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get LGMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get MicrosoftMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get IBMMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ARMHoldingsMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get RIMMentionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
