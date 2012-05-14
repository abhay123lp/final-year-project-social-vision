/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.webservices;

import com.data.dataitems.ApiTwitterSearchesItem;
import com.data.dataitems.TwitterProcessedDataItem;
import com.data.dataitems.TwitterRealTimeItem;
import com.data.dataitems.TwitterRealTimeProcessedSimpleDataItem;
import com.data.operations.DBTwitterOperations;
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
@WebService(serviceName = "DBTwitterWebServices")
public class DBTwitterWebServices {
    
    @WebMethod(operationName = "getTwitterStreamTerms")
    public Vector<ApiTwitterSearchesItem> getTwitterStreamTerms() throws NamingException, SQLException {
        return DBTwitterOperations.getTwitterStreamTerms();
    }
    
    @WebMethod(operationName = "insertTwitterStreamTerm")
    public void insertTwitterStreamTerm(@WebParam(name = "name") String name,
    @WebParam(name = "query") String query, 
    @WebParam(name = "num_of_pages")int num_of_pages, 
    @WebParam(name = "rpp")int rpp) throws NamingException, SQLException{
        DBTwitterOperations.insertTwitterStreamTerm(name, query, num_of_pages, rpp);
    }
    
    @WebMethod(operationName = "removeTwitterStreamTerm")
    public void removeTwitterStreamTerm(@WebParam(name = "query") String query) throws NamingException, SQLException{
        DBTwitterOperations.removeTwitterStreamTerm(query);
    }
    
    @WebMethod(operationName = "getTwitterDailyProcessedData")
    public Vector<TwitterProcessedDataItem> getTwitterDailyProcessedDay(@WebParam(name = "query") String query,
    @WebParam(name = "from_date_string") String from_date_string,
    @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{
        
        return DBTwitterOperations.getTwitterDailyProcessedData(query, from_date_string, to_date_string);
    }
    
    @WebMethod(operationName = "getTwitterHourlyProcessedData")
    public Vector<TwitterProcessedDataItem> getTwitterHourlyProcessedData(@WebParam(name = "query") String query,
    @WebParam(name = "from_date_string") String from_date_string,
    @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{
        
        return DBTwitterOperations.getTwitterHourlyProcessedData(query, from_date_string, to_date_string);
    }
    
    @WebMethod(operationName = "getTwitterMinutelyProcessedData")
    public Vector<TwitterProcessedDataItem> getTwitterMinutelyProcessedDay(@WebParam(name = "query") String query,
    @WebParam(name = "from_date_string") String from_date_string,
    @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{
        
        return DBTwitterOperations.getTwitterMinutelyProcessedData(query, from_date_string, to_date_string);
    }
        
    @WebMethod(operationName = "getSpecificTwitterProcessedData")
    public Vector<TwitterRealTimeProcessedSimpleDataItem> getSpecificTwitterProcessedData(@WebParam(name = "query") String query,
    @WebParam(name = "twitter_field") String twitter_field,
    @WebParam(name = "from_date_string") String from_date_string,
    @WebParam(name = "to_date_string") String to_date_string,
    @WebParam(name = "time_period") String time_period) throws NamingException, SQLException{
        
        return DBTwitterOperations.getSpecificTwitterProcessedData(query, twitter_field,from_date_string,to_date_string, time_period);
    }
    
    
    // Return the collected tweets for a given period
    @WebMethod(operationName = "getTweetsFromPeriod")
    public Vector<TwitterRealTimeItem> getTweetsFromPeriod(@WebParam(name = "query") String query,
    @WebParam(name = "from_datetime_string") String from_datetime_string,
    @WebParam(name = "to_datetime_string") String to_datetime_string,
    @WebParam(name = "tweet_limit") int tweet_limit) throws NamingException, SQLException{
        return DBTwitterOperations.getTweetsFromPeriod(query, from_datetime_string, to_datetime_string, tweet_limit);
    }
    
    @WebMethod(operationName = "getTweetCountFromPeriod")
    public int getTweetCountFromPeriod(@WebParam(name = "query") String query, 
    @WebParam(name = "from_datetime_string")String from_datetime_string,
    @WebParam(name = "to_datetime_string") String to_datetime_string) throws NamingException, SQLException{
        return DBTwitterOperations.getTweetCountFromPeriod(query, from_datetime_string, to_datetime_string);
    }
    
    
}
