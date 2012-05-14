/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBTopsyWebServices.as.
 */
package services.dbtopsywebservices
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.ApiTopsyMiniTasksItem;
import valueObjects.ApiTopsySearchesItem;
import valueObjects.TopsyCountryDataItem;
import valueObjects.TopsyHistogramDataItem;
import valueObjects.TopsyProcessedDataItem;
import valueObjects.TopsyProcessedSimpleDataItem;
import valueObjects.TopsySocialDataItem;

[ExcludeClass]
internal class _Super_DBTopsyWebServices extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_DBTopsyWebServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllTopsySearchTasks");
        operation.resultElementType = valueObjects.ApiTopsySearchesItem;
        operations["getAllTopsySearchTasks"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTopsyProcessedData");
        operation.resultElementType = valueObjects.TopsyProcessedDataItem;
        operations["getTopsyProcessedData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTopsyCountryData");
        operation.resultElementType = valueObjects.TopsyCountryDataItem;
        operations["getTopsyCountryData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getSpecificProcessedData");
        operation.resultElementType = valueObjects.TopsyProcessedSimpleDataItem;
        operations["getSpecificProcessedData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTopsyCumulativeProcessedData");
        operation.resultElementType = valueObjects.TopsyProcessedDataItem;
        operations["getTopsyCumulativeProcessedData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getQueryTopsyMiniTasks");
        operation.resultElementType = valueObjects.ApiTopsyMiniTasksItem;
        operations["getQueryTopsyMiniTasks"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTopsyHistogramData");
        operation.resultElementType = valueObjects.TopsyHistogramDataItem;
        operations["getTopsyHistogramData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTopsyCompanyData");
        operation.resultElementType = valueObjects.TopsySocialDataItem;
        operations["getTopsyCompanyData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "insertTopsySearchTasks");
        operations["insertTopsySearchTasks"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllTopsyMiniTasks");
        operation.resultElementType = valueObjects.ApiTopsyMiniTasksItem;
        operations["getAllTopsyMiniTasks"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTopsyProcessedDataForOneDay");
        operation.resultType = valueObjects.TopsyProcessedDataItem;
        operations["getTopsyProcessedDataForOneDay"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getFilteredTopsyCompanyData");
        operation.resultElementType = valueObjects.TopsySocialDataItem;
        operations["getFilteredTopsyCompanyData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "removeTopsySearchTasks");
        operations["removeTopsySearchTasks"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { /* Flex 3.4 and earlier does not support the convertResultHandler functionality. */ }


        preInitializeService();
        model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {


        _serviceControl.service = getWSDLServiceName();
        _serviceControl.port = getWSDLPort();
        wsdl = getWSDLURL(); 
        model_internal::loadWSDLIfNecessary();
    }

	protected function getWSDLServiceName():String
	{
        return "DBTopsyWebServices";
    }

	protected function getWSDLPort():String
	{
		return "DBTopsyWebServicesPort";
	}

    protected function getWSDLURL():String
    {
    	return "http://localhost:8080/SocialVision/DBTopsyWebServices?wsdl";
    }
    

    /**
      * This method is a generated wrapper used to call the 'getAllTopsySearchTasks' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllTopsySearchTasks() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllTopsySearchTasks");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTopsyProcessedData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTopsyProcessedData(query:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTopsyProcessedData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTopsyCountryData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTopsyCountryData(query:String, date_string:String, limit:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTopsyCountryData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,date_string,limit) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getSpecificProcessedData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSpecificProcessedData(query:String, topsy_field:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSpecificProcessedData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,topsy_field,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTopsyCumulativeProcessedData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTopsyCumulativeProcessedData(query:String, from_date_string:String, to_date_string:String, useHistogtamValues:Boolean, showPercentages:Boolean, incrementFields:Boolean) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTopsyCumulativeProcessedData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,from_date_string,to_date_string,useHistogtamValues,showPercentages,incrementFields) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getQueryTopsyMiniTasks' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getQueryTopsyMiniTasks(query:String, completed:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getQueryTopsyMiniTasks");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,completed) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTopsyHistogramData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTopsyHistogramData(query:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTopsyHistogramData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTopsyCompanyData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTopsyCompanyData(query:String, date_string:String, limit:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTopsyCompanyData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,date_string,limit) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertTopsySearchTasks' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertTopsySearchTasks(name:String, query:String, results_per_page:int, max_no_pages:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertTopsySearchTasks");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(name,query,results_per_page,max_no_pages) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllTopsyMiniTasks' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllTopsyMiniTasks(completed:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllTopsyMiniTasks");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(completed) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTopsyProcessedDataForOneDay' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTopsyProcessedDataForOneDay(query:String, date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTopsyProcessedDataForOneDay");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getFilteredTopsyCompanyData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getFilteredTopsyCompanyData(query:String, date_string:String, filter:String, limit:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getFilteredTopsyCompanyData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,date_string,filter,limit) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'removeTopsySearchTasks' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function removeTopsySearchTasks(query:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("removeTopsySearchTasks");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query) ;
        return _internal_token;
    }
     
}

}
