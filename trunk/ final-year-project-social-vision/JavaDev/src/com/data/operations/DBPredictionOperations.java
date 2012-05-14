/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.operations;

import com.data.dataitems.MachineLearningItem;
import com.data.dataitems.PythonScriptItem;
import com.data.dataitems.PythonScriptParameter;
import com.data.structures.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Vector;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class DBPredictionOperations {
    
    public static Vector<FinancialPredictionTask> getAllFinancialPredictionTaskItems(String script_name)throws SQLException, NamingException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM prediction_tasks ORDER BY date_run DESC";        
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<FinancialPredictionTask> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoFinancialPredictionTaskItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<FinancialPredictionPerformanceItem> convertRStoFinancialPredictionPerformanceItemsForTask(int prediction_task_id)throws SQLException, NamingException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM prediction_performance_data WHERE prediction_task_id = '"+prediction_task_id+"' ORDER BY date DESC";        
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<FinancialPredictionPerformanceItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoFinancialPredictionPerformanceItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<FinancialPredictionTask> convertRStoFinancialPredictionTaskItems(ResultSet aRs) throws SQLException{
        Vector<FinancialPredictionTask> resultList = new Vector<FinancialPredictionTask>();
        while (aRs.next())
        {
            FinancialPredictionTask item = new FinancialPredictionTask(); 
            item.prediction_task_id = aRs.getInt("prediction_task_id");
            item.company_name = aRs.getString("company_name");
            item.date_run = aRs.getDate("date_run");
            item.tweet_source = aRs.getString("tweet_source");
            item.prediction_type = aRs.getString("prediction_type");
            item.historical_current_type = aRs.getString("historical_current_type");
            item.tweets_fin_time_delta_value = aRs.getInt("tweets_fin_time_delta_value");
            item.tweets_fin_time_delta_unit = aRs.getString("tweets_fin_time_delta_unit");
            item.interval_value = aRs.getInt("interval_value");
            item.training_limit = aRs.getInt("training_limit");
            item.training_from_date = aRs.getDate("training_from_date");
            item.training_to_date = aRs.getDate("training_to_date");
            item.test_from_date = aRs.getDate("test_from_date");
            item.test_to_date = aRs.getDate("test_to_date");
            item.remove_short_words = aRs.getString("remove_short_words");
            item.remove_stop_words = aRs.getString("remove_stop_words");
            item.remove_low_info_words = aRs.getString("remove_low_info_words");
            item.num_of_inf_words = aRs.getInt("num_of_inf_words");
            item.use_bigrams = aRs.getString("use_bigrams");
            item.remove_non_english = aRs.getString("remove_non_english");
            item.remove_irrelevant = aRs.getString("remove_irrelevant");
            item.include_subjective = aRs.getString("include_subjective");
            item.include_objective = aRs.getString("include_objective");
            item.down_precision = aRs.getDouble("down_precision");
            item.down_recall = aRs.getDouble("down_recall");
            item.up_precision = aRs.getDouble("up_precision");
            item.up_recall = aRs.getDouble("up_recall");
            item.prediction = aRs.getString("prediction");
            item.up_prediction_prob = aRs.getDouble("up_prediction_prob");
            item.down_prediction_prob = aRs.getDouble("down_prediction_prob");
            item.num_of_most_intersting_features_to_show = aRs.getInt("num_of_most_intersting_features_to_show");
            item.most_informative_features = aRs.getString("most_informative_features");
            resultList.add(item);
        }       
        return resultList;
    }

    public static Vector<FinancialPredictionPerformanceItem> convertRStoFinancialPredictionPerformanceItems(ResultSet aRs) throws SQLException{
        Vector<FinancialPredictionPerformanceItem> resultList = new Vector<FinancialPredictionPerformanceItem>();
        while (aRs.next())
        {
            FinancialPredictionPerformanceItem item = new FinancialPredictionPerformanceItem(); 
            item.prediction_data_item_id = aRs.getInt("prediction_data_item_id");
            item.prediction_task_id = aRs.getInt("prediction_task_id");
            item.company_name = aRs.getString("company_name");
            item.predicton_type = aRs.getString("predicton_type");
            item.date = aRs.getDate("date");
            item.predicted_from_date = aRs.getDate("predicted_from_date");
            item.actual_financial_change_value = aRs.getDouble("actual_financial_change_value");
            item.actual_financial_change_percent = aRs.getDouble("actual_financial_change_percent");
            item.actual_financial_direction = aRs.getString("actual_financial_direction");
            item.predicted_financial_direction = aRs.getString("predicted_financial_direction");
            item.predicted_financial_change = aRs.getDouble("predicted_financial_change");
            item.predicted_financial_up_prob = aRs.getDouble("predicted_financial_up_prob");
            item.predicted_financial_down_prob = aRs.getDouble("predicted_financial_down_prob");
            item.predicted_financial_normalised_prob = aRs.getDouble("predicted_financial_normalised_prob");
            resultList.add(item);
        }       
        return resultList;
    }
}
