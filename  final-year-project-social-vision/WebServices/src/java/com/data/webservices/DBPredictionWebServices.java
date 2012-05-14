/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.webservices;

import com.data.dataitems.ApiTopsyMiniTasksItem;
import com.data.dataitems.PythonScriptItem;
import com.data.dataitems.PythonScriptParameter;
import com.data.operations.DBConnection;
import com.data.operations.DBPredictionOperations;
import com.data.operations.DBPythonScriptOperations;
import com.data.operations.DBTopsyOperations;
import com.data.structures.*;
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
@WebService(serviceName = "DBPredictionWebServices")
public class DBPredictionWebServices { 
    
    @WebMethod(operationName = "getFinancialPredictionClassifierNLTKInputs")
    public FinancialPredictionClassifierNLTKInputs getFinancialPredictionClassifierNLTKInputs()
            throws SQLException, NamingException{       
        return DBPythonScriptOperations.getFinancialPredictionClassifierNLTKInputs();
    }
    
    @WebMethod(operationName = "getFinancialPredictionClassifierNLTKOutputs")
    public FinancialPredictionClassifierNLTKOutputs getFinancialPredictionClassifierNLTKOutputs()
            throws SQLException, NamingException{       
        return DBPythonScriptOperations.getFinancialPredictionClassifierNLTKOutputs();
    }

    @WebMethod(operationName = "getAllFinancialPredictionTaskItems")
    public Vector<FinancialPredictionTask> getAllFinancialPredictionTaskItems()
            throws SQLException, NamingException{        
        return DBPredictionOperations.getAllFinancialPredictionTaskItems();
    }
    
    @WebMethod(operationName = "getPredictionPerformanceItemsForTask")
    public Vector<FinancialPredictionPerformanceItem> getAllFinancialPredictionTaskItems(@WebParam(name = "prediction_task_id") int prediction_task_id)
            throws SQLException, NamingException{        
        return DBPredictionOperations.getPredictionPerformanceItemsForTask(prediction_task_id);
    }
    
    @WebMethod(operationName = "startNLTKFinancialPredictorScript")
    public void startNLTKFinancialPredictorScript()
            throws SQLException, NamingException{        
        
        DBPythonScriptOperations.startNLTKFinancialPredictorScript();
    }
     
    @WebMethod(operationName = "updateFinancialPredictionClassifierNLTKInputs")
    public void updateFinancialPredictionClassifierNLTKInputs(
    @WebParam(name = "training_from_date") String training_from_date,
    @WebParam(name = "training_to_date") String training_to_date,
    @WebParam(name = "training_limit") String training_limit,
    @WebParam(name = "test_from_date") String test_from_date,
    @WebParam(name = "test_to_date") String test_to_date,
    @WebParam(name = "interval_value") String interval_value,
    @WebParam(name = "tweets_fin_time_delta_value") String tweets_fin_time_delta_value,
    @WebParam(name = "interval_unit") String interval_unit,
    @WebParam(name = "tweets_fin_time_delta_unit") String tweets_fin_time_delta_unit,
    @WebParam(name = "tweet_source") String tweet_source,
    @WebParam(name = "remove_short_words") String remove_short_words,
    @WebParam(name = "remove_stop_words") String remove_stop_words,
    @WebParam(name = "remove_low_info_words") String remove_low_info_words,
    @WebParam(name = "num_of_inf_words") String num_of_inf_words,
    @WebParam(name = "use_bigrams") String use_bigrams,
    @WebParam(name = "remove_non_english") String remove_non_english,
    @WebParam(name = "remove_irrelevant") String remove_irrelevant,
    @WebParam(name = "include_subjective") String include_subjective,
    @WebParam(name = "include_objective") String include_objective,
    @WebParam(name = "company_name") String company_name)
            throws SQLException, NamingException{       
       
             DBPythonScriptOperations.updateFinancialPredictionClassifierNLTKInputs(training_from_date, training_to_date, training_limit, test_from_date, test_to_date, 
                     interval_value, tweets_fin_time_delta_value, interval_unit, tweets_fin_time_delta_unit, tweet_source, remove_short_words, remove_stop_words, 
                     remove_low_info_words, num_of_inf_words, use_bigrams, remove_non_english, remove_irrelevant, include_subjective, include_objective, company_name);
    }
    

}
