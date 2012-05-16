/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.operations;

import com.data.dataitems.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;
import javax.jws.WebMethod;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class DBTopsyOperations {
    public static Vector<ApiTopsyMiniTasksItem> getAllTopsyMiniTasks(String completed) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();

        String SQL;
        if(completed.equals("") || completed.equals("All"))
            SQL = "SELECT * FROM api_tospy_mini_tasks";
        else
            SQL = "SELECT * FROM api_tospy_mini_tasks WHERE completed = '"+completed+"' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<ApiTopsyMiniTasksItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoApiTopsyMiniTasksItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    } 
    
    public static Vector<ApiTopsyMiniTasksItem> getQueryTopsyMiniTasks(String query, String completed) throws NamingException, SQLException  {
        DBConnection dbConn = new DBConnection();

        String SQL;
        if(completed.equals("") || completed.equals("All"))
            SQL = "SELECT * FROM api_tospy_mini_tasks WHERE query = '"+query+"' ";
        else
            SQL = "SELECT * FROM api_tospy_mini_tasks WHERE query = '"+query+"' AND completed = '"+completed+"' ";
              
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<ApiTopsyMiniTasksItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoApiTopsyMiniTasksItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    } 
    
    public static Vector<ApiTopsySearchesItem> getAllTopsySearchTasks() throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL;
        SQL = "SELECT * FROM api_tospy_searches";
        
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<ApiTopsySearchesItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoApiTopsySearchesItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    } 

    public static void insertTopsySearchTasks(String name, String query, int results_per_page, int max_no_pages) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "INSERT INTO api_tospy_searches" 
            + "(name, query, results_per_page, max_no_pages, most_current_histogram, most_current_date) "
            + "VALUES "
            + "('" + name   + "',"
            + " '" + query + "',"
            + " '" + results_per_page + "',"
            + " '" + max_no_pages + "',"
            + " '2011-01-01',"
            + " '2011-01-01')";
        dbConn.executeUpdateSQL(SQL);
        dbConn.closeConnection();
    } 
    
    public static void removeTopsySearchTasks(String query) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "DELETE FROM api_tospy_searches WHERE query = '"+query+"'";
        dbConn.executeUpdateSQL(SQL);
        dbConn.closeConnection();               
    }
    
    public static Vector<TopsySocialDataItem> getTopsyCompanyData(String query, String date, int limit) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' LIMIT "+limit+" ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TopsySocialDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTopsySocialDataItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<TopsySocialDataItem> getFilteredTopsyCompanyData(String query, String date, String filter, int limit) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        
        String SQL = "";
        if(filter.equals("All"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' LIMIT "+limit+" ";
        else if(filter.equals("English"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND is_english = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Non English"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND is_english = 'n' LIMIT "+limit+" ";
        else if(filter.equals("Relevant"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND relevant = 'r' LIMIT "+limit+" ";
        else if(filter.equals("Irrelevant"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND relevant = 'i' LIMIT "+limit+" ";
        else if(filter.equals("Neutral")) 
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND is_neutral = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Not Neutral"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND is_neutral = 'n' LIMIT "+limit+" ";
        else if(filter.equals("Subjective"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND subjectivity = 's' LIMIT "+limit+" ";
        else if(filter.equals("Objective"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND subjectivity = 'o' LIMIT "+limit+" ";
        else if(filter.equals("Growth"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND growth_recession = 'g' LIMIT "+limit+" ";
        else if(filter.equals("Decline"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND growth_recession = 'r' LIMIT "+limit+" ";
        else if(filter.equals("Positive"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND sentiment = 'p' LIMIT "+limit+" ";
        else if(filter.equals("Negative"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND sentiment = 'n' LIMIT "+limit+" ";
        else if(filter.equals("Intel"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND IntelMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Samsung"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND SamsungMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("ImaginationTech"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND ImaginationTechMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Imgtec"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND ImgtecMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("ARM"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND ARMMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Google"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND GoogleMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Apple"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND AppleMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("HTC"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND HTCMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Sony"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND SonyMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Blackberry"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND BlackberryMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Nokia"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND NokiaMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Motorola"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND MotorolaMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("LG"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND LGMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("Microsoft"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND MicrosoftMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("IBM"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND IBMMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("ARM Holdings"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND ARMHoldingsMention = 'y' LIMIT "+limit+" ";
        else if(filter.equals("RIM"))
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND RIMMention = 'y' LIMIT "+limit+" ";
        else 
            SQL = "SELECT * FROM topsy_social_data WHERE query = '"+query+"' AND date = '"+date+"' AND is_english = 'y' LIMIT "+limit+" ";
        
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TopsySocialDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTopsySocialDataItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    
    
    public static Vector<TopsyCountryDataItem> getTopsyCountryData(String query, String date, int limit) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM topsy_country_data WHERE query = '"+query+"' AND date = '"+date+"' LIMIT '"+limit+"' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TopsyCountryDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTopsyCountryDataItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<TopsyHistogramDataItem> getTopsyHistogramData(String query, String from_date, String to_date) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM topsy_histogram_data WHERE query = '"+query+"' AND date >= '"+from_date+"' AND date <= '"+to_date+"' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TopsyHistogramDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTopsyHistogramDataItems(dbConn.rs);
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<TopsyProcessedDataItem> getTopsyProcessedData(String query, String from_date, String to_date) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM topsy_processed_data WHERE query = '"+query+"' AND date >= '"+from_date+"' AND date <= '"+to_date+"' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TopsyProcessedDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTopsyProcessedDataItems(dbConn.rs);
        dbConn.closeConnection();    
        return resultList;
    }
    
    
    public static TopsyProcessedDataItem getTopsyProcessedDataForOneDay(String query, String date) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM topsy_processed_data WHERE query = '"+query+"' AND date = '"+date+"'";
        dbConn.executeGetResultSetSQL(SQL);
        
        TopsyProcessedDataItem result = null;
        if(dbConn.rs != null)
            result = convertRStoTopsyProcessedDataItem(dbConn.rs);
        dbConn.closeConnection();    
        return result;
    }
    
    
    public static Vector<TopsyProcessedDataItem> getTopsyCumulativerocessedData(String query, String from_date, String to_date, Boolean useActualNumbers, 
             Boolean usePercentages, Boolean incrementFields) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM topsy_processed_data WHERE query = '"+query+"' AND date >= '"+from_date+"' AND date <= '"+to_date+"' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TopsyProcessedDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertSpecialRStoTopsyProcessedDataItems(dbConn.rs, useActualNumbers, 
             usePercentages, incrementFields);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<TopsyProcessedSimpleDataItem> getSpecificTopsyProcessedData(String query, String topsy_field, String from_date, String to_date) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT name, date, "+topsy_field+" as topsy_field FROM topsy_processed_data WHERE query = '"+query+"' AND date >= '"+from_date+"' AND date <= '"+to_date+"' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TopsyProcessedSimpleDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTopsyProcessedSimpleDataItems(dbConn.rs);
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<TopsyProcessedSimpleDataItem> convertRStoTopsyProcessedSimpleDataItems(ResultSet aRs) throws SQLException{
        
        Vector<TopsyProcessedSimpleDataItem> resultList = new Vector<TopsyProcessedSimpleDataItem>();
        while (aRs.next())
        {
           TopsyProcessedSimpleDataItem item = new TopsyProcessedSimpleDataItem(); 
           item.name= aRs.getString("name");
           item.date = aRs.getDate("date");
           item.Topsy_value = aRs.getDouble("topsy_field");
           resultList.add(item);
        }       
       return resultList;
    }
    
    
    
    
    public static Vector<ApiTopsyMiniTasksItem> convertRStoApiTopsyMiniTasksItems(ResultSet aRs) throws SQLException{
        
        Vector<ApiTopsyMiniTasksItem> resultList = new Vector<ApiTopsyMiniTasksItem>();
        while (aRs.next())
        {
           ApiTopsyMiniTasksItem item = new ApiTopsyMiniTasksItem(); 
           item.completed = aRs.getString("completed");
           item.completed_date = aRs.getDate("completed_date");
           item.data_group = aRs.getString("data_group");
           item.from_date = aRs.getDate("from_date");
           item.idtopsy_tasks = aRs.getInt("idtopsy_tasks");
           item.max_no_pages = aRs.getInt("max_no_pages");
           item.name = aRs.getString("name");
           item.priority = aRs.getString("priority");
           item.query = aRs.getString("query");
           item.query_start_date = aRs.getDate("query_start_date");
           item.results_per_page = aRs.getInt("results_per_page");
           item.task_type = aRs.getString("task_type");
           item.to_date = aRs.getDate("to_date");
           item.type = aRs.getString("type");       
           resultList.add(item);
        }       
       return resultList;
    }
    
    public static Vector<ApiTopsySearchesItem> convertRStoApiTopsySearchesItems(ResultSet aRs) throws SQLException{
        Vector<ApiTopsySearchesItem> resultList = new Vector<ApiTopsySearchesItem>();
        while (aRs.next())
        {
            ApiTopsySearchesItem item = new ApiTopsySearchesItem(); 
            item.completed = aRs.getString("completed");
            item.data_group = aRs.getString("data_group");
            item.day_count= aRs.getInt("day_count");
            item.furthest_date_bk = aRs.getDate("furthest_date_bk");
            item.history_collected = aRs.getString("history_collected");
            item.idtopsysearches = aRs.getInt("idtopsysearches");
            item.last_completed = aRs.getDate("last_completed");
            item.max_no_pages = aRs.getInt("max_no_pages");
            item.most_current_date = aRs.getDate("most_current_date");
            item.most_current_histogram = aRs.getDate("most_current_histogram");
            item.name = aRs.getString("name");
            item.overall_end_date = aRs.getDate("overall_end_date");
            item.overall_start_date = aRs.getDate("overall_start_date");
            item.query = aRs.getString("query");
            item.results_per_page = aRs.getInt("results_per_page");
            item.tasked_impl = aRs.getString("tasked_impl");
            item.type = aRs.getString("type");
            
            item.company_count_process_date = aRs.getDate("company_count_process_date");           
            item.country_count_process_date = aRs.getDate("country_count_process_date");
            
            resultList.add(item);
        }       
        return resultList;
    }
    
    public static Vector<TopsyHistogramDataItem> convertRStoTopsyHistogramDataItems(ResultSet aRs) throws SQLException{
        Vector<TopsyHistogramDataItem> resultList = new Vector<TopsyHistogramDataItem>();
        while (aRs.next())
        {
            TopsyHistogramDataItem item = new TopsyHistogramDataItem(); 
            item.name = aRs.getString("name");
            item.query = aRs.getString("query");
            item.count = aRs.getInt("count");
            item.idhistorical_count = aRs.getInt("idhistorical_count");
            item.date = aRs.getDate("date");
            resultList.add(item);
        }       
        return resultList;
    }
    
    public static Vector<TopsyProcessedDataItem> convertRStoTopsyProcessedDataItems(ResultSet aRs) throws SQLException{
        Vector<TopsyProcessedDataItem> resultList = new Vector<TopsyProcessedDataItem>();
        while (aRs.next())
        {
            TopsyProcessedDataItem item = new TopsyProcessedDataItem(); 
            item.idtopsy_day_data = aRs.getInt("idtopsy_day_data");
            item.name = aRs.getString("name");
            item.query = aRs.getString("query");
            item.data_group = aRs.getString("data_group");
            
            item.date = aRs.getDate("date");
            
            item.histogram_total = aRs.getInt("histogram_total");
            item.total_results = aRs.getInt("total_results");
            item.no_tweets_collected = aRs.getInt("no_tweets_collected");
            
            item.most_used_words = aRs.getString("most_used_words");
                       
            item.no_english = aRs.getInt("no_english");
            item.no_not_english = aRs.getInt("no_not_english");
            
            item.no_relevant = aRs.getInt("no_relevant");
            item.no_irrelevant = aRs.getInt("no_irrelevant");
            
            item.no_neutral = aRs.getInt("no_neutral");
            item.no_not_neutral = aRs.getInt("no_not_neutral");
            
            item.no_subjective = aRs.getInt("no_subjective");
            item.no_objective = aRs.getInt("no_objective");
            
            item.no_positive_sentiments = aRs.getInt("no_positive_sentiments");
            item.no_negative_sentiments = aRs.getInt("no_negative_sentiments");
            
            item.no_growth_comments = aRs.getInt("no_growth_comments");
            item.no_recession_comments = aRs.getInt("no_recession_comments");
            
            item.no_politically_stable_comments = aRs.getInt("no_politically_stable_comments");
            item.no_politically_instable_comments = aRs.getInt("no_politically_instable_comments");
            
            item.no_Intel_comments = aRs.getInt("no_Intel_comments");
            item.no_Samsung_comments = aRs.getInt("no_Samsung_comments");
            item.no_Imagination_Technologies_comments = aRs.getInt("no_Imagination_Technologies_comments");
            item.no_Imgtec_comments = aRs.getInt("no_Imgtec_comments");
            item.no_ARM_comments = aRs.getInt("no_ARM_comments");
            item.no_Google_comments = aRs.getInt("no_Google_comments");
            item.no_Apple_comments = aRs.getInt("no_Apple_comments");
            item.no_HTC_comments = aRs.getInt("no_HTC_comments");
            item.no_Sony_comments = aRs.getInt("no_Sony_comments");
            item.no_Blackberry_comments = aRs.getInt("no_Blackberry_comments");
            item.no_Nokia_comments = aRs.getInt("no_Nokia_comments");
            item.no_Motorola_comments = aRs.getInt("no_Motorola_comments");
            item.no_LG_comments = aRs.getInt("no_LG_comments");
            item.no_Microsoft_comments = aRs.getInt("no_Microsoft_comments");
            item.no_IBM_comments = aRs.getInt("no_IBM_comments");
            item.no_ARM_Holdings_comments = aRs.getInt("no_ARM_Holdings_comments");
            item.no_RIM_comments = aRs.getInt("no_RIM_comments");
            resultList.add(item);
        }       
        return resultList;
    }
    
    public static TopsyProcessedDataItem convertRStoTopsyProcessedDataItem(ResultSet aRs) throws SQLException{
        aRs.next();
        
        TopsyProcessedDataItem item = new TopsyProcessedDataItem(); 
        item.idtopsy_day_data = aRs.getInt("idtopsy_day_data");
        item.name = aRs.getString("name");
        item.query = aRs.getString("query");
        item.data_group = aRs.getString("data_group");

        item.date = aRs.getDate("date");

        item.histogram_total = aRs.getInt("histogram_total");
        item.total_results = aRs.getInt("total_results");
        item.no_tweets_collected = aRs.getInt("no_tweets_collected");

        item.most_used_words = aRs.getString("most_used_words");

        item.no_english = aRs.getInt("no_english");
        item.no_not_english = aRs.getInt("no_not_english");

        item.no_relevant = aRs.getInt("no_relevant");
        item.no_irrelevant = aRs.getInt("no_irrelevant");

        item.no_neutral = aRs.getInt("no_neutral");
        item.no_not_neutral = aRs.getInt("no_not_neutral");

        item.no_subjective = aRs.getInt("no_subjective");
        item.no_objective = aRs.getInt("no_objective");

        item.no_positive_sentiments = aRs.getInt("no_positive_sentiments");
        item.no_negative_sentiments = aRs.getInt("no_negative_sentiments");

        item.no_growth_comments = aRs.getInt("no_growth_comments");
        item.no_recession_comments = aRs.getInt("no_recession_comments");

        item.no_politically_stable_comments = aRs.getInt("no_politically_stable_comments");
        item.no_politically_instable_comments = aRs.getInt("no_politically_instable_comments");

        item.no_Intel_comments = aRs.getInt("no_Intel_comments");
        item.no_Samsung_comments = aRs.getInt("no_Samsung_comments");
        item.no_Imagination_Technologies_comments = aRs.getInt("no_Imagination_Technologies_comments");
        item.no_Imgtec_comments = aRs.getInt("no_Imgtec_comments");
        item.no_ARM_comments = aRs.getInt("no_ARM_comments");
        item.no_Google_comments = aRs.getInt("no_Google_comments");
        item.no_Apple_comments = aRs.getInt("no_Apple_comments");
        item.no_HTC_comments = aRs.getInt("no_HTC_comments");
        item.no_Sony_comments = aRs.getInt("no_Sony_comments");
        item.no_Blackberry_comments = aRs.getInt("no_Blackberry_comments");
        item.no_Nokia_comments = aRs.getInt("no_Nokia_comments");
        item.no_Motorola_comments = aRs.getInt("no_Motorola_comments");
        item.no_LG_comments = aRs.getInt("no_LG_comments");
        item.no_Microsoft_comments = aRs.getInt("no_Microsoft_comments");
        item.no_IBM_comments = aRs.getInt("no_IBM_comments");
        item.no_ARM_Holdings_comments = aRs.getInt("no_ARM_Holdings_comments");
        item.no_RIM_comments = aRs.getInt("no_RIM_comments");
        return item;
    }
    
    public static Vector<TopsyProcessedDataItem> convertSpecialRStoTopsyProcessedDataItems(ResultSet aRs, Boolean useActualNumbers, 
             Boolean usePercentages, Boolean incrementFields) throws SQLException{
        Vector<TopsyProcessedDataItem> resultList = new Vector<TopsyProcessedDataItem>();

        while (aRs.next())
        {
            TopsyProcessedDataItem item = new TopsyProcessedDataItem(); 
            item.idtopsy_day_data = aRs.getInt("idtopsy_day_data");
            item.name = aRs.getString("name");
            item.query = aRs.getString("query");
            item.data_group = aRs.getString("data_group");
            
            item.date = aRs.getDate("date");
            
            item.histogram_total = aRs.getInt("histogram_total");
            item.total_results = aRs.getInt("total_results");
            item.no_tweets_collected = aRs.getInt("no_tweets_collected");
            
            item.most_used_words = aRs.getString("most_used_words");
                       
            item.no_english = aRs.getInt("no_english");
            item.no_not_english = aRs.getInt("no_not_english");
            
            item.no_relevant = aRs.getInt("no_relevant");
            item.no_irrelevant = aRs.getInt("no_irrelevant");
            
            item.no_neutral = aRs.getInt("no_neutral");
            item.no_not_neutral = aRs.getInt("no_not_neutral");
            
            item.no_subjective = aRs.getInt("no_subjective");
            item.no_objective = aRs.getInt("no_objective");
            
            item.no_positive_sentiments = aRs.getInt("no_positive_sentiments");
            item.no_negative_sentiments = aRs.getInt("no_negative_sentiments");
            
            item.no_growth_comments = aRs.getInt("no_growth_comments");
            item.no_recession_comments = aRs.getInt("no_recession_comments");
            
            item.no_politically_stable_comments = aRs.getInt("no_politically_stable_comments");
            item.no_politically_instable_comments = aRs.getInt("no_politically_instable_comments");
            
            item.no_Intel_comments = aRs.getInt("no_Intel_comments");
            item.no_Samsung_comments = aRs.getInt("no_Samsung_comments");
            item.no_Imagination_Technologies_comments = aRs.getInt("no_Imagination_Technologies_comments");
            item.no_Imgtec_comments = aRs.getInt("no_Imgtec_comments");
            item.no_ARM_comments = aRs.getInt("no_ARM_comments");
            item.no_Google_comments = aRs.getInt("no_Google_comments");
            item.no_Apple_comments = aRs.getInt("no_Apple_comments");
            item.no_HTC_comments = aRs.getInt("no_HTC_comments");
            item.no_Sony_comments = aRs.getInt("no_Sony_comments");
            item.no_Blackberry_comments = aRs.getInt("no_Blackberry_comments");
            item.no_Nokia_comments = aRs.getInt("no_Nokia_comments");
            item.no_Motorola_comments = aRs.getInt("no_Motorola_comments");
            item.no_LG_comments = aRs.getInt("no_LG_comments");
            item.no_Microsoft_comments = aRs.getInt("no_Microsoft_comments");
            item.no_IBM_comments = aRs.getInt("no_IBM_comments");
            item.no_ARM_Holdings_comments = aRs.getInt("no_ARM_Holdings_comments");
            item.no_RIM_comments = aRs.getInt("no_RIM_comments");
            
            // Cumulate the data for topsy.
            item = cumulateTopsyDataItem(item, useActualNumbers, usePercentages, incrementFields);
            
            
            resultList.add(item);
        }       
        return resultList;
    }
    
    
    
    private static TopsyProcessedDataItem cumulateTopsyDataItem(TopsyProcessedDataItem item, Boolean useHistogtamValues, 
             Boolean showPercentages, Boolean incrementFields)
    {
        int totalTweets = 1;
        int dividingFactor = 1;
         
        // Variables used if the 
        if (showPercentages)
        {
           dividingFactor = item.no_tweets_collected;
           totalTweets = 100;
        }
        else
        {
           if (useHistogtamValues)
           {
               dividingFactor = item.no_tweets_collected;
               totalTweets = item.histogram_total;
           } 
        }   
        
            
        // Normalise the fields to percentages, proportional to histogram                       
        item.no_english = (int)(((double)item.no_english/(double)dividingFactor)*(double)totalTweets);
        item.no_not_english = (int)(((double)item.no_not_english/(double)dividingFactor)*(double)totalTweets);

        item.no_relevant = (int)(((double)item.no_relevant/(double)dividingFactor)*(double)totalTweets);
        item.no_irrelevant = (int)(((double)item.no_irrelevant/(double)dividingFactor)*(double)totalTweets);

        item.no_neutral = (int)(((double)item.no_neutral/(double)dividingFactor)*(double)totalTweets);
        item.no_not_neutral = (int)(((double)item.no_not_neutral/(double)dividingFactor)*(double)totalTweets);

        item.no_subjective = (int)(((double)item.no_subjective/(double)dividingFactor)*(double)totalTweets);
        item.no_objective = (int)(((double)item.no_objective/(double)dividingFactor)*(double)totalTweets);

        item.no_positive_sentiments = (int)(((double)item.no_positive_sentiments/(double)dividingFactor)*(double)totalTweets);
        item.no_negative_sentiments = (int)(((double)item.no_negative_sentiments/(double)dividingFactor)*(double)totalTweets);

        item.no_growth_comments = (int)(((double)item.no_growth_comments/(double)dividingFactor)*(double)totalTweets);
        item.no_recession_comments = (int)(((double)item.no_recession_comments/(double)dividingFactor)*(double)totalTweets);
        
        
        if(incrementFields)
        {
            item.no_not_english = item.no_not_english;
            item.no_english = item.no_english + item.no_not_english;
  
            item.no_irrelevant =  item.no_not_english + item.no_irrelevant;
            item.no_relevant =  item.no_irrelevant + item.no_relevant;
            
            item.no_neutral = item.no_neutral + item.no_irrelevant;
            item.no_not_neutral = item.no_neutral + item.no_not_neutral;

            item.no_objective = item.no_objective + item.no_neutral;
            item.no_subjective = item.no_subjective + item.no_objective;
             
            // Objective negative
            item.no_recession_comments = item.no_recession_comments;
            
            // Objective positive 
            item.no_growth_comments = item.no_growth_comments + item.no_recession_comments;
            
            // Subjective negative
            item.no_negative_sentiments = item.no_negative_sentiments + item.no_growth_comments;
            
            // Subjective positive
            item.no_positive_sentiments = item.no_positive_sentiments + item.no_negative_sentiments; 
        }
        
        return item;
    }
   
    public static Vector<TopsyCountryDataItem> convertRStoTopsyCountryDataItems(ResultSet aRs) throws SQLException{
        Vector<TopsyCountryDataItem> resultList = new Vector<TopsyCountryDataItem>();
        while (aRs.next())
        {
            TopsyCountryDataItem item = new TopsyCountryDataItem(); 
            item.content = aRs.getString("content");
            item.date = aRs.getDate("date");
            item.highlight = aRs.getString("highlight");
            item.hits = aRs.getInt("hits");
            item.idtopsy_table = aRs.getInt("idtopsy_table");
            item.name = aRs.getString("name");
            item.query = aRs.getString("query");
            item.score = aRs.getDouble("score");          
            item.title = aRs.getString("title");
            item.topsy_trackback_url = aRs.getString("topsy_trackback_url");
            item.total_search_results = aRs.getInt("total_search_results");
            item.trackback_permalink = aRs.getString("trackback_permalink");
            item.trackback_total = aRs.getInt("trackback_total");
            item.type = aRs.getString("type");
            item.url = aRs.getString("url");
            
            item.is_english = aRs.getString("is_english");
            item.english_prob = aRs.getDouble("english_prob");
            item.not_english_prob = aRs.getDouble("not_english_prob");
            
            item.relevant = aRs.getString("relevant");
            item.relevant_prob = aRs.getDouble("relevant_prob");
            item.irrelevant_prob = aRs.getDouble("irrelevant_prob");
            
            item.subjectivity = aRs.getString("subjectivity");
            item.subjective_prob = aRs.getDouble("subjective_prob");
            item.objective_prob = aRs.getDouble("objective_prob");
            
            item.sentiment = aRs.getString("sentiment");
            item.sentiment_pos_prob = aRs.getDouble("sentiment_pos_prob");
            item.sentiment_neg_prob = aRs.getDouble("sentiment_neg_prob");

            item.is_neutral = aRs.getString("is_neutral");
            item.neutral_prob = aRs.getDouble("neutral_prob");
            item.not_neutral_prob = aRs.getDouble("not_neutral_prob");
            
            item.growth_recession = aRs.getString("growth_recession");
            item.growth_prob = aRs.getDouble("growth_prob");
            item.recession_prob = aRs.getDouble("recession_prob");
            
            item.political_stability = aRs.getString("political_stability");
            item.politically_stable_prob = aRs.getDouble("politically_stable_prob");
            item.politically_stable_prob = aRs.getDouble("politically_stable_prob");
               
            resultList.add(item);
        }       
        return resultList;
    }
    
    public static Vector<TopsySocialDataItem> convertRStoTopsySocialDataItems(ResultSet aRs) throws SQLException{
        Vector<TopsySocialDataItem> resultList = new Vector<TopsySocialDataItem>();
        while (aRs.next())
        {
            TopsySocialDataItem item = new TopsySocialDataItem(); 
            item.idtopsy_table = aRs.getInt("idtopsy_table");
            item.name = aRs.getString("name");
            item.query = aRs.getString("query");
            item.date = aRs.getDate("date");
            item.content = aRs.getString("content");
            item.title = aRs.getString("title");
            item.highlight = aRs.getString("highlight");
            item.hits = aRs.getInt("hits");
            item.relevant = aRs.getString("relevant");
            item.score = aRs.getDouble("score");
            item.topsy_trackback_url = aRs.getString("topsy_trackback_url");
            item.total_search_results = aRs.getInt("total_search_results");
            item.trackback_permalink = aRs.getString("trackback_permalink");
            item.trackback_total = aRs.getInt("trackback_total");
            item.type = aRs.getString("type");
            item.url = aRs.getString("url");
            
            item.is_english = aRs.getString("is_english");
            item.english_prob = aRs.getDouble("english_prob");
            item.not_english_prob = aRs.getDouble("not_english_prob");
            
            item.relevant = aRs.getString("relevant");
            item.relevant_prob = aRs.getDouble("relevant_prob");
            item.irrelevant_prob = aRs.getDouble("irrelevant_prob");
            
            item.is_neutral = aRs.getString("is_neutral");
            item.neutral_prob = aRs.getDouble("neutral_prob");
            item.not_neutral_prob = aRs.getDouble("not_neutral_prob");
            
            item.subjectivity = aRs.getString("subjectivity");
            item.subjective_prob = aRs.getDouble("subjective_prob");
            item.objective_prob = aRs.getDouble("objective_prob");
            
            item.sentiment = aRs.getString("sentiment");
            item.sentiment_pos_prob = aRs.getDouble("sentiment_pos_prob");
            item.sentiment_neg_prob = aRs.getDouble("sentiment_neg_prob");
            
            item.growth_recession = aRs.getString("growth_recession");
            item.growth_prob = aRs.getDouble("growth_prob");
            item.recession_prob = aRs.getDouble("recession_prob");
            
            resultList.add(item);
        }       
        return resultList;
    }
    
   
}
