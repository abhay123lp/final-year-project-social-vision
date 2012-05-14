/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.operations;

import com.data.dataitems.MachineLearningItem;
import com.data.dataitems.TestDataItem;
import com.data.dataitems.TopsyCountryDataItem;
import com.data.dataitems.TrainingDataItem;
import com.data.structures.SentimentRow;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class DBMachineLearningOperations{
    
    public static Vector<MachineLearningItem> getAllUnclassifiedCompanyTweets() throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL;
        //SQL = "SELECT * FROM machine_learning_training_company_data WHERE is_classified = 'n' AND LIMIT 1000";
        SQL = "SELECT * FROM machine_learning_training_company_data WHERE is_classified = 'n'"
        + "LIMIT 1000";
        
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<MachineLearningItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoMachineLearningItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<MachineLearningItem> getAllClassifiedCompanyTweets() throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL;
        SQL = "SELECT * FROM machine_learning_training_company_data WHERE is_classified = 'y'";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<MachineLearningItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoMachineLearningItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static void updateUnclassifiedCompanyTweet(int tweet_id, 
            String content,
            String sentiment_relevance,
            String is_english,
            String relevant,
            String subjectivity,
            String is_neutral,
            String sentiment,
            String growth_recession,
            String political_stability  
            ) throws NamingException, SQLException {
        
        DBConnection dbConn = new DBConnection();
        String SQL;
        
        content = content.replaceAll("'", "''");
        
        SQL = "UPDATE machine_learning_training_company_data SET"
                + " is_classified = 'y', "
                + " content = '"+content+"', "
                + " sentiment_relevance = '"+sentiment_relevance+"', "
                + " is_english = '"+is_english+"', "
                + " relevant = '"+relevant+"', "
                + " subjectivity = '"+subjectivity+"', "
                + " is_neutral = '"+is_neutral+"', "
                + " sentiment = '"+sentiment+"', "
                + " growth_recession = '"+growth_recession+"', "
                + " political_stability  = '"+political_stability +"' "
                + "WHERE tweet_id = '"+tweet_id+"' ";
        dbConn.executeUpdateSQL(SQL);
        
        dbConn.closeConnection();    
    }
 
    public static SentimentRow getTotalsForMachineLearningCompanyData() throws NamingException, SQLException
    {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM machine_learning_training_company_data WHERE is_classified = 'y' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<MachineLearningItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoMachineLearningItems(dbConn.rs);
        
        int numOfNotEnglish = 0;
        int numOfEnglish = 0;

        int numOfNotRelevant = 0;
        int numOfRelevant = 0;
               
        int numOfRecession = 0;
        int numOfGrowth = 0;
        
        int numOfNeutral = 0;
        
        int numOfPositive = 0;
        int numOfNegative = 0;
        
        int numOfPoliticallyStable = 0;
        int numOfPoliticallyInStable = 0;
        
        int totalTweetsClassified = 0;
        
        SentimentRow sentimentRow = new SentimentRow();
        for(int i =0;i<resultList.size();i++)
        {
            MachineLearningItem temp = resultList.get(i);
            
            totalTweetsClassified ++;
            
            // Count the different labels
            if(temp.is_english.equals("n"))
                numOfNotEnglish++;
            else if(temp.is_english.equals("y"))
                numOfEnglish++;
            
            if(temp.relevant.equals("i"))
                numOfNotRelevant++;
            else if(temp.relevant.equals("r"))
                numOfRelevant++;
            
            if(temp.growth_recession.equals("g"))
                numOfGrowth++;
            else if(temp.growth_recession.equals("r"))
                numOfRecession++;
            
            if(temp.is_neutral.equals("y"))
                numOfNeutral++;
            
            if(temp.sentiment.equals("p"))
                numOfPositive++;
            else if(temp.sentiment.equals("n"))
                numOfNegative++;
            
            if(temp.political_stability.equals("s"))
                numOfPoliticallyStable++;
            else if(temp.political_stability.equals("i"))
                numOfPoliticallyInStable++;
        }
                
        sentimentRow.numOfEnglish = numOfEnglish;
        sentimentRow.numOfNotEnglish = numOfNotEnglish;
        
        sentimentRow.numOfRelevant = numOfRelevant;
        sentimentRow.numOfNotRelevant = numOfNotRelevant;
        
        sentimentRow.numOfGrowth = numOfGrowth;
        sentimentRow.numOfRecession = numOfRecession;
        
        sentimentRow.numOfNeutral = numOfNeutral;
        
        sentimentRow.numOfPositive = numOfPositive;
        sentimentRow.numOfNegative = numOfNegative;
        
        sentimentRow.numOfPoliticallyStable = numOfPoliticallyStable;
        sentimentRow.numOfPoliticallyInStable = numOfPoliticallyInStable;
        
        sentimentRow.totalTweetsClassified = totalTweetsClassified;
        
        dbConn.closeConnection();
        return sentimentRow;
    }
    
    
    
    public static Vector<MachineLearningItem> getAllUnclassifiedCountryTweets() throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL;
        SQL = "SELECT * FROM machine_learning_training_country_data WHERE is_classified = 'n' LIMIT 1000";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<MachineLearningItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoMachineLearningItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static Vector<MachineLearningItem> getAllClassifiedCountryTweets() throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL;
        SQL = "SELECT * FROM machine_learning_training_country_data WHERE is_classified = 'y'";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<MachineLearningItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoMachineLearningItems(dbConn.rs);
        
        dbConn.closeConnection();    
        return resultList;
    }
    
    public static void updateUnclassifiedCountryTweet(int tweet_id, 
            String content,
            String sentiment_relevance,
            String is_english,
            String relevant,
            String subjectivity,
            String is_neutral,
            String sentiment,
            String growth_recession,
            String political_stability  
            ) throws NamingException, SQLException {
        
        DBConnection dbConn = new DBConnection();
        String SQL;
        content = content.replaceAll("'", "''");
        
        SQL = "UPDATE machine_learning_training_country_data SET"
                + " is_classified = 'y', "
                + " content = '"+content+"', "
                + " sentiment_relevance = '"+sentiment_relevance+"', "
                + " is_english = '"+is_english+"', "
                + " relevant = '"+relevant+"', "
                + " subjectivity = '"+subjectivity+"', "
                + " is_neutral = '"+is_neutral+"', "
                + " sentiment = '"+sentiment+"', "
                + " growth_recession = '"+growth_recession+"', "
                + " political_stability  = '"+political_stability +"' "
                + "WHERE tweet_id = '"+tweet_id+"' ";
        dbConn.executeUpdateSQL(SQL);
        
        dbConn.closeConnection();    
    }
 
    public static SentimentRow getTotalsForMachineLearningCountryData() throws NamingException, SQLException
    {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM machine_learning_training_country_data WHERE is_classified = 'y' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<MachineLearningItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoMachineLearningItems(dbConn.rs);
        
        int numOfNotEnglish = 0;
        int numOfEnglish = 0;

        int numOfNotRelevant = 0;
        int numOfRelevant = 0;
               
        int numOfRecession = 0;
        int numOfGrowth = 0;
        
        int numOfNeutral = 0;
        
        int numOfPositive = 0;
        int numOfNegative = 0;
        
        int numOfPoliticallyStable = 0;
        int numOfPoliticallyInStable = 0;
        
        int totalTweetsClassified = 0;
        
        SentimentRow sentimentRow = new SentimentRow();
        for(int i =0;i<resultList.size();i++)
        {
            MachineLearningItem temp = resultList.get(i);
            
            totalTweetsClassified ++;
            
            // Count the different labels
            if(temp.is_english.equals("n"))
                numOfNotEnglish++;
            else if(temp.is_english.equals("y"))
                numOfEnglish++;
            
            if(temp.relevant.equals("i"))
                numOfNotRelevant++;
            else if(temp.relevant.equals("r"))
                numOfRelevant++;
            
            if(temp.growth_recession.equals("g"))
                numOfGrowth++;
            else if(temp.growth_recession.equals("r"))
                numOfRecession++;
            
            if(temp.is_neutral.equals("y"))
                numOfNeutral++;
            
            if(temp.sentiment.equals("p"))
                numOfPositive++;
            else if(temp.sentiment.equals("n"))
                numOfNegative++;
            
            if(temp.political_stability.equals("s"))
                numOfPoliticallyStable++;
            else if(temp.political_stability.equals("i"))
                numOfPoliticallyInStable++;
        }
                
        sentimentRow.numOfEnglish = numOfEnglish;
        sentimentRow.numOfNotEnglish = numOfNotEnglish;
        
        sentimentRow.numOfRelevant = numOfRelevant;
        sentimentRow.numOfNotRelevant = numOfNotRelevant;
        
        sentimentRow.numOfGrowth = numOfGrowth;
        sentimentRow.numOfRecession = numOfRecession;
        
        sentimentRow.numOfNeutral = numOfNeutral;
        
        sentimentRow.numOfPositive = numOfPositive;
        sentimentRow.numOfNegative = numOfNegative;
        
        sentimentRow.numOfPoliticallyStable = numOfPoliticallyStable;
        sentimentRow.numOfPoliticallyInStable = numOfPoliticallyInStable;
        
        sentimentRow.totalTweetsClassified = totalTweetsClassified;
        
        
        dbConn.closeConnection();
        return sentimentRow;
        
    }
    
    
    
    public static Vector<MachineLearningItem> convertRStoMachineLearningItems(ResultSet aRs) throws SQLException{
        Vector<MachineLearningItem> resultList = new Vector<MachineLearningItem>();
        while (aRs.next())
        {
            MachineLearningItem item = new MachineLearningItem(); 
            item.tweet_id = aRs.getInt("tweet_id");
            item.name = aRs.getString("name");
            item.tweet_source = aRs.getString("tweet_source");
            item.data_group = aRs.getString("data_group");
            item.is_classified = aRs.getString("is_classified");
            item.content = aRs.getString("content");
            item.sentiment_relevance = aRs.getString("sentiment_relevance");
            item.is_english = aRs.getString("is_english");
            item.relevant = aRs.getString("relevant");
            item.subjectivity = aRs.getString("subjectivity");
            item.is_neutral = aRs.getString("is_neutral");
            item.sentiment = aRs.getString("sentiment");
            item.growth_recession = aRs.getString("growth_recession");
            item.political_stability = aRs.getString("political_stability");
            resultList.add(item);
        }       
        return resultList;
    }

}
