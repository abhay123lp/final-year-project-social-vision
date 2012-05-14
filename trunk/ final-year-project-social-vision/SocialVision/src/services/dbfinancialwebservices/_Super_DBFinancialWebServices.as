/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBFinancialWebServices.as.
 */
package services.dbfinancialwebservices
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.ApiFinanceSearchesItem;
import valueObjects.FinancialDataItem;
import valueObjects.FinancialHourlyDataItem;

[ExcludeClass]
internal class _Super_DBFinancialWebServices extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_DBFinancialWebServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getRealTimeFinancialData");
        operation.resultElementType = valueObjects.FinancialHourlyDataItem;
        operations["getRealTimeFinancialData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "removeFinancialSearchTerm");
        operations["removeFinancialSearchTerm"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getFinancialSearchTerm");
        operation.resultType = valueObjects.ApiFinanceSearchesItem;
        operations["getFinancialSearchTerm"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getHistoricalFinancialData");
        operation.resultElementType = valueObjects.FinancialDataItem;
        operations["getHistoricalFinancialData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getMinutelyFinancialData");
        operation.resultElementType = valueObjects.FinancialHourlyDataItem;
        operations["getMinutelyFinancialData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllFinancialSearchTerms");
        operation.resultElementType = valueObjects.ApiFinanceSearchesItem;
        operations["getAllFinancialSearchTerms"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getHourlyFinancialData");
        operation.resultElementType = valueObjects.FinancialHourlyDataItem;
        operations["getHourlyFinancialData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "insertFinancialSearchTerm");
        operations["insertFinancialSearchTerm"] = operation;

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
        return "DBFinancialWebServices";
    }

	protected function getWSDLPort():String
	{
		return "DBFinancialWebServicesPort";
	}

    protected function getWSDLURL():String
    {
    	return "http://localhost:8080/SocialVision/DBFinancialWebServices?wsdl";
    }
    

    /**
      * This method is a generated wrapper used to call the 'getRealTimeFinancialData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getRealTimeFinancialData(name:String, from_date_string:String, to_date_string:String, interval:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getRealTimeFinancialData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(name,from_date_string,to_date_string,interval) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'removeFinancialSearchTerm' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function removeFinancialSearchTerm(name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("removeFinancialSearchTerm");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getFinancialSearchTerm' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getFinancialSearchTerm(asset_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getFinancialSearchTerm");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(asset_name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getHistoricalFinancialData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getHistoricalFinancialData(name:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getHistoricalFinancialData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(name,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getMinutelyFinancialData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getMinutelyFinancialData(name:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getMinutelyFinancialData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(name,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllFinancialSearchTerms' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllFinancialSearchTerms() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllFinancialSearchTerms");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getHourlyFinancialData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getHourlyFinancialData(name:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getHourlyFinancialData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(name,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertFinancialSearchTerm' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertFinancialSearchTerm(name:String, symbol:String, market:String, most_current_date:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertFinancialSearchTerm");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(name,symbol,market,most_current_date) ;
        return _internal_token;
    }
     
}

}
