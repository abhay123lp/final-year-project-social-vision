/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.webservices;

import com.data.dataitems.*;
import com.data.operations.DBTopsyOperations;
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
@WebService(serviceName = "DBTopsyWebServices")
public class DBTopsyWebServices {
    
    
    @WebMethod(operationName = "getAllTopsyMiniTasks")
    public Vector<ApiTopsyMiniTasksItem> getAllTopsyMiniTasks(@WebParam(name = "completed") String completed) throws NamingException, SQLException{
        return DBTopsyOperations.getAllTopsyMiniTasks(completed);
    } 
    
    @WebMethod(operationName = "getQueryTopsyMiniTasks")
    public Vector<ApiTopsyMiniTasksItem> getQueryTopsyMiniTasks(@WebParam(name = "query") String query,
            @WebParam(name = "completed") String completed) throws NamingException, SQLException {
        return DBTopsyOperations.getQueryTopsyMiniTasks(query,completed);
    } 
    
    @WebMethod(operationName = "getAllTopsySearchTasks")
    public Vector<ApiTopsySearchesItem> getAllTopsySearchTasks() throws NamingException, SQLException{
        return DBTopsyOperations.getAllTopsySearchTasks();
    } 
    
    @WebMethod(operationName = "insertTopsySearchTasks")
    public void insertTopsySearchTasks(@WebParam(name = "name") String name,
    @WebParam(name = "query") String query, 
    @WebParam(name = "results_per_page") int results_per_page,
    @WebParam(name = "max_no_pages") int max_no_pages) throws NamingException, SQLException{
        
       DBTopsyOperations.insertTopsySearchTasks(name, query, results_per_page, max_no_pages);
    } 
    
    @WebMethod(operationName = "removeTopsySearchTasks")
    public void removeTopsySearchTasks(@WebParam(name = "query") String query) throws NamingException, SQLException{
        DBTopsyOperations.removeTopsySearchTasks(query);
    }
    
    @WebMethod(operationName = "getTopsyCompanyData")
    public Vector<TopsySocialDataItem> getTopsyCompanyData(
        @WebParam(name = "query") String query, 
        @WebParam(name = "date_string") String date_string,
        @WebParam(name = "limit") int limit) 
        throws NamingException, SQLException{
        
        return DBTopsyOperations.getTopsyCompanyData(query, date_string, limit);
    }
    
    @WebMethod(operationName = "getFilteredTopsyCompanyData")
    public Vector<TopsySocialDataItem> getFilteredTopsyCompanyData(
        @WebParam(name = "query") String query, 
        @WebParam(name = "date_string") String date_string,
        @WebParam(name = "filter") String filter,
        @WebParam(name = "limit") int limit) 
        throws NamingException, SQLException{
        
        return DBTopsyOperations.getFilteredTopsyCompanyData(query, date_string,filter, limit);
    }
    
    @WebMethod(operationName = "getTopsyCountryData")
    public Vector<TopsyCountryDataItem> getTopsyCountryData(
        @WebParam(name = "query") String query, 
        @WebParam(name = "date_string") String date_string,
        @WebParam(name = "limit") int limit) throws NamingException, SQLException{
        return DBTopsyOperations.getTopsyCountryData(query, date_string, limit);
    }
    
    @WebMethod(operationName = "getTopsyHistogramData")
    public Vector<TopsyHistogramDataItem> getTopsyHistogramData(
        @WebParam(name = "query") String query, 
        @WebParam(name = "from_date_string") String from_date_string,
        @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{
        
        return DBTopsyOperations.getTopsyHistogramData(query, from_date_string, to_date_string);
    }
    
    @WebMethod(operationName = "getTopsyProcessedData")
    public Vector<TopsyProcessedDataItem> getTopsyProcessedData(
        @WebParam(name = "query") String query, 
        @WebParam(name = "from_date_string") String from_date_string,
        @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{
        
        return DBTopsyOperations.getTopsyProcessedData(query, from_date_string, to_date_string);
    }
    
    
    
    
    
    
    
    @WebMethod(operationName = "getTopsyProcessedDataForOneDay")
    public TopsyProcessedDataItem getTopsyProcessedDataForOneDay(
        @WebParam(name = "query") String query, 
        @WebParam(name = "date_string") String date_string) throws NamingException, SQLException{
        
        return DBTopsyOperations.getTopsyProcessedDataForOneDay(query, date_string);
    }
   
    @WebMethod(operationName = "getTopsyCumulativeProcessedData")
    public Vector<TopsyProcessedDataItem> getTopsyCumulativeProcessedData(
        @WebParam(name = "query") String query, 
        @WebParam(name = "from_date_string") String from_date_string,
        @WebParam(name = "to_date_string") String to_date_string,
        @WebParam(name = "useHistogtamValues") Boolean useHistogtamValues,
        @WebParam(name = "showPercentages") Boolean showPercentages,
        @WebParam(name = "incrementFields") Boolean incrementFields) throws NamingException, SQLException{
        
        return DBTopsyOperations.getTopsyCumulativerocessedData(query, from_date_string, to_date_string, useHistogtamValues, 
             showPercentages, incrementFields);
    }
    
    @WebMethod(operationName = "getSpecificProcessedData")
    public Vector<TopsyProcessedSimpleDataItem> getSpecificProcessedData(
        @WebParam(name = "query") String query,
        @WebParam(name = "topsy_field") String topsy_field,
        @WebParam(name = "from_date_string") String from_date_string,
        @WebParam(name = "to_date_string") String to_date_string) throws NamingException, SQLException{

        return DBTopsyOperations.getSpecificTopsyProcessedData(query, topsy_field, from_date_string, to_date_string);
    }
}
