
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
internal class _TopsyCountryDataItemEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("idtopsy_table", "name", "type", "query", "title", "url", "score", "_date", "content", "total_search_results", "trackback_permalink", "hits", "trackback_total", "topsy_trackback_url", "highlight", "is_english", "english_prob", "not_english_prob", "relevant", "relevant_prob", "irrelevant_prob", "is_neutral", "neutral_prob", "not_neutral_prob", "subjectivity", "subjective_prob", "objective_prob", "sentiment", "sentiment_pos_prob", "sentiment_neg_prob", "growth_recession", "growth_prob", "recession_prob", "political_stability", "politically_stable_prob", "politically_instable_prob");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("idtopsy_table", "name", "type", "query", "title", "url", "score", "_date", "content", "total_search_results", "trackback_permalink", "hits", "trackback_total", "topsy_trackback_url", "highlight", "is_english", "english_prob", "not_english_prob", "relevant", "relevant_prob", "irrelevant_prob", "is_neutral", "neutral_prob", "not_neutral_prob", "subjectivity", "subjective_prob", "objective_prob", "sentiment", "sentiment_pos_prob", "sentiment_neg_prob", "growth_recession", "growth_prob", "recession_prob", "political_stability", "politically_stable_prob", "politically_instable_prob");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("idtopsy_table", "name", "type", "query", "title", "url", "score", "_date", "content", "total_search_results", "trackback_permalink", "hits", "trackback_total", "topsy_trackback_url", "highlight", "is_english", "english_prob", "not_english_prob", "relevant", "relevant_prob", "irrelevant_prob", "is_neutral", "neutral_prob", "not_neutral_prob", "subjectivity", "subjective_prob", "objective_prob", "sentiment", "sentiment_pos_prob", "sentiment_neg_prob", "growth_recession", "growth_prob", "recession_prob", "political_stability", "politically_stable_prob", "politically_instable_prob");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("idtopsy_table", "name", "type", "query", "title", "url", "score", "_date", "content", "total_search_results", "trackback_permalink", "hits", "trackback_total", "topsy_trackback_url", "highlight", "is_english", "english_prob", "not_english_prob", "relevant", "relevant_prob", "irrelevant_prob", "is_neutral", "neutral_prob", "not_neutral_prob", "subjectivity", "subjective_prob", "objective_prob", "sentiment", "sentiment_pos_prob", "sentiment_neg_prob", "growth_recession", "growth_prob", "recession_prob", "political_stability", "politically_stable_prob", "politically_instable_prob");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "TopsyCountryDataItem";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_TopsyCountryDataItem;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _TopsyCountryDataItemEntityMetadata(value : _Super_TopsyCountryDataItem)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["idtopsy_table"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["type"] = new Array();
            model_internal::dependentsOnMap["query"] = new Array();
            model_internal::dependentsOnMap["title"] = new Array();
            model_internal::dependentsOnMap["url"] = new Array();
            model_internal::dependentsOnMap["score"] = new Array();
            model_internal::dependentsOnMap["_date"] = new Array();
            model_internal::dependentsOnMap["content"] = new Array();
            model_internal::dependentsOnMap["total_search_results"] = new Array();
            model_internal::dependentsOnMap["trackback_permalink"] = new Array();
            model_internal::dependentsOnMap["hits"] = new Array();
            model_internal::dependentsOnMap["trackback_total"] = new Array();
            model_internal::dependentsOnMap["topsy_trackback_url"] = new Array();
            model_internal::dependentsOnMap["highlight"] = new Array();
            model_internal::dependentsOnMap["is_english"] = new Array();
            model_internal::dependentsOnMap["english_prob"] = new Array();
            model_internal::dependentsOnMap["not_english_prob"] = new Array();
            model_internal::dependentsOnMap["relevant"] = new Array();
            model_internal::dependentsOnMap["relevant_prob"] = new Array();
            model_internal::dependentsOnMap["irrelevant_prob"] = new Array();
            model_internal::dependentsOnMap["is_neutral"] = new Array();
            model_internal::dependentsOnMap["neutral_prob"] = new Array();
            model_internal::dependentsOnMap["not_neutral_prob"] = new Array();
            model_internal::dependentsOnMap["subjectivity"] = new Array();
            model_internal::dependentsOnMap["subjective_prob"] = new Array();
            model_internal::dependentsOnMap["objective_prob"] = new Array();
            model_internal::dependentsOnMap["sentiment"] = new Array();
            model_internal::dependentsOnMap["sentiment_pos_prob"] = new Array();
            model_internal::dependentsOnMap["sentiment_neg_prob"] = new Array();
            model_internal::dependentsOnMap["growth_recession"] = new Array();
            model_internal::dependentsOnMap["growth_prob"] = new Array();
            model_internal::dependentsOnMap["recession_prob"] = new Array();
            model_internal::dependentsOnMap["political_stability"] = new Array();
            model_internal::dependentsOnMap["politically_stable_prob"] = new Array();
            model_internal::dependentsOnMap["politically_instable_prob"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["idtopsy_table"] = "int";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["type"] = "String";
        model_internal::propertyTypeMap["query"] = "String";
        model_internal::propertyTypeMap["title"] = "String";
        model_internal::propertyTypeMap["url"] = "String";
        model_internal::propertyTypeMap["score"] = "Number";
        model_internal::propertyTypeMap["_date"] = "Date";
        model_internal::propertyTypeMap["content"] = "String";
        model_internal::propertyTypeMap["total_search_results"] = "int";
        model_internal::propertyTypeMap["trackback_permalink"] = "String";
        model_internal::propertyTypeMap["hits"] = "int";
        model_internal::propertyTypeMap["trackback_total"] = "int";
        model_internal::propertyTypeMap["topsy_trackback_url"] = "String";
        model_internal::propertyTypeMap["highlight"] = "String";
        model_internal::propertyTypeMap["is_english"] = "String";
        model_internal::propertyTypeMap["english_prob"] = "Number";
        model_internal::propertyTypeMap["not_english_prob"] = "Number";
        model_internal::propertyTypeMap["relevant"] = "String";
        model_internal::propertyTypeMap["relevant_prob"] = "Number";
        model_internal::propertyTypeMap["irrelevant_prob"] = "Number";
        model_internal::propertyTypeMap["is_neutral"] = "String";
        model_internal::propertyTypeMap["neutral_prob"] = "Number";
        model_internal::propertyTypeMap["not_neutral_prob"] = "Number";
        model_internal::propertyTypeMap["subjectivity"] = "String";
        model_internal::propertyTypeMap["subjective_prob"] = "Number";
        model_internal::propertyTypeMap["objective_prob"] = "Number";
        model_internal::propertyTypeMap["sentiment"] = "String";
        model_internal::propertyTypeMap["sentiment_pos_prob"] = "Number";
        model_internal::propertyTypeMap["sentiment_neg_prob"] = "Number";
        model_internal::propertyTypeMap["growth_recession"] = "String";
        model_internal::propertyTypeMap["growth_prob"] = "Number";
        model_internal::propertyTypeMap["recession_prob"] = "Number";
        model_internal::propertyTypeMap["political_stability"] = "String";
        model_internal::propertyTypeMap["politically_stable_prob"] = "Number";
        model_internal::propertyTypeMap["politically_instable_prob"] = "Number";

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
            throw new Error(propertyName + " is not a data property of entity TopsyCountryDataItem");
            
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
            throw new Error(propertyName + " is not a collection property of entity TopsyCountryDataItem");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of TopsyCountryDataItem");

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
            throw new Error(propertyName + " does not exist for entity TopsyCountryDataItem");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity TopsyCountryDataItem");
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
            throw new Error(propertyName + " does not exist for entity TopsyCountryDataItem");
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
    public function get isIdtopsy_tableAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQueryAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTitleAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUrlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isScoreAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get is_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isContentAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTotal_search_resultsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTrackback_permalinkAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHitsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTrackback_totalAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTopsy_trackback_urlAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHighlightAvailable():Boolean
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
    public function get isIs_neutralAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNeutral_probAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNot_neutral_probAvailable():Boolean
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


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get idtopsy_tableStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get typeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get queryStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get titleStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get urlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get scoreStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get _dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get contentStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get total_search_resultsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get trackback_permalinkStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get hitsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get trackback_totalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get topsy_trackback_urlStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get highlightStyle():com.adobe.fiber.styles.Style
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
    public function get is_neutralStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get neutral_probStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get not_neutral_probStyle():com.adobe.fiber.styles.Style
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
