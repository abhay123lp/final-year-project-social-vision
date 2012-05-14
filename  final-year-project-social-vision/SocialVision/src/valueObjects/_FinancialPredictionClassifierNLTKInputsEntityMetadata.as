
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
internal class _FinancialPredictionClassifierNLTKInputsEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("training_from_date", "training_to_date", "training_limit", "test_from_date", "test_to_date", "interval_value", "tweets_fin_time_delta_value", "interval_unit", "tweets_fin_time_delta_unit", "tweet_source", "remove_short_words", "remove_stop_words", "remove_low_info_words", "num_of_inf_words", "use_bigrams", "remove_non_english", "remove_irrelevant", "include_subjective", "include_objective", "company_name");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("training_from_date", "training_to_date", "training_limit", "test_from_date", "test_to_date", "interval_value", "tweets_fin_time_delta_value", "interval_unit", "tweets_fin_time_delta_unit", "tweet_source", "remove_short_words", "remove_stop_words", "remove_low_info_words", "num_of_inf_words", "use_bigrams", "remove_non_english", "remove_irrelevant", "include_subjective", "include_objective", "company_name");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("training_from_date", "training_to_date", "training_limit", "test_from_date", "test_to_date", "interval_value", "tweets_fin_time_delta_value", "interval_unit", "tweets_fin_time_delta_unit", "tweet_source", "remove_short_words", "remove_stop_words", "remove_low_info_words", "num_of_inf_words", "use_bigrams", "remove_non_english", "remove_irrelevant", "include_subjective", "include_objective", "company_name");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("training_from_date", "training_to_date", "training_limit", "test_from_date", "test_to_date", "interval_value", "tweets_fin_time_delta_value", "interval_unit", "tweets_fin_time_delta_unit", "tweet_source", "remove_short_words", "remove_stop_words", "remove_low_info_words", "num_of_inf_words", "use_bigrams", "remove_non_english", "remove_irrelevant", "include_subjective", "include_objective", "company_name");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "FinancialPredictionClassifierNLTKInputs";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_FinancialPredictionClassifierNLTKInputs;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _FinancialPredictionClassifierNLTKInputsEntityMetadata(value : _Super_FinancialPredictionClassifierNLTKInputs)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["training_from_date"] = new Array();
            model_internal::dependentsOnMap["training_to_date"] = new Array();
            model_internal::dependentsOnMap["training_limit"] = new Array();
            model_internal::dependentsOnMap["test_from_date"] = new Array();
            model_internal::dependentsOnMap["test_to_date"] = new Array();
            model_internal::dependentsOnMap["interval_value"] = new Array();
            model_internal::dependentsOnMap["tweets_fin_time_delta_value"] = new Array();
            model_internal::dependentsOnMap["interval_unit"] = new Array();
            model_internal::dependentsOnMap["tweets_fin_time_delta_unit"] = new Array();
            model_internal::dependentsOnMap["tweet_source"] = new Array();
            model_internal::dependentsOnMap["remove_short_words"] = new Array();
            model_internal::dependentsOnMap["remove_stop_words"] = new Array();
            model_internal::dependentsOnMap["remove_low_info_words"] = new Array();
            model_internal::dependentsOnMap["num_of_inf_words"] = new Array();
            model_internal::dependentsOnMap["use_bigrams"] = new Array();
            model_internal::dependentsOnMap["remove_non_english"] = new Array();
            model_internal::dependentsOnMap["remove_irrelevant"] = new Array();
            model_internal::dependentsOnMap["include_subjective"] = new Array();
            model_internal::dependentsOnMap["include_objective"] = new Array();
            model_internal::dependentsOnMap["company_name"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["training_from_date"] = "String";
        model_internal::propertyTypeMap["training_to_date"] = "String";
        model_internal::propertyTypeMap["training_limit"] = "String";
        model_internal::propertyTypeMap["test_from_date"] = "String";
        model_internal::propertyTypeMap["test_to_date"] = "String";
        model_internal::propertyTypeMap["interval_value"] = "String";
        model_internal::propertyTypeMap["tweets_fin_time_delta_value"] = "String";
        model_internal::propertyTypeMap["interval_unit"] = "String";
        model_internal::propertyTypeMap["tweets_fin_time_delta_unit"] = "String";
        model_internal::propertyTypeMap["tweet_source"] = "String";
        model_internal::propertyTypeMap["remove_short_words"] = "String";
        model_internal::propertyTypeMap["remove_stop_words"] = "String";
        model_internal::propertyTypeMap["remove_low_info_words"] = "String";
        model_internal::propertyTypeMap["num_of_inf_words"] = "String";
        model_internal::propertyTypeMap["use_bigrams"] = "String";
        model_internal::propertyTypeMap["remove_non_english"] = "String";
        model_internal::propertyTypeMap["remove_irrelevant"] = "String";
        model_internal::propertyTypeMap["include_subjective"] = "String";
        model_internal::propertyTypeMap["include_objective"] = "String";
        model_internal::propertyTypeMap["company_name"] = "String";

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
            throw new Error(propertyName + " is not a data property of entity FinancialPredictionClassifierNLTKInputs");
            
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
            throw new Error(propertyName + " is not a collection property of entity FinancialPredictionClassifierNLTKInputs");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of FinancialPredictionClassifierNLTKInputs");

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
            throw new Error(propertyName + " does not exist for entity FinancialPredictionClassifierNLTKInputs");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity FinancialPredictionClassifierNLTKInputs");
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
            throw new Error(propertyName + " does not exist for entity FinancialPredictionClassifierNLTKInputs");
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
    public function get isTraining_from_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTraining_to_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTraining_limitAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTest_from_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTest_to_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInterval_valueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTweets_fin_time_delta_valueAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInterval_unitAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTweets_fin_time_delta_unitAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTweet_sourceAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRemove_short_wordsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRemove_stop_wordsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRemove_low_info_wordsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNum_of_inf_wordsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isUse_bigramsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRemove_non_englishAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRemove_irrelevantAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInclude_subjectiveAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInclude_objectiveAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCompany_nameAvailable():Boolean
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
    public function get training_from_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get training_to_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get training_limitStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get test_from_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get test_to_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get interval_valueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tweets_fin_time_delta_valueStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get interval_unitStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tweets_fin_time_delta_unitStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tweet_sourceStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get remove_short_wordsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get remove_stop_wordsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get remove_low_info_wordsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get num_of_inf_wordsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get use_bigramsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get remove_non_englishStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get remove_irrelevantStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get include_subjectiveStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get include_objectiveStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get company_nameStyle():com.adobe.fiber.styles.Style
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
