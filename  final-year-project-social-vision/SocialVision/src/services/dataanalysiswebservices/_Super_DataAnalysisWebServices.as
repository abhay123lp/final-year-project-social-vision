/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DataAnalysisWebServices.as.
 */
package services.dataanalysiswebservices
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.CorrelationXYData;

[ExcludeClass]
internal class _Super_DataAnalysisWebServices extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_DataAnalysisWebServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "calculateCorrelationTwitterVsFinance");
        operation.resultType = valueObjects.CorrelationXYData;
        operations["calculateCorrelationTwitterVsFinance"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "calculateCorrelationFinanceVsFinance");
        operation.resultType = valueObjects.CorrelationXYData;
        operations["calculateCorrelationFinanceVsFinance"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "calculateCorrelationTopsyVsFinance");
        operation.resultType = valueObjects.CorrelationXYData;
        operations["calculateCorrelationTopsyVsFinance"] = operation;

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
        return "DataAnalysisWebServices";
    }

	protected function getWSDLPort():String
	{
		return "DataAnalysisWebServicesPort";
	}

    protected function getWSDLURL():String
    {
    	return "http://localhost:8080/SocialVision/DataAnalysisWebServices?wsdl";
    }
    

    /**
      * This method is a generated wrapper used to call the 'calculateCorrelationTwitterVsFinance' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function calculateCorrelationTwitterVsFinance(query:String, twitter_field:String, finacial_field:String, from_date_string:String, to_date_string:String, day_delta:int, moving_average_type:String, moving_average_window_size:int, moving_average_alpha:Number, correlation_type:String, moving_correlation_window_size:int, time_interval:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("calculateCorrelationTwitterVsFinance");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,twitter_field,finacial_field,from_date_string,to_date_string,day_delta,moving_average_type,moving_average_window_size,moving_average_alpha,correlation_type,moving_correlation_window_size,time_interval) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'calculateCorrelationFinanceVsFinance' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function calculateCorrelationFinanceVsFinance(company_one_name:String, company_two_name:String, company_one_field:String, company_two_field:String, from_date_string:String, to_date_string:String, interval:String, moving_average_type:String, moving_average_window_size:int, moving_average_alpha:Number, correlation_type:String, moving_correlation_window_size:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("calculateCorrelationFinanceVsFinance");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(company_one_name,company_two_name,company_one_field,company_two_field,from_date_string,to_date_string,interval,moving_average_type,moving_average_window_size,moving_average_alpha,correlation_type,moving_correlation_window_size) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'calculateCorrelationTopsyVsFinance' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function calculateCorrelationTopsyVsFinance(query:String, topsy_field:String, finacial_field:String, from_date_string:String, to_date_string:String, day_delta:int, moving_average_type:String, moving_average_window_size:int, moving_average_alpha:Number, correlation_type:String, moving_correlation_window_size:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("calculateCorrelationTopsyVsFinance");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(query,topsy_field,finacial_field,from_date_string,to_date_string,day_delta,moving_average_type,moving_average_window_size,moving_average_alpha,correlation_type,moving_correlation_window_size) ;
        return _internal_token;
    }
     
}

}
