/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.webservices;

import com.data.dataitems.ApiFinanceSearchesItem;
import com.data.dataitems.FinancialDataItem;
import com.data.dataitems.FinancialHourlyDataItem;
import com.data.operations.DBFinancialOperations;
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
@WebService(serviceName = "DBFinancialWebServices")
public class DBFinancialWebServices {
    
    /**
     * Financial API Web Service - returns the financial search term for the asset_name
     */
    @WebMethod(operationName = "getFinancialSearchTerm")
    public ApiFinanceSearchesItem getFinancialSearchTerm(@WebParam(name = "asset_name") String asset_name) throws NamingException, SQLException {  
            
        return DBFinancialOperations.getFinancialSearchTerm(asset_name);
    } 
    
    /**
     * Financial API Web Service - returns all the financial search terms being searched for Yahoo finance
     */
    @WebMethod(operationName = "getAllFinancialSearchTerms")
    public Vector<ApiFinanceSearchesItem> getAllFinancialSearchTerms() throws NamingException, SQLException{
        
        return DBFinancialOperations.getAllFinancialSearchTerms();
    } 
    
    /**
     * Financial API Web Service - inserts a financial search term to search for using Yahoo finance
     */
    @WebMethod(operationName = "insertFinancialSearchTerm")
    public void insertFinancialSearchTerm(@WebParam(name = "name") String name, 
        @WebParam(name = "symbol") String symbol,
        @WebParam(name = "market") String market,
        @WebParam(name = "most_current_date") String most_current_date) throws NamingException, SQLException {
        
        // Webservice code
        DBFinancialOperations.insertFinancialSearchTerm(name, symbol, market, most_current_date);
      } 

    /**
     * Financial API Web Service - removes the selected financial search term
     */
    @WebMethod(operationName = "removeFinancialSearchTerm")
    public void removeFinancialSearchTerm(@WebParam(name = "name") String name) throws NamingException, SQLException{
        DBFinancialOperations.removeFinancialSearchTerm(name);
    } 
    
    /**
     * Financial Data Web Service - returns the historical financial data 
     * (open,close,high,low) between two dates
     */
    @WebMethod(operationName = "getHistoricalFinancialData")
    public Vector<FinancialDataItem> getHistoricalFinancialData(@WebParam(name = "name") String name, 
    @WebParam(name = "from_date_string") String from_date_string,
    @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{
        return DBFinancialOperations.getHistoricalFinancialData(name, from_date_string, to_date_string);
    } 
     
    /**
     * Financial Data Web Service - returns the hourly financial data between two time periods
     */
    @WebMethod(operationName = "getHourlyFinancialData")
    public Vector<FinancialHourlyDataItem> getHourlyFinancialData(@WebParam(name = "name") String name, 
    @WebParam(name = "from_date_string") String from_date_string,
    @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{
        
        return DBFinancialOperations.getHourlyFinancialData(name, from_date_string, to_date_string);
    } 
    
    
    /**
     * Financial Data Web Service - returns the 15 minutely financial data between two time periods
     */
    @WebMethod(operationName = "getMinutelyFinancialData")
    public Vector<FinancialHourlyDataItem> getMinutelyFinancialData(@WebParam(name = "name") String name, 
    @WebParam(name = "from_date_string") String from_date_string,
    @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{
        
        return DBFinancialOperations.getMinutelyFinancialData(name, from_date_string, to_date_string);
    } 
    
    
    /**
     * Financial Data Web Service - returns the hourly or minutely financial data between two time periods
     */
    @WebMethod(operationName = "getRealTimeFinancialData")
    public Vector<FinancialHourlyDataItem> getRealTimeFinancialData(@WebParam(name = "name") String name, 
    @WebParam(name = "from_date_string") String from_date_string,
    @WebParam(name = "to_date_string") String to_date_string,
    @WebParam(name = "interval") String interval) throws NamingException, SQLException{
        
        Vector<FinancialHourlyDataItem> temp_vec = new Vector<FinancialHourlyDataItem>();
        
        if(interval.equals("hour"))
            temp_vec = DBFinancialOperations.getHourlyFinancialData(name, from_date_string, to_date_string);
        else if (interval.equals("minute"))
            temp_vec = DBFinancialOperations.getMinutelyFinancialData(name, from_date_string, to_date_string);
        
        return temp_vec;
    } 
}
