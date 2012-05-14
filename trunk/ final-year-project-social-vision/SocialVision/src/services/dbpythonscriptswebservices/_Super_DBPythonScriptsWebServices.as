/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - DBPythonScriptsWebServices.as.
 */
package services.dbpythonscriptswebservices
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.AdvanceClassifierScriptInputs;
import valueObjects.BasicClassifierScriptInputs;
import valueObjects.ClassifierScriptOutputs;
import valueObjects.PythonScriptItem;
import valueObjects.PythonScriptParameter;

[ExcludeClass]
internal class _Super_DBPythonScriptsWebServices extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_DBPythonScriptsWebServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllPythonScriptParameters");
        operation.resultElementType = valueObjects.PythonScriptParameter;
        operations["getAllPythonScriptParameters"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getPythonScriptStatus");
        operation.resultType = valueObjects.PythonScriptItem;
        operations["getPythonScriptStatus"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "updatePythonScriptParameter");
        operations["updatePythonScriptParameter"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "updateAdvanceClassifierScriptInputs");
        operations["updateAdvanceClassifierScriptInputs"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "updateBasicClassifierScriptInputs");
        operations["updateBasicClassifierScriptInputs"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllClassifiersScriptOutputs");
        operation.resultType = valueObjects.ClassifierScriptOutputs;
        operations["getAllClassifiersScriptOutputs"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getPythonScriptParameter");
        operation.resultType = valueObjects.PythonScriptParameter;
        operations["getPythonScriptParameter"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "startNLTKTrainClassifier");
        operation.resultType = String;
        operations["startNLTKTrainClassifier"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllBasicClassifiersScriptInputs");
        operation.resultType = valueObjects.BasicClassifierScriptInputs;
        operations["getAllBasicClassifiersScriptInputs"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllPythonScriptStatuses");
        operation.resultElementType = valueObjects.PythonScriptItem;
        operations["getAllPythonScriptStatuses"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getAllAdvanceClassifiersScriptInputs");
        operation.resultType = valueObjects.AdvanceClassifierScriptInputs;
        operations["getAllAdvanceClassifiersScriptInputs"] = operation;

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
		return "DBPythonScriptsWebServicesPort";
	}

    protected function getWSDLURL():String
    {
    	return "http://localhost:8080/SocialVision/DBPythonScriptsWebServices?wsdl";
    }
    

    /**
      * This method is a generated wrapper used to call the 'getAllPythonScriptParameters' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllPythonScriptParameters(script_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllPythonScriptParameters");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getPythonScriptStatus' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPythonScriptStatus(script_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPythonScriptStatus");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updatePythonScriptParameter' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updatePythonScriptParameter(script_name:String, parameter_name:String, parameter_value:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updatePythonScriptParameter");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name,parameter_name,parameter_value) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updateAdvanceClassifierScriptInputs' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updateAdvanceClassifierScriptInputs(script_name:String, use_film_tweets:String, use_technology_tweets:String, num_of_film_training_tweets:String, num_of_film_test_tweets:String, num_of_tech_training_tweets:String, num_of_tech_test_tweets:String, remove_short_words:String, remove_stop_words:String, remove_low_info_words:String, num_of_inf_words:String, use_bigrams:String, num_of_most_intersting_features_to_show:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updateAdvanceClassifierScriptInputs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name,use_film_tweets,use_technology_tweets,num_of_film_training_tweets,num_of_film_test_tweets,num_of_tech_training_tweets,num_of_tech_test_tweets,remove_short_words,remove_stop_words,remove_low_info_words,num_of_inf_words,use_bigrams,num_of_most_intersting_features_to_show) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updateBasicClassifierScriptInputs' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updateBasicClassifierScriptInputs(script_name:String, remove_short_words:String, remove_stop_words:String, remove_low_info_words:String, num_of_inf_words:String, use_bigrams:String, num_of_most_intersting_features_to_show:String, num_of_training_tweets:String, num_of_test_tweets:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updateBasicClassifierScriptInputs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name,remove_short_words,remove_stop_words,remove_low_info_words,num_of_inf_words,use_bigrams,num_of_most_intersting_features_to_show,num_of_training_tweets,num_of_test_tweets) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllClassifiersScriptOutputs' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllClassifiersScriptOutputs(script_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllClassifiersScriptOutputs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getPythonScriptParameter' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPythonScriptParameter(script_name:String, parameter_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPythonScriptParameter");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name,parameter_name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'startNLTKTrainClassifier' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function startNLTKTrainClassifier(script_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("startNLTKTrainClassifier");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllBasicClassifiersScriptInputs' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllBasicClassifiersScriptInputs(script_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllBasicClassifiersScriptInputs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllPythonScriptStatuses' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllPythonScriptStatuses() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllPythonScriptStatuses");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllAdvanceClassifiersScriptInputs' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllAdvanceClassifiersScriptInputs(script_name:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllAdvanceClassifiersScriptInputs");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(script_name) ;
        return _internal_token;
    }
     
}

}
