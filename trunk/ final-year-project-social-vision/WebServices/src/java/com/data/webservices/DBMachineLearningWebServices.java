/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.webservices;

import com.data.dataitems.ApiFinanceSearchesItem;
import com.data.dataitems.FinancialDataItem;
import com.data.dataitems.FinancialHourlyDataItem;
import com.data.dataitems.MachineLearningItem;
import com.data.operations.DBFinancialOperations;
import com.data.operations.DBMachineLearningOperations;
import com.data.structures.SentimentRow;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
@WebService(serviceName = "DBMachineLearningWebServices")
public class DBMachineLearningWebServices {
    
    
    /**
     * Machine Learning Web Service - returns the unclassified Tweets to be classified 
     */
    @WebMethod(operationName = "getAllUnclassifiedCompanyTweets")
    public Vector<MachineLearningItem> getAllUnclassifiedCompanyTweets() throws NamingException, SQLException {  
            
        return DBMachineLearningOperations.getAllUnclassifiedCompanyTweets();
    } 
    
    /**
     * Machine Learning Web Service - returns the all Tweets 
     */
    @WebMethod(operationName = "getAllClassifiedCompanyTweets")
    public Vector<MachineLearningItem> getAllClassifiedCompanyTweets() throws NamingException, SQLException {     
        return DBMachineLearningOperations.getAllClassifiedCompanyTweets();
    } 
    
    /**
     * Machine Learning Web Service - returns the all Tweets 
     */
    @WebMethod(operationName = "updateUnclassifiedCompanyTweet")
    public String updateUnclassifiedCompanyTweet(
            @WebParam(name = "tweet_id") int tweet_id,
            @WebParam(name = "content") String content,
            @WebParam(name = "sentiment_relevance") String sentiment_relevance,
            @WebParam(name = "is_english") String is_english,
            @WebParam(name = "relevant") String relevant,
            @WebParam(name = "subjectivity") String subjectivity,
            @WebParam(name = "is_neutral") String is_neutral,
            @WebParam(name = "sentiment") String sentiment,
            @WebParam(name = "growth_recession") String growth_recession,
            @WebParam(name = "political_stability") String political_stability
            ) throws NamingException, SQLException {     
        
        DBMachineLearningOperations.updateUnclassifiedCompanyTweet(tweet_id, content, sentiment_relevance, is_english, relevant, subjectivity, is_neutral, sentiment, growth_recession, political_stability);
        
        return "Updated Successfully";
    } 
    
    
    /**
     * Machine Learning Web Service - returns the count of all the different labels 
     */
    @WebMethod(operationName = "getTotalsForMachineLearningCompanyData")
    public SentimentRow getTotalsForMachineLearningCompanyData() throws NamingException, SQLException {     
        return DBMachineLearningOperations.getTotalsForMachineLearningCompanyData();
    } 
    
    
     /**
     * Machine Learning Web Service - returns the unclassified Tweets to be classified 
     */
    @WebMethod(operationName = "getAllUnclassifiedCountryTweets")
    public Vector<MachineLearningItem> getAllUnclassifiedCountryTweets() throws NamingException, SQLException {  
            
        return DBMachineLearningOperations.getAllUnclassifiedCountryTweets();
    } 
    
    /**
     * Machine Learning Web Service - returns the all Tweets 
     */
    @WebMethod(operationName = "getAllClassifiedCountryTweets")
    public Vector<MachineLearningItem> getAllClassifiedCountryTweets() throws NamingException, SQLException {     
        return DBMachineLearningOperations.getAllClassifiedCountryTweets();
    } 
    
    /**
     * Machine Learning Web Service - returns the all Tweets 
     */
    @WebMethod(operationName = "updateUnclassifiedCountryTweet")
    public String updateUnclassifiedCountryTweet(
            @WebParam(name = "tweet_id") int tweet_id,
            @WebParam(name = "content") String content,
            @WebParam(name = "sentiment_relevance") String sentiment_relevance,
            @WebParam(name = "is_english") String is_english,
            @WebParam(name = "relevant") String relevant,
            @WebParam(name = "subjectivity") String subjectivity,
            @WebParam(name = "is_neutral") String is_neutral,
            @WebParam(name = "sentiment") String sentiment,
            @WebParam(name = "growth_recession") String growth_recession,
            @WebParam(name = "political_stability") String political_stability
            ) throws NamingException, SQLException {     
        
        DBMachineLearningOperations.updateUnclassifiedCountryTweet(tweet_id, content, sentiment_relevance, is_english, relevant, subjectivity, is_neutral, sentiment, growth_recession, political_stability);
        
        return "Updated Successfully";
    } 
    
    
    /**
     * Machine Learning Web Service - returns the count of all the different labels 
     */
    @WebMethod(operationName = "getTotalsForMachineLearningCountryData")
    public SentimentRow getTotalsForMachineLearningCountryData() throws NamingException, SQLException {     
        return DBMachineLearningOperations.getTotalsForMachineLearningCountryData();
    } 
}
