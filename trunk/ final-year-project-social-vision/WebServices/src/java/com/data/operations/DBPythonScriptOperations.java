/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.operations;

import com.data.dataitems.PythonScriptItem;
import com.data.dataitems.PythonScriptParameter;
import com.data.structures.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class DBPythonScriptOperations {
    
    public static Vector<PythonScriptItem> getAllPythonScriptStatuses() throws SQLException, NamingException{
        DBConnection dbConn = new DBConnection();

        String SQL = "SELECT * FROM python_scripts";
              
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<PythonScriptItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoPythonScriptItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static PythonScriptItem getPythonScriptStatus(String script_name)throws SQLException, NamingException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM python_scripts WHERE name = '"+script_name+"' ";          
        dbConn.executeGetResultSetSQL(SQL);   
        PythonScriptItem result = null;
        if(dbConn.rs != null)
            result = convertRStoPythonScriptItem(dbConn.rs);   
        dbConn.closeConnection();    
        return result;
    }
    
    public static Vector<PythonScriptParameter> getAllPythonScriptParameters(String script_name)throws SQLException, NamingException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM python_scripts_parameters WHERE python_script_name = '"+script_name+"'";        
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<PythonScriptParameter> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoPythonScriptParameters(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static PythonScriptParameter getPythonScriptParameter(String script_name, String parameter_name)throws SQLException, NamingException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM python_scripts_parameters WHERE python_script_name = '"+script_name+"' AND  parameter_name = '"+parameter_name+"' ";            
        dbConn.executeGetResultSetSQL(SQL);   
        PythonScriptParameter result = null;
        if(dbConn.rs != null)
            result = convertRStoPythonScriptParameter(dbConn.rs);   
        dbConn.closeConnection();    
        return result;
    }
    
    public static FinancialPredictionClassifierNLTKInputs getFinancialPredictionClassifierNLTKInputs() throws SQLException, NamingException
    {
        String script_name = "NLTKFinancialPredictor";
        FinancialPredictionClassifierNLTKInputs inputs = new FinancialPredictionClassifierNLTKInputs();
        inputs.company_name = getPythonScriptParameter(script_name,"company_name").parameter_value;
        inputs.training_from_date = getPythonScriptParameter(script_name,"training_from_date").parameter_value;
        inputs.training_to_date = getPythonScriptParameter(script_name,"training_to_date").parameter_value;
        inputs.interval_value = getPythonScriptParameter(script_name,"interval_value").parameter_value;
        inputs.training_limit = getPythonScriptParameter(script_name,"training_limit").parameter_value;
        inputs.test_from_date = getPythonScriptParameter(script_name,"test_from_date").parameter_value;
        inputs.test_to_date = getPythonScriptParameter(script_name,"test_to_date").parameter_value;
        inputs.tweets_fin_time_delta_value = getPythonScriptParameter(script_name,"tweets_fin_time_delta_value").parameter_value;
        inputs.tweet_source = getPythonScriptParameter(script_name,"tweet_source").parameter_value;
        inputs.remove_short_words = getPythonScriptParameter(script_name,"remove_short_words").parameter_value;
        inputs.remove_stop_words = getPythonScriptParameter(script_name,"remove_stop_words").parameter_value;
        inputs.remove_low_info_words = getPythonScriptParameter(script_name,"remove_low_info_words").parameter_value;
        inputs.num_of_inf_words = getPythonScriptParameter(script_name,"num_of_inf_words").parameter_value;
        inputs.use_bigrams = getPythonScriptParameter(script_name,"use_bigrams").parameter_value;
        inputs.remove_non_english = getPythonScriptParameter(script_name,"remove_non_english").parameter_value;
        inputs.remove_irrelevant = getPythonScriptParameter(script_name,"remove_irrelevant").parameter_value;
        inputs.include_subjective = getPythonScriptParameter(script_name,"include_subjective").parameter_value;
        inputs.include_objective = getPythonScriptParameter(script_name,"include_objective").parameter_value;
        inputs.interval_unit = getPythonScriptParameter(script_name,"interval_unit").parameter_value;
        inputs.tweets_fin_time_delta_unit = getPythonScriptParameter(script_name,"tweets_fin_time_delta_unit").parameter_value;
        return inputs;
    }
    
    public static FinancialPredictionClassifierNLTKOutputs getFinancialPredictionClassifierNLTKOutputs() throws SQLException, NamingException
    {
        String script_name = "NLTKFinancialPredictor";
        FinancialPredictionClassifierNLTKOutputs outputs = new FinancialPredictionClassifierNLTKOutputs();
        outputs.accuracy = getPythonScriptParameter(script_name,"accuracy").parameter_value;
        outputs.down_recall = getPythonScriptParameter(script_name,"down_recall").parameter_value;
        outputs.up_recall = getPythonScriptParameter(script_name,"up_recall").parameter_value;
        outputs.up_precision = getPythonScriptParameter(script_name,"up_precision").parameter_value;
        outputs.down_precision = getPythonScriptParameter(script_name,"down_precision").parameter_value;
        outputs.most_informative_features = getPythonScriptParameter(script_name,"most_informative_features").parameter_value;
        outputs.prediction  = getPythonScriptParameter(script_name,"prediction ").parameter_value;
        outputs.up_prediction_prob = getPythonScriptParameter(script_name,"up_prediction_prob").parameter_value;
        outputs.down_prediction_prob = getPythonScriptParameter(script_name,"down_prediction_prob").parameter_value;
        return outputs;
    }
    
    public static void updateFinancialPredictionClassifierNLTKInputs(String training_from_date,String training_to_date,String training_limit,String test_from_date,
            String test_to_date, String interval_value, String tweets_fin_time_delta_value, String interval_unit, String tweets_fin_time_delta_unit,
            String tweet_source, String remove_short_words, String remove_stop_words, String remove_low_info_words, String num_of_inf_words,
            String use_bigrams, String remove_non_english, String remove_irrelevant, String include_subjective,String include_objective, String company_name) throws SQLException, NamingException
    {
            String script_name = "NLTKFinancialPredictor";
            updatePythonScriptParameter(script_name, "training_from_date", training_from_date);
            updatePythonScriptParameter(script_name, "training_to_date", training_to_date);
            updatePythonScriptParameter(script_name, "training_limit", training_limit);
            updatePythonScriptParameter(script_name, "test_from_date", test_from_date);
            updatePythonScriptParameter(script_name, "test_to_date", test_to_date);
            updatePythonScriptParameter(script_name, "interval_value", interval_value);
            updatePythonScriptParameter(script_name, "tweets_fin_time_delta_value", tweets_fin_time_delta_value);
            updatePythonScriptParameter(script_name, "interval_unit", interval_unit);
            updatePythonScriptParameter(script_name, "tweets_fin_time_delta_unit", tweets_fin_time_delta_unit);
            updatePythonScriptParameter(script_name, "tweet_source", tweet_source);
            updatePythonScriptParameter(script_name, "remove_short_words", remove_short_words);
            updatePythonScriptParameter(script_name, "remove_stop_words", remove_stop_words);
            updatePythonScriptParameter(script_name, "remove_low_info_words", remove_low_info_words);
            updatePythonScriptParameter(script_name, "num_of_inf_words", num_of_inf_words);
            updatePythonScriptParameter(script_name, "use_bigrams", use_bigrams);
            updatePythonScriptParameter(script_name, "remove_non_english", remove_non_english);
            updatePythonScriptParameter(script_name, "remove_irrelevant", remove_irrelevant);
            updatePythonScriptParameter(script_name, "include_subjective", include_subjective);
            updatePythonScriptParameter(script_name, "include_objective", include_objective);
            updatePythonScriptParameter(script_name, "company_name", company_name);
    }
    
    public static BasicClassifierScriptInputs getAllBasicClassifiersScriptInputs(String script_name) throws SQLException, NamingException
    {
        BasicClassifierScriptInputs inputs = new BasicClassifierScriptInputs();
        inputs.num_of_inf_words = getPythonScriptParameter(script_name,"num_of_inf_words").parameter_value;
        inputs.num_of_most_intersting_features_to_show = getPythonScriptParameter(script_name,"num_of_most_intersting_features_to_show").parameter_value;;
        inputs.num_of_test_tweets = getPythonScriptParameter(script_name,"num_of_test_tweets").parameter_value;
        inputs.num_of_training_tweets = getPythonScriptParameter(script_name,"num_of_training_tweets").parameter_value;
        inputs.remove_low_info_words = getPythonScriptParameter(script_name,"remove_low_info_words").parameter_value;
        inputs.remove_short_words = getPythonScriptParameter(script_name,"remove_short_words").parameter_value;
        inputs.remove_stop_words = getPythonScriptParameter(script_name,"remove_stop_words").parameter_value;
        inputs.use_bigrams = getPythonScriptParameter(script_name,"use_bigrams").parameter_value;
        return inputs;
    }
           
    public static AdvanceClassifierScriptInputs getAllAdvanceClassifiersScriptInputs(String script_name) throws SQLException, NamingException
    {
        AdvanceClassifierScriptInputs inputs = new AdvanceClassifierScriptInputs();
        inputs.use_film_tweets = getPythonScriptParameter(script_name,"use_film_tweets").parameter_value;
        inputs.use_technology_tweets = getPythonScriptParameter(script_name,"use_technology_tweets").parameter_value;
        inputs.num_of_film_training_tweets = getPythonScriptParameter(script_name,"num_of_film_training_tweets").parameter_value;
        inputs.num_of_film_test_tweets = getPythonScriptParameter(script_name,"num_of_film_test_tweets ").parameter_value;
        inputs.num_of_tech_training_tweets = getPythonScriptParameter(script_name,"num_of_tech_training_tweets").parameter_value;
        inputs.num_of_tech_test_tweets = getPythonScriptParameter(script_name,"num_of_tech_test_tweets").parameter_value;
        inputs.num_of_inf_words = getPythonScriptParameter(script_name,"num_of_inf_words").parameter_value;
        inputs.num_of_most_intersting_features_to_show = getPythonScriptParameter(script_name,"num_of_most_intersting_features_to_show").parameter_value;;
        inputs.remove_low_info_words = getPythonScriptParameter(script_name,"remove_low_info_words").parameter_value;
        inputs.remove_short_words = getPythonScriptParameter(script_name,"remove_short_words").parameter_value;
        inputs.remove_stop_words = getPythonScriptParameter(script_name,"remove_stop_words").parameter_value;
        inputs.use_bigrams = getPythonScriptParameter(script_name,"use_bigrams").parameter_value;
        return inputs;
    }

    // For company data only at the moment 
    public static ClassifierScriptOutputs getAllClassifiersScriptOutputs(String script_name) throws SQLException, NamingException
    {
        ClassifierScriptOutputs outputs = new ClassifierScriptOutputs();
        outputs.most_informative_features = getPythonScriptParameter(script_name,"most_informative_features").parameter_value;
        outputs.accuracy = getPythonScriptParameter(script_name,"accuracy").parameter_value;
        
        if(script_name.equals("NLTKCompanyIsEnglishClassifier"))
        {
            outputs.one_precision = getPythonScriptParameter(script_name,"english_precision").parameter_value;
            outputs.one_recall = getPythonScriptParameter(script_name,"english_recall").parameter_value;
            outputs.two_precision = getPythonScriptParameter(script_name,"not_english_precision").parameter_value;
            outputs.two_recall = getPythonScriptParameter(script_name,"not_english_recall").parameter_value;
        }
        else if(script_name.equals("NLTKCompanyRelevanceClassifier"))
        {
            outputs.one_precision = getPythonScriptParameter(script_name,"relevant_precision").parameter_value;
            outputs.one_recall = getPythonScriptParameter(script_name,"relevant_recall").parameter_value;
            outputs.two_precision = getPythonScriptParameter(script_name,"irrelevant_precision").parameter_value;
            outputs.two_recall = getPythonScriptParameter(script_name,"irrelevant_recall").parameter_value;
        }
        
        else if(script_name.equals("NLTKCompanyIsNeutralClassifier"))
        {
            outputs.one_precision = getPythonScriptParameter(script_name,"neutral_precision").parameter_value;
            outputs.one_recall = getPythonScriptParameter(script_name,"neutral_recall").parameter_value;
            outputs.two_precision = getPythonScriptParameter(script_name,"not_neutral_precision").parameter_value;
            outputs.two_recall = getPythonScriptParameter(script_name,"not_neutral_recall").parameter_value;
        }
        else if(script_name.equals("NLTKCompanySubjectivityClassifier"))
        {
            outputs.one_precision = getPythonScriptParameter(script_name,"subjective_precision").parameter_value;
            outputs.one_recall = getPythonScriptParameter(script_name,"subjective_recall").parameter_value;
            outputs.two_precision = getPythonScriptParameter(script_name,"objective_precision").parameter_value;
            outputs.two_recall = getPythonScriptParameter(script_name,"objective_recall").parameter_value;
        }
        else if(script_name.equals("NLTKCompanySentimentClassifier"))
        {
            outputs.one_precision = getPythonScriptParameter(script_name,"positive_precision").parameter_value;
            outputs.one_recall = getPythonScriptParameter(script_name,"positive_recall").parameter_value;
            outputs.two_precision = getPythonScriptParameter(script_name,"negative_precision").parameter_value;
            outputs.two_recall = getPythonScriptParameter(script_name,"negative_recall").parameter_value;
        }
        else if(script_name.equals("NLTKCompanyGrowthRecessionClassifier"))
        {
            outputs.one_precision = getPythonScriptParameter(script_name,"growth_precision").parameter_value;
            outputs.one_recall = getPythonScriptParameter(script_name,"growth_recall").parameter_value;
            outputs.two_precision = getPythonScriptParameter(script_name,"recession_precision").parameter_value;
            outputs.two_recall = getPythonScriptParameter(script_name,"recession_recall").parameter_value;
        }
        return outputs;
    }
  
    public static void updatePythonScriptParameter(String script_name, String parameter_name, String parameter_value)throws SQLException, NamingException{
        DBConnection dbConn = new DBConnection();
        String SQL = "UPDATE python_scripts_parameters SET parameter_value = '"+parameter_value+"' WHERE python_script_name = '"+script_name+"' AND parameter_name = '"+parameter_name+"'";
        dbConn.executeUpdateSQL(SQL);
        dbConn.closeConnection();
    }
    
    public static void updateBasicClassifierScriptInputs(String script_name, String remove_short_words,String remove_stop_words, String remove_low_info_words, 
            String num_of_inf_words, String use_bigrams, String num_of_most_intersting_features_to_show, String num_of_training_tweets, String num_of_test_tweets) throws SQLException, NamingException
    {
            updatePythonScriptParameter(script_name, "remove_short_words", remove_short_words);
            updatePythonScriptParameter(script_name, "remove_stop_words", remove_stop_words);
            updatePythonScriptParameter(script_name, "remove_low_info_words", remove_low_info_words);
            updatePythonScriptParameter(script_name, "num_of_inf_words", num_of_inf_words);
            updatePythonScriptParameter(script_name, "use_bigrams", use_bigrams);
            updatePythonScriptParameter(script_name, "num_of_most_intersting_features_to_show", num_of_most_intersting_features_to_show);
            updatePythonScriptParameter(script_name, "num_of_training_tweets", num_of_training_tweets);
            updatePythonScriptParameter(script_name, "num_of_test_tweets", num_of_test_tweets);   
    }
    
    public static void updateAdvanceClassifierScriptInputs(String script_name, String use_film_tweets,String use_technology_tweets,
            String num_of_film_training_tweets, String num_of_film_test_tweets, String num_of_tech_training_tweets, String num_of_tech_test_tweets,
            String remove_short_words, String remove_stop_words, String remove_low_info_words, 
            String num_of_inf_words, String use_bigrams, String num_of_most_intersting_features_to_show) throws SQLException, NamingException
    {
            updatePythonScriptParameter(script_name, "use_film_tweets", use_film_tweets);
            updatePythonScriptParameter(script_name, "use_technology_tweets", use_technology_tweets);
            updatePythonScriptParameter(script_name, "num_of_film_training_tweets", num_of_film_training_tweets);
            updatePythonScriptParameter(script_name, "num_of_film_test_tweets", num_of_film_test_tweets);
            updatePythonScriptParameter(script_name, "num_of_tech_training_tweets", num_of_tech_training_tweets);
            updatePythonScriptParameter(script_name, "num_of_tech_test_tweets", num_of_tech_test_tweets);
            updatePythonScriptParameter(script_name, "remove_short_words", remove_short_words);
            updatePythonScriptParameter(script_name, "remove_stop_words", remove_stop_words);
            updatePythonScriptParameter(script_name, "remove_low_info_words", remove_low_info_words);
            updatePythonScriptParameter(script_name, "num_of_inf_words", num_of_inf_words);
            updatePythonScriptParameter(script_name, "use_bigrams", use_bigrams);
            updatePythonScriptParameter(script_name, "num_of_most_intersting_features_to_show", num_of_most_intersting_features_to_show); 
    }
    
    public static Vector<PythonScriptItem> convertRStoPythonScriptItems(ResultSet aRs) throws SQLException{
        Vector<PythonScriptItem> resultList = new Vector<PythonScriptItem>();
        while (aRs.next())
        {
            PythonScriptItem item = new PythonScriptItem(); 
            item.daily_run_count = aRs.getInt("daily_run_count");
            item.error_date_time = aRs.getDate("error_date_time");
            item.error_message = aRs.getString("error_message");
            item.id_python_script = aRs.getInt("id_python_script");
            item.interval = aRs.getString("interval");
            item.last_progress_update = aRs.getDate("last_progress_update");
            item.last_run_date = aRs.getDate("last_run_date");
            item.name = aRs.getString("name");
            item.progress = aRs.getString("progress");
            item.status = aRs.getString("status");
            resultList.add(item);
        }       
        return resultList;
    }
    
    public static String startNLTKTrainClassifier(String script_name)
    {  
        String message = "Training started: " + script_name;
        try {
                 //Process p=Runtime.getRuntime().exec("C:\\Python27\\NLTKTrainClassifier.py  script_name txtstr);
                 Runtime.getRuntime().exec("cmd /c start C:\\Python27\\NLTKTrainClassifier.py " + script_name);
        } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                message = e.getMessage().toString();
        }    
        return message;
    } 
    
    public static String startNLTKFinancialPredictorScript()
    {  
        String message = "NLTKFinancialPredictorScript Started";
        try {
                 //Process p=Runtime.getRuntime().exec("C:\\Python27\\NLTKTrainClassifier.py  script_name txtstr);
                 Runtime.getRuntime().exec("cmd /c start C:\\Python27\\NLTKFinancialPredictor.py");
        } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                message = e.getMessage().toString();
        }    
        return message;
    } 
   
    public static PythonScriptItem convertRStoPythonScriptItem(ResultSet aRs) throws SQLException{
        aRs.next();   
        PythonScriptItem item = new PythonScriptItem(); 
        item.daily_run_count = aRs.getInt("daily_run_count");
        item.error_date_time = aRs.getDate("error_date_time");
        item.error_message = aRs.getString("error_message");
        item.id_python_script = aRs.getInt("id_python_script");
        item.interval = aRs.getString("interval");
        item.last_progress_update = aRs.getDate("last_progress_update");
        item.last_run_date = aRs.getDate("last_run_date");
        item.name = aRs.getString("name");
        item.progress = aRs.getString("progress");
        item.status = aRs.getString("status");     
        return item;
    }
    
    public static Vector<PythonScriptParameter> convertRStoPythonScriptParameters(ResultSet aRs) throws SQLException{
        Vector<PythonScriptParameter> resultList = new Vector<PythonScriptParameter>();
        while (aRs.next())
        {
            PythonScriptParameter item = new PythonScriptParameter(); 
            item.id_parameters = aRs.getInt("id_parameters");
            item.parameter_name = aRs.getString("parameter_name");
            item.parameter_value = aRs.getString("parameter_value");
            item.python_script_name = aRs.getString("python_script_name");
            resultList.add(item);
        }       
        return resultList;
    }

    public static PythonScriptParameter convertRStoPythonScriptParameter(ResultSet aRs) throws SQLException{
        aRs.next();   
        PythonScriptParameter item = new PythonScriptParameter(); 
        item.id_parameters = aRs.getInt("id_parameters");
        item.parameter_name = aRs.getString("parameter_name");
        item.parameter_value = aRs.getString("parameter_value");
        item.python_script_name = aRs.getString("python_script_name");    
        return item;
    }
}
