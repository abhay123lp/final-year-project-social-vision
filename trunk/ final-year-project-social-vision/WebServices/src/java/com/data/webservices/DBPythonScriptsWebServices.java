/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.webservices;

import com.data.dataitems.ApiTopsyMiniTasksItem;
import com.data.dataitems.PythonScriptItem;
import com.data.dataitems.PythonScriptParameter;
import com.data.operations.DBConnection;
import com.data.operations.DBPythonScriptOperations;
import com.data.operations.DBTopsyOperations;
import com.data.structures.AdvanceClassifierScriptInputs;
import com.data.structures.BasicClassifierScriptInputs;
import com.data.structures.ClassifierScriptOutputs;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
@WebService(serviceName = "DBFinancialWebServices")
public class DBPythonScriptsWebServices { 
    
    @WebMethod(operationName = "getAllPythonScriptStatuses")
    public Vector<PythonScriptItem> getAllPythonScriptStatuses() throws SQLException, NamingException{  
        return DBPythonScriptOperations.getAllPythonScriptStatuses();
    }
    
    @WebMethod(operationName = "getPythonScriptStatus")
    public PythonScriptItem getPythonScriptStatus(@WebParam(name = "script_name") String script_name)throws SQLException, NamingException{
 
        return DBPythonScriptOperations.getPythonScriptStatus(script_name);
    }
    
    @WebMethod(operationName = "getAllPythonScriptParameters")
    public  Vector<PythonScriptParameter> getAllPythonScriptParameters(@WebParam(name = "script_name")String script_name)throws SQLException, NamingException{

        return DBPythonScriptOperations.getAllPythonScriptParameters(script_name);
    }
    
    @WebMethod(operationName = "getPythonScriptParameter")
    public PythonScriptParameter getPythonScriptParameter(@WebParam(name = "script_name") String script_name, @WebParam(name = "parameter_name") String parameter_name)throws SQLException, NamingException{
  
        return DBPythonScriptOperations.getPythonScriptParameter(script_name, parameter_name);
    }
    
    @WebMethod(operationName = "updatePythonScriptParameter")
    public void updatePythonScriptParameter(@WebParam(name = "script_name") String script_name, @WebParam(name = "parameter_name") String parameter_name, @WebParam(name = "parameter_value") String parameter_value) throws SQLException, NamingException{       
        DBPythonScriptOperations.updatePythonScriptParameter(script_name, parameter_name, parameter_value);
    }
    
    @WebMethod(operationName = "getAllBasicClassifiersScriptInputs")
    public BasicClassifierScriptInputs getAllBasicClassifiersScriptInputs(
            @WebParam(name = "script_name") String script_name) throws SQLException, NamingException{       
        
        return DBPythonScriptOperations.getAllBasicClassifiersScriptInputs(script_name);
    }
    
    @WebMethod(operationName = "getAllAdvanceClassifiersScriptInputs")
    public AdvanceClassifierScriptInputs getAllAdvanceClassifiersScriptInputs(
            @WebParam(name = "script_name") String script_name) throws SQLException, NamingException{       
        return DBPythonScriptOperations.getAllAdvanceClassifiersScriptInputs(script_name);
    }
    
    @WebMethod(operationName = "getAllClassifiersScriptOutputs")
    public ClassifierScriptOutputs getAllClassifiersScriptOutputs(
            @WebParam(name = "script_name") String script_name) throws SQLException, NamingException{       
        return DBPythonScriptOperations.getAllClassifiersScriptOutputs(script_name);
    }
    
    @WebMethod(operationName = "updateBasicClassifierScriptInputs")
    public void updateBasicClassifierScriptInputs(
            @WebParam(name = "script_name") String script_name,
            @WebParam(name = "remove_short_words")String remove_short_words,
            @WebParam(name = "remove_stop_words")String remove_stop_words,
            @WebParam(name = "remove_low_info_words")String remove_low_info_words,
            @WebParam(name = "num_of_inf_words")String num_of_inf_words,
            @WebParam(name = "use_bigrams")String use_bigrams,
            @WebParam(name = "num_of_most_intersting_features_to_show")String num_of_most_intersting_features_to_show,
            @WebParam(name = "num_of_training_tweets") String num_of_training_tweets,
            @WebParam(name = "num_of_test_tweets")String num_of_test_tweets) throws SQLException, NamingException{       
        
        DBPythonScriptOperations.updateBasicClassifierScriptInputs(script_name, remove_short_words, remove_stop_words, remove_low_info_words, num_of_inf_words, use_bigrams, num_of_most_intersting_features_to_show, num_of_training_tweets, num_of_test_tweets);
    }
    
    @WebMethod(operationName = "updateAdvanceClassifierScriptInputs")
    public void updateAdvanceClassifierScriptInputs(
            @WebParam(name = "script_name") String script_name,
            @WebParam(name = "use_film_tweets")String use_film_tweets,
            @WebParam(name = "use_technology_tweets")String use_technology_tweets,
            @WebParam(name = "num_of_film_training_tweets") String num_of_film_training_tweets,
            @WebParam(name = "num_of_film_test_tweets")String num_of_film_test_tweets,
            @WebParam(name = "num_of_tech_training_tweets") String num_of_tech_training_tweets,
            @WebParam(name = "num_of_tech_test_tweets")String num_of_tech_test_tweets,
            @WebParam(name = "remove_short_words")String remove_short_words,
            @WebParam(name = "remove_stop_words")String remove_stop_words,
            @WebParam(name = "remove_low_info_words")String remove_low_info_words,
            @WebParam(name = "num_of_inf_words")String num_of_inf_words,
            @WebParam(name = "use_bigrams")String use_bigrams,
            @WebParam(name = "num_of_most_intersting_features_to_show")String num_of_most_intersting_features_to_show
               ) throws SQLException, NamingException{       
        
        DBPythonScriptOperations.updateAdvanceClassifierScriptInputs(script_name, use_film_tweets, use_technology_tweets, num_of_film_training_tweets, num_of_film_test_tweets, num_of_tech_training_tweets, num_of_tech_test_tweets, remove_short_words, remove_stop_words, remove_low_info_words, num_of_inf_words, use_bigrams, num_of_most_intersting_features_to_show);
    }
    
    @WebMethod(operationName = "startNLTKTrainClassifier")
    public String startNLTKTrainClassifier(
            @WebParam(name = "script_name")String script_name) throws SQLException, NamingException{       
        return DBPythonScriptOperations.startNLTKTrainClassifier(script_name);
    }
 
}
