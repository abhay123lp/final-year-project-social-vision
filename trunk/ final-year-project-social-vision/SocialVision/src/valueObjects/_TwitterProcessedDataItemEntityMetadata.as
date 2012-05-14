
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
internal class _TwitterProcessedDataItemEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id_twitter_processed", "name", "query", "data_group", "_date", "no_tweets_collected", "tweet_rate", "is_quarter_hour", "is_hour", "is_day", "most_used_words", "no_english", "no_not_english", "no_relevant", "no_irrelevant", "no_neutral", "no_not_neutral", "no_subjective", "no_objective", "no_positive_sentiments", "no_negative_sentiments", "no_growth_comments", "no_recession_comments", "no_politically_stable_comments", "no_politically_instable_comments", "no_Intel_comments", "no_Samsung_comments", "no_Imagination_Technologies_comments", "no_Imgtec_comments", "no_ARM_comments", "no_Google_comments", "no_Apple_comments", "no_HTC_comments", "no_Sony_comments", "no_Blackberry_comments", "no_Nokia_comments", "no_Motorola_comments", "no_LG_comments", "no_Microsoft_comments", "no_IBM_comments", "no_ARM_Holdings_comments", "no_RIM_comments");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id_twitter_processed", "name", "query", "data_group", "_date", "no_tweets_collected", "tweet_rate", "is_quarter_hour", "is_hour", "is_day", "most_used_words", "no_english", "no_not_english", "no_relevant", "no_irrelevant", "no_neutral", "no_not_neutral", "no_subjective", "no_objective", "no_positive_sentiments", "no_negative_sentiments", "no_growth_comments", "no_recession_comments", "no_politically_stable_comments", "no_politically_instable_comments", "no_Intel_comments", "no_Samsung_comments", "no_Imagination_Technologies_comments", "no_Imgtec_comments", "no_ARM_comments", "no_Google_comments", "no_Apple_comments", "no_HTC_comments", "no_Sony_comments", "no_Blackberry_comments", "no_Nokia_comments", "no_Motorola_comments", "no_LG_comments", "no_Microsoft_comments", "no_IBM_comments", "no_ARM_Holdings_comments", "no_RIM_comments");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id_twitter_processed", "name", "query", "data_group", "_date", "no_tweets_collected", "tweet_rate", "is_quarter_hour", "is_hour", "is_day", "most_used_words", "no_english", "no_not_english", "no_relevant", "no_irrelevant", "no_neutral", "no_not_neutral", "no_subjective", "no_objective", "no_positive_sentiments", "no_negative_sentiments", "no_growth_comments", "no_recession_comments", "no_politically_stable_comments", "no_politically_instable_comments", "no_Intel_comments", "no_Samsung_comments", "no_Imagination_Technologies_comments", "no_Imgtec_comments", "no_ARM_comments", "no_Google_comments", "no_Apple_comments", "no_HTC_comments", "no_Sony_comments", "no_Blackberry_comments", "no_Nokia_comments", "no_Motorola_comments", "no_LG_comments", "no_Microsoft_comments", "no_IBM_comments", "no_ARM_Holdings_comments", "no_RIM_comments");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("id_twitter_processed", "name", "query", "data_group", "_date", "no_tweets_collected", "tweet_rate", "is_quarter_hour", "is_hour", "is_day", "most_used_words", "no_english", "no_not_english", "no_relevant", "no_irrelevant", "no_neutral", "no_not_neutral", "no_subjective", "no_objective", "no_positive_sentiments", "no_negative_sentiments", "no_growth_comments", "no_recession_comments", "no_politically_stable_comments", "no_politically_instable_comments", "no_Intel_comments", "no_Samsung_comments", "no_Imagination_Technologies_comments", "no_Imgtec_comments", "no_ARM_comments", "no_Google_comments", "no_Apple_comments", "no_HTC_comments", "no_Sony_comments", "no_Blackberry_comments", "no_Nokia_comments", "no_Motorola_comments", "no_LG_comments", "no_Microsoft_comments", "no_IBM_comments", "no_ARM_Holdings_comments", "no_RIM_comments");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "TwitterProcessedDataItem";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_TwitterProcessedDataItem;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _TwitterProcessedDataItemEntityMetadata(value : _Super_TwitterProcessedDataItem)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["id_twitter_processed"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["query"] = new Array();
            model_internal::dependentsOnMap["data_group"] = new Array();
            model_internal::dependentsOnMap["_date"] = new Array();
            model_internal::dependentsOnMap["no_tweets_collected"] = new Array();
            model_internal::dependentsOnMap["tweet_rate"] = new Array();
            model_internal::dependentsOnMap["is_quarter_hour"] = new Array();
            model_internal::dependentsOnMap["is_hour"] = new Array();
            model_internal::dependentsOnMap["is_day"] = new Array();
            model_internal::dependentsOnMap["most_used_words"] = new Array();
            model_internal::dependentsOnMap["no_english"] = new Array();
            model_internal::dependentsOnMap["no_not_english"] = new Array();
            model_internal::dependentsOnMap["no_relevant"] = new Array();
            model_internal::dependentsOnMap["no_irrelevant"] = new Array();
            model_internal::dependentsOnMap["no_neutral"] = new Array();
            model_internal::dependentsOnMap["no_not_neutral"] = new Array();
            model_internal::dependentsOnMap["no_subjective"] = new Array();
            model_internal::dependentsOnMap["no_objective"] = new Array();
            model_internal::dependentsOnMap["no_positive_sentiments"] = new Array();
            model_internal::dependentsOnMap["no_negative_sentiments"] = new Array();
            model_internal::dependentsOnMap["no_growth_comments"] = new Array();
            model_internal::dependentsOnMap["no_recession_comments"] = new Array();
            model_internal::dependentsOnMap["no_politically_stable_comments"] = new Array();
            model_internal::dependentsOnMap["no_politically_instable_comments"] = new Array();
            model_internal::dependentsOnMap["no_Intel_comments"] = new Array();
            model_internal::dependentsOnMap["no_Samsung_comments"] = new Array();
            model_internal::dependentsOnMap["no_Imagination_Technologies_comments"] = new Array();
            model_internal::dependentsOnMap["no_Imgtec_comments"] = new Array();
            model_internal::dependentsOnMap["no_ARM_comments"] = new Array();
            model_internal::dependentsOnMap["no_Google_comments"] = new Array();
            model_internal::dependentsOnMap["no_Apple_comments"] = new Array();
            model_internal::dependentsOnMap["no_HTC_comments"] = new Array();
            model_internal::dependentsOnMap["no_Sony_comments"] = new Array();
            model_internal::dependentsOnMap["no_Blackberry_comments"] = new Array();
            model_internal::dependentsOnMap["no_Nokia_comments"] = new Array();
            model_internal::dependentsOnMap["no_Motorola_comments"] = new Array();
            model_internal::dependentsOnMap["no_LG_comments"] = new Array();
            model_internal::dependentsOnMap["no_Microsoft_comments"] = new Array();
            model_internal::dependentsOnMap["no_IBM_comments"] = new Array();
            model_internal::dependentsOnMap["no_ARM_Holdings_comments"] = new Array();
            model_internal::dependentsOnMap["no_RIM_comments"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["id_twitter_processed"] = "int";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["query"] = "String";
        model_internal::propertyTypeMap["data_group"] = "String";
        model_internal::propertyTypeMap["_date"] = "Date";
        model_internal::propertyTypeMap["no_tweets_collected"] = "int";
        model_internal::propertyTypeMap["tweet_rate"] = "Number";
        model_internal::propertyTypeMap["is_quarter_hour"] = "String";
        model_internal::propertyTypeMap["is_hour"] = "String";
        model_internal::propertyTypeMap["is_day"] = "String";
        model_internal::propertyTypeMap["most_used_words"] = "String";
        model_internal::propertyTypeMap["no_english"] = "int";
        model_internal::propertyTypeMap["no_not_english"] = "int";
        model_internal::propertyTypeMap["no_relevant"] = "int";
        model_internal::propertyTypeMap["no_irrelevant"] = "int";
        model_internal::propertyTypeMap["no_neutral"] = "int";
        model_internal::propertyTypeMap["no_not_neutral"] = "int";
        model_internal::propertyTypeMap["no_subjective"] = "int";
        model_internal::propertyTypeMap["no_objective"] = "int";
        model_internal::propertyTypeMap["no_positive_sentiments"] = "int";
        model_internal::propertyTypeMap["no_negative_sentiments"] = "int";
        model_internal::propertyTypeMap["no_growth_comments"] = "int";
        model_internal::propertyTypeMap["no_recession_comments"] = "int";
        model_internal::propertyTypeMap["no_politically_stable_comments"] = "int";
        model_internal::propertyTypeMap["no_politically_instable_comments"] = "int";
        model_internal::propertyTypeMap["no_Intel_comments"] = "int";
        model_internal::propertyTypeMap["no_Samsung_comments"] = "int";
        model_internal::propertyTypeMap["no_Imagination_Technologies_comments"] = "int";
        model_internal::propertyTypeMap["no_Imgtec_comments"] = "int";
        model_internal::propertyTypeMap["no_ARM_comments"] = "int";
        model_internal::propertyTypeMap["no_Google_comments"] = "int";
        model_internal::propertyTypeMap["no_Apple_comments"] = "int";
        model_internal::propertyTypeMap["no_HTC_comments"] = "int";
        model_internal::propertyTypeMap["no_Sony_comments"] = "int";
        model_internal::propertyTypeMap["no_Blackberry_comments"] = "int";
        model_internal::propertyTypeMap["no_Nokia_comments"] = "int";
        model_internal::propertyTypeMap["no_Motorola_comments"] = "int";
        model_internal::propertyTypeMap["no_LG_comments"] = "int";
        model_internal::propertyTypeMap["no_Microsoft_comments"] = "int";
        model_internal::propertyTypeMap["no_IBM_comments"] = "int";
        model_internal::propertyTypeMap["no_ARM_Holdings_comments"] = "int";
        model_internal::propertyTypeMap["no_RIM_comments"] = "int";

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
            throw new Error(propertyName + " is not a data property of entity TwitterProcessedDataItem");
            
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
            throw new Error(propertyName + " is not a collection property of entity TwitterProcessedDataItem");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of TwitterProcessedDataItem");

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
            throw new Error(propertyName + " does not exist for entity TwitterProcessedDataItem");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity TwitterProcessedDataItem");
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
            throw new Error(propertyName + " does not exist for entity TwitterProcessedDataItem");
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
    public function get isId_twitter_processedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
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
    public function get is_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_tweets_collectedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTweet_rateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIs_quarter_hourAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIs_hourAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIs_dayAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isMost_used_wordsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_englishAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_not_englishAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_relevantAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_irrelevantAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_neutralAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_not_neutralAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_subjectiveAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_objectiveAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_positive_sentimentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_negative_sentimentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_growth_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_recession_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_politically_stable_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_politically_instable_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Intel_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Samsung_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Imagination_Technologies_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Imgtec_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_ARM_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Google_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Apple_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_HTC_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Sony_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Blackberry_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Nokia_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Motorola_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_LG_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_Microsoft_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_IBM_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_ARM_Holdings_commentsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNo_RIM_commentsAvailable():Boolean
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
    public function get id_twitter_processedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
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
    public function get _dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_tweets_collectedStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tweet_rateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get is_quarter_hourStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get is_hourStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get is_dayStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get most_used_wordsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_englishStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_not_englishStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_relevantStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_irrelevantStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_neutralStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_not_neutralStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_subjectiveStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_objectiveStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_positive_sentimentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_negative_sentimentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_growth_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_recession_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_politically_stable_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_politically_instable_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Intel_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Samsung_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Imagination_Technologies_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Imgtec_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_ARM_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Google_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Apple_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_HTC_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Sony_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Blackberry_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Nokia_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Motorola_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_LG_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_Microsoft_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_IBM_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_ARM_Holdings_commentsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get no_RIM_commentsStyle():com.adobe.fiber.styles.Style
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
