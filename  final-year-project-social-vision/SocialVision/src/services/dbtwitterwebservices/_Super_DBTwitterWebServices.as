/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBTwitterWebServices.as.
 */
package services.dbtwitterwebservices
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.ApiTwitterSearchesItem;
import valueObjects.TwitterProcessedDataItem;
import valueObjects.TwitterRealTimeItem;
import valueObjects.TwitterRealTimeProcessedSimpleDataItem;

[ExcludeClass]
internal class _Super_DBTwitterWebServices extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_DBTwitterWebServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getSpecificTwitterProcessedData");
        operation.resultElementType = valueObjects.TwitterRealTimeProcessedSimpleDataItem;
        operations["getSpecificTwitterProcessedData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTweetsFromPeriod");
        operation.resultElementType = valueObjects.TwitterRealTimeItem;
        operations["getTweetsFromPeriod"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTwitterHourlyProcessedData");
        operation.resultElementType = valueObjects.TwitterProcessedDataItem;
        operations["getTwitterHourlyProcessedData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTwitterStreamTerms");
        operation.resultElementType = valueObjects.ApiTwitterSearchesItem;
        operations["getTwitterStreamTerms"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "insertTwitterStreamTerm");
        operations["insertTwitterStreamTerm"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTwitterDailyProcessedData");
        operation.resultElementType = valueObjects.TwitterProcessedDataItem;
        operations["getTwitterDailyProcessedData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTwitterMinutelyProcessedData");
        operation.resultElementType = valueObjects.TwitterProcessedDataItem;
        operations["getTwitterMinutelyProcessedData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "removeTwitterStreamTerm");
        operations["removeTwitterStreamTerm"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTweetCountFromPeriod");
        operation.resultType = int;
        operations["getTweetCountFromPeriod"] = operation;

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
        return "DBTwitterWebServices";
    }

	protected function getWSDLPort():String
	{
		return "DBTwitterWebServicesPort";
	}

    protected function getWSDLURL():String
    {
    	return "http://localhost:8080/SocialVision/DBTwitterWebServices?wsdl";
    }
    

    /**
      * This method is a generated wrapper used to call the 'getSpecificTwitterProcessedData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSpecificTwitterProcessedData(query:String, twitter_field:String, from_date_string:String, to_date_string:String, time_period:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSpecificTwitterProcessedData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,twitter_field,from_date_string,to_date_string,time_period) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTweetsFromPeriod' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTweetsFromPeriod(query:String, from_datetime_string:String, to_datetime_string:String, tweet_limit:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTweetsFromPeriod");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,from_datetime_string,to_datetime_string,tweet_limit) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTwitterHourlyProcessedData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTwitterHourlyProcessedData(query:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTwitterHourlyProcessedData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTwitterStreamTerms' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTwitterStreamTerms() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTwitterStreamTerms");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertTwitterStreamTerm' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertTwitterStreamTerm(name:String, query:String, num_of_pages:int, rpp:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertTwitterStreamTerm");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(name,query,num_of_pages,rpp) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTwitterDailyProcessedData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTwitterDailyProcessedData(query:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTwitterDailyProcessedData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTwitterMinutelyProcessedData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTwitterMinutelyProcessedData(query:String, from_date_string:String, to_date_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTwitterMinutelyProcessedData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,from_date_string,to_date_string) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'removeTwitterStreamTerm' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function removeTwitterStreamTerm(query:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("removeTwitterStreamTerm");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTweetCountFromPeriod' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTweetCountFromPeriod(query:String, from_datetime_string:String, to_datetime_string:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTweetCountFromPeriod");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,from_datetime_string,to_datetime_string) ;
        return _internal_token;
    }
     
}

}
