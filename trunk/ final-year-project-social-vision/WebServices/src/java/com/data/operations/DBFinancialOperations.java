/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.operations;

import com.data.dataitems.ApiFinanceSearchesItem;
import com.data.dataitems.FinancialDataItem;
import com.data.dataitems.FinancialHourlyDataItem;
import com.data.dataitems.SimpleFinancialItem;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Phil
 */
public class DBFinancialOperations {

    /**
     * Financial API Web Service - returns the financial search term for the asset_name
     */
    public static ApiFinanceSearchesItem getFinancialSearchTerm(String asset_name) throws NamingException, SQLException {
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM api_finance_searches WHERE name = '"+asset_name+"' ";
        dbConn.executeGetResultSetSQL(SQL);
        
        ApiFinanceSearchesItem item = new ApiFinanceSearchesItem();
        if(dbConn.rs != null)
            item = convertRStoApiFinanceSearchesItem(dbConn.rs);
        
        dbConn.closeConnection();
        return item;
    } 
    
    /**
     * Financial API Web Service - returns all the financial search terms being searched for Yahoo finance
     */
    public static Vector<ApiFinanceSearchesItem> getAllFinancialSearchTerms() throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM api_finance_searches";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<ApiFinanceSearchesItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoApiFinanceSearchesItems(dbConn.rs);
        
        dbConn.closeConnection();
        return resultList;
    } 
    
    /**
     * Financial API Web Service - inserts a financial search term to search for using Yahoo finance
     */
    public static void insertFinancialSearchTerm(String name, String symbol, String market, String most_current_date) throws NamingException, SQLException 
    {
        DBConnection dbConn = new DBConnection();
        String SQL = "INSERT INTO api_finance_searches" 
            + "(name,symbol, market, most_current_date) "
            + "VALUES "
            + "('" + name   + "',"
            + " '" + symbol + "',"
            + " '" + market + "',"
            + " '" + most_current_date + "')";
        dbConn.executeUpdateSQL(SQL);
        dbConn.closeConnection();
    } 
    
    /**
     * Financial API Web Service - removes the selected financial search term
     */
    public static void removeFinancialSearchTerm(String name) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "DELETE FROM api_finance_searches WHERE name = '"+name+"'";
        dbConn.executeUpdateSQL(SQL);
        dbConn.closeConnection();               
    } 
    
    /**
     * Financial Data Web Service - returns the historical financial data 
     * (open,close,high,low) between two dates
     */
    public static Vector<FinancialDataItem> getHistoricalFinancialData(String name, String from_date, String to_date) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM financial_data WHERE name = '"+name+"' AND date >= '"+from_date+"' AND date <= '"+to_date+"' ORDER BY date ASC";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<FinancialDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoFinancialDataItems(dbConn.rs);
        
        dbConn.closeConnection();
        return resultList;
    } 
    
    
    /**
     * Financial Data Web Service - returns the hourly financial data between two time periods
     */
    public static Vector<FinancialHourlyDataItem> getHourlyFinancialData(String name, String from_date, String to_date) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM financial_hourly_data WHERE name = '"+name+"' AND date_time >= '"+from_date+"' AND date_time <= '"+to_date+"' AND hourly_previous_time_date != '' ORDER BY date ASC";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<FinancialHourlyDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoFinancialHourlyDataItems(dbConn.rs);
        
        dbConn.closeConnection();
        
        return resultList;   
    } 
    
    /**
     * Financial Data Web Service - returns the hourly financial data between two time periods
     */
    public static Vector<FinancialHourlyDataItem> getMinutelyFinancialData(String name, String from_date, String to_date) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT * FROM financial_hourly_data WHERE name = '"+name+"' AND date_time >= '"+from_date+"' AND date_time <= '"+to_date+"' ORDER BY date ASC";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<FinancialHourlyDataItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoFinancialHourlyDataItems(dbConn.rs);
        
        dbConn.closeConnection();
        
        return resultList;   
    } 
    
    
    /**
     * Financial Data Web Service - returns the hourly financial data between two time periods
     */
    public static Vector<SimpleFinancialItem> getSpecificFinancialData(String name, String field_name, String from_date, String to_date) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT name, date, "+field_name+" as field_name FROM financial_data WHERE name = '"+name+"' AND date >= '"+from_date+"' AND date <= '"+to_date+"' ORDER BY date ASC";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<SimpleFinancialItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoSimpleFinancialItems(dbConn.rs);
        
        dbConn.closeConnection();
        
        return resultList;   
    } 
    
    /**
     * Financial Data Web Service - returns the hourly financial data between two time periods
     */
    public static Vector<SimpleFinancialItem> getSpecificHourlyFinancialData(String name, String field_name, String from_date, String to_date) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT name, date_time, "+field_name+" as field_name FROM financial_hourly_data WHERE name = '"+name+"' AND date_time >= '"+from_date+"' AND date_time <= '"+to_date+"' AND hourly_previous_time_date != '' ORDER BY date_time ASC";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<SimpleFinancialItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoSimpleHourlyFinancialItems(dbConn.rs);
        
        dbConn.closeConnection();
        
        return resultList;   
    } 
    
    /**
     * Financial Data Web Service - returns the hourly financial data between two time periods
     */
    public static Vector<SimpleFinancialItem> getSpecificMinutelyFinancialData(String name, String field_name, String from_date, String to_date) throws NamingException, SQLException{
        DBConnection dbConn = new DBConnection();
        String SQL = "SELECT name, date_time, "+field_name+" as field_name FROM financial_hourly_data WHERE name = '"+name+"' AND date_time >= '"+from_date+"' AND date_time <= '"+to_date+"' ORDER BY date_time ASC";
        dbConn.executeGetResultSetSQL(SQL);
        
        Vector<SimpleFinancialItem> resultList = null;
        if(dbConn.rs != null)
            resultList = convertRStoSimpleHourlyFinancialItems(dbConn.rs);
        
        dbConn.closeConnection();
        
        return resultList;   
    } 
   
    public static Vector<SimpleFinancialItem> convertRStoSimpleFinancialItems(ResultSet aRs) throws SQLException
    {
        Vector<SimpleFinancialItem> resultList = new Vector<SimpleFinancialItem>();    
        while (aRs.next())
        {
            SimpleFinancialItem tempItem = new SimpleFinancialItem();
            tempItem.name = aRs.getString("name");
            tempItem.date = aRs.getDate("date");
            tempItem.field_value = aRs.getDouble("field_name");
            resultList.add(tempItem);
        }         
        return resultList;
    }
    
    public static Vector<SimpleFinancialItem> convertRStoSimpleHourlyFinancialItems(ResultSet aRs) throws SQLException
    {
        Vector<SimpleFinancialItem> resultList = new Vector<SimpleFinancialItem>();    
        while (aRs.next())
        {
            SimpleFinancialItem tempItem = new SimpleFinancialItem();
            tempItem.name = aRs.getString("name");
            tempItem.date = aRs.getTimestamp("date_time");
            tempItem.field_value = aRs.getDouble("field_name");
            resultList.add(tempItem);
        }         
        return resultList;
    }
    
    public static Vector<ApiFinanceSearchesItem> convertRStoApiFinanceSearchesItems(ResultSet aRs) throws SQLException
    {
        Vector<ApiFinanceSearchesItem> resultList = new Vector<ApiFinanceSearchesItem>();    
        while (aRs.next())
        {
            ApiFinanceSearchesItem tempItem = new ApiFinanceSearchesItem();
            tempItem.idyahoosearches = aRs.getInt("idyahoosearches");
            tempItem.name = aRs.getString("name");
            tempItem.symbol = aRs.getString("symbol");
            tempItem.market = aRs.getString("market");                              
            tempItem.call_count = aRs.getInt("call_count");
            tempItem.most_current_date = aRs.getDate("most_current_date"); 
            resultList.add(tempItem);
        }         
        return resultList;
    }
    
    public static ApiFinanceSearchesItem convertRStoApiFinanceSearchesItem(ResultSet aRs) throws SQLException
    {
        ApiFinanceSearchesItem item = new ApiFinanceSearchesItem();
        aRs.next();
        item.idyahoosearches = aRs.getInt("idyahoosearches");
        item.name = aRs.getString("name");
        item.symbol = aRs.getString("symbol");
        item.market = aRs.getString("market");                              
        item.call_count = aRs.getInt("call_count");
        item.most_current_date = aRs.getDate("most_current_date");    
        return item;
    }
    
    public static Vector<FinancialHourlyDataItem> convertRStoFinancialHourlyDataItems(ResultSet aRs) throws SQLException
    {
        Vector<FinancialHourlyDataItem> resultList = new Vector<FinancialHourlyDataItem>();    
        while (aRs.next())
        {
            FinancialHourlyDataItem item = new FinancialHourlyDataItem();
            item.idcurrent_table =  aRs.getInt("idcurrent_table");
            item.name =  aRs.getString("name");
            item.date_time =  aRs.getDate("date_time");
            item.symbol =  aRs.getString("symbol");
            item.market =  aRs.getString("market");
            item.price =  aRs.getDouble("price");
            item.volume =  aRs.getFloat("volume");
            item.avg_daily_volume =  aRs.getDouble("avg_daily_volume");
            item.market_cap =  aRs.getString("market_cap");
            item.book_value =  aRs.getDouble("book_value");
            item.ebitda =  aRs.getString("ebitda");
            item.dividend_per_share =  aRs.getDouble("dividend_per_share");
            item.dividend_yield =  aRs.getDouble("dividend_yield");
            item.earnings_per_share =  aRs.getDouble("earnings_per_share");
            item.year_week_high =  aRs.getDouble("52_week_high");
            item.year_week_low =  aRs.getDouble("52_week_low");
            item.fifty_day_moving_avg =  aRs.getDouble("50day_moving_avg");
            item.price_earnings_ratio =  aRs.getDouble("price_earnings_ratio");
            item.price_earnings_growth_ratio =  aRs.getDouble("price_earnings_growth_ratio");
            item.price_sales_ratio =  aRs.getDouble("price_sales_ratio");
            item.price_book_ratio =  aRs.getDouble("price_book_ratio");
            item.short_ratio =  aRs.getDouble("short_ratio");
            
            item.previous_time_date = aRs.getDate("previous_time_date");
            item.previous_price = aRs.getDouble("previous_price");
            item.price_change_value = aRs.getDouble("price_change_value");
            item.price_change_percentage = aRs.getDouble("price_change_percentage");
            item.price_change_text = aRs.getString("price_change_text");
            
            item.hourly_previous_time_date = aRs.getDate("hourly_previous_time_date");
            item.hourly_previous_price = aRs.getDouble("hourly_previous_price");
            item.hourly_price_change_value = aRs.getDouble("hourly_price_change_value");
            item.hourly_price_change_percentage = aRs.getDouble("hourly_price_change_percentage");
            item.hourly_price_change_text = aRs.getString("hourly_price_change_text");
            
            resultList.add(item);
        }    
        return resultList;
    }
    
    
    public static Vector<FinancialDataItem> convertRStoFinancialDataItems(ResultSet aRs) throws SQLException
    {
        Vector<FinancialDataItem> resultList = new Vector<FinancialDataItem>();    
        while (aRs.next())
        {
           FinancialDataItem item = new FinancialDataItem(); 
           item.name = aRs.getString("name");
           item.symbol= aRs.getString("symbol");
           item.market= aRs.getString("market");        
           item.date= aRs.getDate("date");        
           item.open= aRs.getDouble("open");      
           item.close= aRs.getDouble("close");        
           item.high= aRs.getDouble("high");        
           item.low= aRs.getDouble("low");
           item.volume= aRs.getDouble("volume");
           item.adj_close= aRs.getDouble("adj_close"); 
           item.price_change_percentage = aRs.getDouble("price_change_percentage");
           item.price_change_value = aRs.getDouble("price_change_value");
           item.price_change_text = aRs.getString("price_change_text");
           resultList.add(item);
        }       
        return resultList;
    }
}
