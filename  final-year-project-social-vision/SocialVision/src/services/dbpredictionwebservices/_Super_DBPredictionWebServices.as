/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBPredictionWebServices.as.
 */
package services.dbpredictionwebservices
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.FinancialPredictionClassifierNLTKInputs;
import valueObjects.FinancialPredictionClassifierNLTKOutputs;
import valueObjects.FinancialPredictionPerformanceItem;
import valueObjects.FinancialPredictionTask;

[ExcludeClass]
internal class _Super_DBPredictionWebServices extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_DBPredictionWebServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllFinancialPredictionTaskItems");
        operation.resultElementType = valueObjects.FinancialPredictionTask;
        operations["getAllFinancialPredictionTaskItems"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getPredictionPerformanceItemsForTask");
        operation.resultElementType = valueObjects.FinancialPredictionPerformanceItem;
        operations["getPredictionPerformanceItemsForTask"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getFinancialPredictionClassifierNLTKInputs");
        operation.resultType = valueObjects.FinancialPredictionClassifierNLTKInputs;
        operations["getFinancialPredictionClassifierNLTKInputs"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "updateFinancialPredictionClassifierNLTKInputs");
        operations["updateFinancialPredictionClassifierNLTKInputs"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "startNLTKFinancialPredictorScript");
        operations["startNLTKFinancialPredictorScript"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getFinancialPredictionClassifierNLTKOutputs");
        operation.resultType = valueObjects.FinancialPredictionClassifierNLTKOutputs;
        operations["getFinancialPredictionClassifierNLTKOutputs"] = operation;

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
        return "DBPredictionWebServices";
    }

	protected function getWSDLPort():String
	{
		return "DBPredictionWebServicesPort";
	}

    protected function getWSDLURL():String
    {
    	return "http://localhost:8080/SocialVision/DBPredictionWebServices?wsdl";
    }
    

    /**
      * This method is a generated wrapper used to call the 'getAllFinancialPredictionTaskItems' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllFinancialPredictionTaskItems() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllFinancialPredictionTaskItems");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getPredictionPerformanceItemsForTask' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPredictionPerformanceItemsForTask(prediction_task_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPredictionPerformanceItemsForTask");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(prediction_task_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getFinancialPredictionClassifierNLTKInputs' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getFinancialPredictionClassifierNLTKInputs() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getFinancialPredictionClassifierNLTKInputs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updateFinancialPredictionClassifierNLTKInputs' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updateFinancialPredictionClassifierNLTKInputs(training_from_date:String, training_to_date:String, training_limit:String, test_from_date:String, test_to_date:String, interval_value:String, tweets_fin_time_delta_value:String, interval_unit:String, tweets_fin_time_delta_unit:String, tweet_source:String, remove_short_words:String, remove_stop_words:String, remove_low_info_words:String, num_of_inf_words:String, use_bigrams:String, remove_non_english:String, remove_irrelevant:String, include_subjective:String, include_objective:String, company_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updateFinancialPredictionClassifierNLTKInputs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(training_from_date,training_to_date,training_limit,test_from_date,test_to_date,interval_value,tweets_fin_time_delta_value,interval_unit,tweets_fin_time_delta_unit,tweet_source,remove_short_words,remove_stop_words,remove_low_info_words,num_of_inf_words,use_bigrams,remove_non_english,remove_irrelevant,include_subjective,include_objective,company_name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'startNLTKFinancialPredictorScript' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function startNLTKFinancialPredictorScript() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("startNLTKFinancialPredictorScript");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getFinancialPredictionClassifierNLTKOutputs' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getFinancialPredictionClassifierNLTKOutputs() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getFinancialPredictionClassifierNLTKOutputs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
}

}
