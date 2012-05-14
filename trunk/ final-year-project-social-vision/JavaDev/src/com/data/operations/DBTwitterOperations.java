/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.operations;

import com.data.dataitems.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Vector;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class DBTwitterOperations {

    public static Vector<ApiTwitterSearchesItem> getTwitterStreamTerms() throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM api_twitter_searches";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<ApiTwitterSearchesItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoApiTwitterSearchesItems(dbConn.rs);
        
        dbConn.closeConnection(); 
        int x =0;
        return resultList;
    }
    
    public static void insertTwitterStreamTerm(String local_name, String query, int num_of_pages, int rpp) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "INSERT INTO api_twitter_searches" 
            + "(local_name,query, num_of_pages,  rpp) "
            + "VALUES "
            + "('" + local_name   + "',"
            + " '" + query + "',"
            + " '" + num_of_pages + "',"
            + " '" + rpp + "')";
        dbConn.executeUpdateSQL(SQL);
        dbConn.closeConnection();
    }
    
    public static void removeTwitterStreamTerm(String query) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "DELETE FROM api_twitter_searches WHERE name = '"+query+"'";
        dbConn.executeUpdateSQL(SQL);
        dbConn.closeConnection();   
    }
    
    public static Vector<TwitterProcessedDataItem> getTwitterDailyProcessedData(String query, String from_date_string, String to_date_string) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM twitter_processed_data WHERE query = '"+query+"' AND date >= '"+from_date_string+"' AND date <= '"+to_date_string+"' AND isDay = 'y' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TwitterProcessedDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTwitterProcessedDataItems(dbConn.rs);
        
        dbConn.closeConnection();
        return resultList;
    }
    
    public static Vector<TwitterProcessedDataItem> getTwitterHourlyProcessedData(String query, String from_date_string, String to_date_string) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM twitter_processed_data WHERE query = '"+query+"' AND date >= '"+from_date_string+"' AND date <= '"+to_date_string+"' AND isHour = 'y'";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TwitterProcessedDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTwitterProcessedDataItems(dbConn.rs);
        
        dbConn.closeConnection();
        return resultList;
    }
    
    public static Vector<TwitterProcessedDataItem> getTwitterMinutelyProcessedData(String query, String from_date_string, String to_date_string) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM twitter_processed_data WHERE query = '"+query+"' AND date >= '"+from_date_string+"' AND date <= '"+to_date_string+"' AND isisQuarterHour = 'y'";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TwitterProcessedDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTwitterProcessedDataItems(dbConn.rs);
        
        dbConn.closeConnection();
        return resultList;
    }
    
    
    // Return the collected tweets for a given period
    public static Vector<TwitterRealTimeItem> getTweetsFromPeriod(String query, String from_datetime_string, String to_datetime_string, int tweet_limit) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM twitter_real_time WHERE query = '"+query+"' AND rounded_time >= '"+from_datetime_string+"' AND rounded_time <= '"+to_datetime_string+"' LIMIT "+tweet_limit+" ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TwitterRealTimeItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTwitterRealTimeItems(dbConn.rs);
        
        dbConn.closeConnection();
        return resultList;
    }
    
    public static int getTweetCountFromPeriod(String query, String from_datetime_string, String to_datetime_string) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM twitter_real_time WHERE query = '"+query+"' AND rounded_time >= '"+from_datetime_string+"' AND rounded_time <= '"+to_datetime_string+"'";
        dbConn.executeGetResultSetSQL(SQL);

        int count = 0;
        if(dbConn.rs != null){
            while(dbConn.rs.next()){
                count ++;}
        }
        
        dbConn.closeConnection();
        return count;
    }
    
    
    public static Vector<TwitterRealTimeProcessedSimpleDataItem> getSpecificTwitterProcessedData(String query, String twitter_field, String from_date, String to_date, String time_period) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        
        String extra_sql = "";
        if(time_period.equals("day"))
            extra_sql = "isDay = 'y'";
        else if (time_period.equals("hour"))
            extra_sql = "isHour = 'y'";
        else if (time_period.equals("minute"))
            extra_sql = "isQuarterHour = 'y'";
        
        String SQL = "SELECT name, date, "+twitter_field+" as twitter_field FROM twitter_processed_data WHERE query = '"+query+"' AND date >= '"+from_date+"' AND date <= '"+to_date+"' AND "+extra_sql+" ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<TwitterRealTimeProcessedSimpleDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoTwitterRealTimeProcessedSimpleDataItems(dbConn.rs);
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<TwitterRealTimeProcessedSimpleDataItem> convertRStoTwitterRealTimeProcessedSimpleDataItems(ResultSet aRs) throws SQLException{
        
        Vector<TwitterRealTimeProcessedSimpleDataItem> resultList = new Vector<TwitterRealTimeProcessedSimpleDataItem>();
        while (aRs.next())
        {
           TwitterRealTimeProcessedSimpleDataItem item = new TwitterRealTimeProcessedSimpleDataItem(); 
           item.name= aRs.getString("name");
           item.date = aRs.getTimestamp("date");
           item.twitter_value = aRs.getDouble("twitter_field");
           resultList.add(item);
        }       
       return resultList;
    }
    
    public static Vector<ApiTwitterSearchesItem> convertRStoApiTwitterSearchesItems(ResultSet aRs) throws SQLException{
        Vector<ApiTwitterSearchesItem> resultList = new Vector<ApiTwitterSearchesItem>();
        while (aRs.next())
        {
            ApiTwitterSearchesItem item = new ApiTwitterSearchesItem(); 
            item.date_created = aRs.getDate("date_created");
            item.error_message = aRs.getString("error_message");
            item.geo_latitude = aRs.getString("geo_latitude");
            item.geo_longitude = aRs.getString("geo_longitude");
            item.idTwitterSearches = aRs.getInt("idTwitterSearches");
            item.language = aRs.getString("language");
            item.last_completed = aRs.getDate("last_completed");
            item.local_name = aRs.getString("local_name");
            item.num_of_pages = aRs.getInt("num_of_pages");
            item.number_calls = aRs.getInt("number_calls"); 
            item.query = aRs.getString("query"); 
            item.result_type = aRs.getString("result_type"); 
            item.rpp = aRs.getInt("rpp"); 
            item.start_time = aRs.getDate("start_time"); 
            item.stream_day_count = aRs.getInt("stream_day_count"); 
            item.stream_hourly_count = aRs.getInt("stream_hourly_count"); 
            
            item.data_group = aRs.getString("data_group");
            
            item.tweet_count_process_date = aRs.getDate("tweet_count_process_date");
            item.tweet_is_english_pocess_date = aRs.getDate("tweet_is_english_pocess_date");
            item.tweet_is_english_pocess_date = aRs.getDate("tweet_is_english_pocess_date");
            
            resultList.add(item);
        }       
        return resultList;
    }
    
    public static Vector<TwitterProcessedDataItem> convertRStoTwitterProcessedDataItems(ResultSet aRs) throws SQLException{
        Vector<TwitterProcessedDataItem> resultList = new Vector<TwitterProcessedDataItem>();
        while (aRs.next())
        {
            TwitterProcessedDataItem item = new TwitterProcessedDataItem(); 
            item.id_twitter_processed = aRs.getInt("id_twitter_processed");
            item.name = aRs.getString("name");
            item.query = aRs.getString("query");
            item.data_group = aRs.getString("data_group");
            
            item.date = aRs.getDate("date");
            item.no_tweets_collected = aRs.getInt("no_tweets_collected");
            item.tweet_rate = aRs.getDouble("tweet_rate");
            item.is_quarter_hour = aRs.getString("isQuarterHour");
            item.is_hour = aRs.getString("isHour");
            item.is_day = aRs.getString("isDay");
            
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
    
    public static Vector<TwitterRealTimeItem> convertRStoTwitterRealTimeItems(ResultSet aRs) throws SQLException{
        Vector<TwitterRealTimeItem> resultList = new Vector<TwitterRealTimeItem>();
        while (aRs.next())
        {
            TwitterRealTimeItem item = new TwitterRealTimeItem(); 
            item.idtwitter_real_time = aRs.getInt("idtwitter_real_time");
            item.query = aRs.getString("query");
            item.data_group = aRs.getString("data_group");
                    
            item.inserted_date = aRs.getDate("inserted_date");        
            item.rounded_time = aRs.getDate("rounded_time");
            item.created_at = aRs.getDate("created_at");
            
            item.tweet = aRs.getString("tweet");
            item.just_text = aRs.getString("just_text");
            item.url = aRs.getString("url");
            item.screen_name = aRs.getString("screen_name");
            
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
            item.sentiment_neu_prob = aRs.getDouble("sentiment_neu_prob");
            
            item.financial_actual = aRs.getString("financial_actual");
            item.financial_prediction = aRs.getString("financial_prediction");
            item.financial_change = aRs.getDouble("financial_change");
            item.financial_up_prob = aRs.getDouble("financial_up_prob");
            item.financial_down_prob = aRs.getDouble("financial_down_prob");
            
            item.film_sentiment_overall = aRs.getString("film_sentiment_overall");
            item.film_sentiment_pos_prob = aRs.getDouble("film_sentiment_pos_prob");
            item.film_sentiment_neg_prob = aRs.getDouble("film_sentiment_neg_prob");
            
            item.growth_recession = aRs.getString("growth_recession");
            item.growth_prob = aRs.getDouble("growth_prob");
            item.recession_prob = aRs.getDouble("recession_prob");
            
            item.political_stability = aRs.getString("political_stability");
            item.politically_stable_prob = aRs.getDouble("politically_stable_prob");
            item.politically_stable_prob = aRs.getDouble("politically_stable_prob");
            
            item.IntelMention = aRs.getString("IntelMention");
            item.SamsungMention = aRs.getString("SamsungMention");
            item.ImaginationTechMention = aRs.getString("ImaginationTechMention");
            item.ImgtecMention = aRs.getString("ImgtecMention");
            item.ARMMention = aRs.getString("ARMMention");
            item.GoogleMention = aRs.getString("GoogleMention");
            item.AppleMention = aRs.getString("AppleMention");
            item.HTCMention = aRs.getString("HTCMention");
            item.SonyMention = aRs.getString("SonyMention");
            item.BlackberryMention = aRs.getString("BlackberryMention");
            item.NokiaMention = aRs.getString("NokiaMention");
            item.MotorolaMention = aRs.getString("MotorolaMention");
            item.LGMention = aRs.getString("LGMention");
            item.MicrosoftMention = aRs.getString("MicrosoftMention");
            item.IBMMention = aRs.getString("IBMMention");
            item.ARMHoldingsMention = aRs.getString("ARMHoldingsMention");
            item.RIMMention = aRs.getString("RIMMention");
          
            resultList.add(item);
        }       
        return resultList;
    }
  
    
}
