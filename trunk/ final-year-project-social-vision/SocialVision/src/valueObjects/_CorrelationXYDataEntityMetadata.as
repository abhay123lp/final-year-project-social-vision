
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
import mx.collections.ArrayCollection;
import valueObjects.CorrelationXYItem;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _CorrelationXYDataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("name", "from_date", "to_date", "social_field", "financial_field", "day_delta", "correlationXYItems", "kendelCorrelationCoeff", "kendelSignificanceProbability", "kendelTheilsStatisitc", "linearCorrelationCoeff", "linearConfidenceCoeff", "linearSignificanceProbability", "linearLowerConfLimit", "linearHigherConfLimit", "spearmanCorrelationCoeff", "spearmanSumOfSqDiff", "spearmanSignificanceProbability", "pearsonPMCorrelationCoeff", "pearsonInterceptionTerma", "pearsonSlopeTermB");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("name", "from_date", "to_date", "social_field", "financial_field", "day_delta", "correlationXYItems", "kendelCorrelationCoeff", "kendelSignificanceProbability", "kendelTheilsStatisitc", "linearCorrelationCoeff", "linearConfidenceCoeff", "linearSignificanceProbability", "linearLowerConfLimit", "linearHigherConfLimit", "spearmanCorrelationCoeff", "spearmanSumOfSqDiff", "spearmanSignificanceProbability", "pearsonPMCorrelationCoeff", "pearsonInterceptionTerma", "pearsonSlopeTermB");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("name", "from_date", "to_date", "social_field", "financial_field", "day_delta", "correlationXYItems", "kendelCorrelationCoeff", "kendelSignificanceProbability", "kendelTheilsStatisitc", "linearCorrelationCoeff", "linearConfidenceCoeff", "linearSignificanceProbability", "linearLowerConfLimit", "linearHigherConfLimit", "spearmanCorrelationCoeff", "spearmanSumOfSqDiff", "spearmanSignificanceProbability", "pearsonPMCorrelationCoeff", "pearsonInterceptionTerma", "pearsonSlopeTermB");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("name", "from_date", "to_date", "social_field", "financial_field", "day_delta", "correlationXYItems", "kendelCorrelationCoeff", "kendelSignificanceProbability", "kendelTheilsStatisitc", "linearCorrelationCoeff", "linearConfidenceCoeff", "linearSignificanceProbability", "linearLowerConfLimit", "linearHigherConfLimit", "spearmanCorrelationCoeff", "spearmanSumOfSqDiff", "spearmanSignificanceProbability", "pearsonPMCorrelationCoeff", "pearsonInterceptionTerma", "pearsonSlopeTermB");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("correlationXYItems");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "CorrelationXYData";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_CorrelationXYData;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _CorrelationXYDataEntityMetadata(value : _Super_CorrelationXYData)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["from_date"] = new Array();
            model_internal::dependentsOnMap["to_date"] = new Array();
            model_internal::dependentsOnMap["social_field"] = new Array();
            model_internal::dependentsOnMap["financial_field"] = new Array();
            model_internal::dependentsOnMap["day_delta"] = new Array();
            model_internal::dependentsOnMap["correlationXYItems"] = new Array();
            model_internal::dependentsOnMap["kendelCorrelationCoeff"] = new Array();
            model_internal::dependentsOnMap["kendelSignificanceProbability"] = new Array();
            model_internal::dependentsOnMap["kendelTheilsStatisitc"] = new Array();
            model_internal::dependentsOnMap["linearCorrelationCoeff"] = new Array();
            model_internal::dependentsOnMap["linearConfidenceCoeff"] = new Array();
            model_internal::dependentsOnMap["linearSignificanceProbability"] = new Array();
            model_internal::dependentsOnMap["linearLowerConfLimit"] = new Array();
            model_internal::dependentsOnMap["linearHigherConfLimit"] = new Array();
            model_internal::dependentsOnMap["spearmanCorrelationCoeff"] = new Array();
            model_internal::dependentsOnMap["spearmanSumOfSqDiff"] = new Array();
            model_internal::dependentsOnMap["spearmanSignificanceProbability"] = new Array();
            model_internal::dependentsOnMap["pearsonPMCorrelationCoeff"] = new Array();
            model_internal::dependentsOnMap["pearsonInterceptionTerma"] = new Array();
            model_internal::dependentsOnMap["pearsonSlopeTermB"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["correlationXYItems"] = "valueObjects.CorrelationXYItem";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["from_date"] = "String";
        model_internal::propertyTypeMap["to_date"] = "String";
        model_internal::propertyTypeMap["social_field"] = "String";
        model_internal::propertyTypeMap["financial_field"] = "String";
        model_internal::propertyTypeMap["day_delta"] = "int";
        model_internal::propertyTypeMap["correlationXYItems"] = "ArrayCollection";
        model_internal::propertyTypeMap["kendelCorrelationCoeff"] = "Number";
        model_internal::propertyTypeMap["kendelSignificanceProbability"] = "Number";
        model_internal::propertyTypeMap["kendelTheilsStatisitc"] = "int";
        model_internal::propertyTypeMap["linearCorrelationCoeff"] = "Number";
        model_internal::propertyTypeMap["linearConfidenceCoeff"] = "Number";
        model_internal::propertyTypeMap["linearSignificanceProbability"] = "Number";
        model_internal::propertyTypeMap["linearLowerConfLimit"] = "Number";
        model_internal::propertyTypeMap["linearHigherConfLimit"] = "Number";
        model_internal::propertyTypeMap["spearmanCorrelationCoeff"] = "Number";
        model_internal::propertyTypeMap["spearmanSumOfSqDiff"] = "Number";
        model_internal::propertyTypeMap["spearmanSignificanceProbability"] = "Number";
        model_internal::propertyTypeMap["pearsonPMCorrelationCoeff"] = "Number";
        model_internal::propertyTypeMap["pearsonInterceptionTerma"] = "Number";
        model_internal::propertyTypeMap["pearsonSlopeTermB"] = "Number";

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
            throw new Error(propertyName + " is not a data property of entity CorrelationXYData");
            
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
            throw new Error(propertyName + " is not a collection property of entity CorrelationXYData");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of CorrelationXYData");

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
            throw new Error(propertyName + " does not exist for entity CorrelationXYData");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity CorrelationXYData");
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
            throw new Error(propertyName + " does not exist for entity CorrelationXYData");
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
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFrom_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTo_dateAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSocial_fieldAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFinancial_fieldAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDay_deltaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCorrelationXYItemsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isKendelCorrelationCoeffAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isKendelSignificanceProbabilityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isKendelTheilsStatisitcAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLinearCorrelationCoeffAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLinearConfidenceCoeffAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLinearSignificanceProbabilityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLinearLowerConfLimitAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLinearHigherConfLimitAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSpearmanCorrelationCoeffAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSpearmanSumOfSqDiffAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSpearmanSignificanceProbabilityAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPearsonPMCorrelationCoeffAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPearsonInterceptionTermaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPearsonSlopeTermBAvailable():Boolean
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
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get from_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get to_dateStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get social_fieldStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get financial_fieldStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get day_deltaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get correlationXYItemsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get kendelCorrelationCoeffStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get kendelSignificanceProbabilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get kendelTheilsStatisitcStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get linearCorrelationCoeffStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get linearConfidenceCoeffStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get linearSignificanceProbabilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get linearLowerConfLimitStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get linearHigherConfLimitStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get spearmanCorrelationCoeffStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get spearmanSumOfSqDiffStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get spearmanSignificanceProbabilityStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get pearsonPMCorrelationCoeffStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get pearsonInterceptionTermaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get pearsonSlopeTermBStyle():com.adobe.fiber.styles.Style
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
