/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBMachineLearningWebServices.as.
 */
package services.dbmachinelearningwebservices
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.MachineLearningItem;
import valueObjects.SentimentRow;

[ExcludeClass]
internal class _Super_DBMachineLearningWebServices extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_DBMachineLearningWebServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTotalsForMachineLearningCountryData");
        operation.resultType = valueObjects.SentimentRow;
        operations["getTotalsForMachineLearningCountryData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllUnclassifiedCompanyTweets");
        operation.resultElementType = valueObjects.MachineLearningItem;
        operations["getAllUnclassifiedCompanyTweets"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "updateUnclassifiedCompanyTweet");
        operation.resultType = String;
        operations["updateUnclassifiedCompanyTweet"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllClassifiedCompanyTweets");
        operation.resultElementType = valueObjects.MachineLearningItem;
        operations["getAllClassifiedCompanyTweets"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "updateUnclassifiedCountryTweet");
        operation.resultType = String;
        operations["updateUnclassifiedCountryTweet"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllClassifiedCountryTweets");
        operation.resultElementType = valueObjects.MachineLearningItem;
        operations["getAllClassifiedCountryTweets"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTotalsForMachineLearningCompanyData");
        operation.resultType = valueObjects.SentimentRow;
        operations["getTotalsForMachineLearningCompanyData"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllUnclassifiedCountryTweets");
        operation.resultElementType = valueObjects.MachineLearningItem;
        operations["getAllUnclassifiedCountryTweets"] = operation;

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
        return "DBMachineLearningWebServices";
    }

	protected function getWSDLPort():String
	{
		return "DBMachineLearningWebServicesPort";
	}

    protected function getWSDLURL():String
    {
    	return "http://localhost:8080/SocialVision/DBMachineLearningWebServices?wsdl";
    }
    

    /**
      * This method is a generated wrapper used to call the 'getTotalsForMachineLearningCountryData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTotalsForMachineLearningCountryData() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTotalsForMachineLearningCountryData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllUnclassifiedCompanyTweets' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllUnclassifiedCompanyTweets() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllUnclassifiedCompanyTweets");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updateUnclassifiedCompanyTweet' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updateUnclassifiedCompanyTweet(tweet_id:int, content:String, sentiment_relevance:String, is_english:String, relevant:String, subjectivity:String, is_neutral:String, sentiment:String, growth_recession:String, political_stability:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updateUnclassifiedCompanyTweet");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(tweet_id,content,sentiment_relevance,is_english,relevant,subjectivity,is_neutral,sentiment,growth_recession,political_stability) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllClassifiedCompanyTweets' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllClassifiedCompanyTweets() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllClassifiedCompanyTweets");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updateUnclassifiedCountryTweet' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updateUnclassifiedCountryTweet(tweet_id:int, content:String, sentiment_relevance:String, is_english:String, relevant:String, subjectivity:String, is_neutral:String, sentiment:String, growth_recession:String, political_stability:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updateUnclassifiedCountryTweet");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(tweet_id,content,sentiment_relevance,is_english,relevant,subjectivity,is_neutral,sentiment,growth_recession,political_stability) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllClassifiedCountryTweets' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllClassifiedCountryTweets() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllClassifiedCountryTweets");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTotalsForMachineLearningCompanyData' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTotalsForMachineLearningCompanyData() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTotalsForMachineLearningCompanyData");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllUnclassifiedCountryTweets' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllUnclassifiedCountryTweets() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllUnclassifiedCountryTweets");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
}

}
