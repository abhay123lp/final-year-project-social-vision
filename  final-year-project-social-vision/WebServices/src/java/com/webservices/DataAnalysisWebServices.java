/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservices;

import com.data.operations.DBTwitterOperations;
import com.data.structures.CorrelationXYData;
import com.finance.statistics.FinancialDataAnalysis;
import com.finance.statistics.RealTimeTwitterDataAnalysis;
import com.finance.statistics.TopsyDataAnalysis;
import java.io.IOException;
import java.sql.SQLException;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
@WebService(serviceName = "DataAnalysisWebServices")
public class DataAnalysisWebServices {
    
    /**
     * Data Analysis - Get Correlated Topsy and Financial Data
     */
    @WebMethod(operationName = "calculateCorrelationTopsyVsFinance")
    public CorrelationXYData calculateCorrelationTopsyVsFinance(
            @WebParam(name = "query") String query,
            @WebParam(name = "topsy_field") String topsy_field,
            @WebParam(name = "finacial_field") String finacial_field,
            @WebParam(name = "from_date_string") String from_date_string,
            @WebParam(name = "to_date_string") String to_date_string,
            @WebParam(name = "day_delta") int day_delta,
            @WebParam(name = "moving_average_type") String moving_average_type,
            @WebParam(name = "moving_average_window_size") int moving_average_window_size,
            @WebParam(name = "moving_average_alpha") double moving_average_alpha,
            @WebParam(name = "correlation_type") String correlation_type,
            @WebParam(name = "moving_correlation_window_size") int moving_correlation_window_size) throws NamingException, SQLException
            {  
        
            return TopsyDataAnalysis.calculateCorrelationTopsyVsFinance(query, topsy_field, finacial_field, from_date_string, to_date_string, day_delta, moving_average_type, moving_average_window_size, moving_average_alpha, correlation_type, moving_correlation_window_size);
    }    
    
    
    @WebMethod(operationName = "calculateCorrelationTwitterVsFinance")
    public CorrelationXYData calculateCorrelationTwitterVsFinance(@WebParam(name = "query") String query,
            @WebParam(name = "twitter_field") String twitter_field,
            @WebParam(name = "finacial_field") String finacial_field,
            @WebParam(name = "from_date_string") String from_date_string,
            @WebParam(name = "to_date_string") String to_date_string,
            @WebParam(name = "day_delta") int day_delta,
            @WebParam(name = "moving_average_type") String moving_average_type,
            @WebParam(name = "moving_average_window_size") int moving_average_window_size,
            @WebParam(name = "moving_average_alpha") double moving_average_alpha,
            @WebParam(name = "correlation_type") String correlation_type,
            @WebParam(name = "moving_correlation_window_size") int moving_correlation_window_size,
            @WebParam(name = "time_interval") String time_interval)
            throws NamingException, SQLException{
        
        return RealTimeTwitterDataAnalysis.calculateDailyCorrelationTwitterVsFinance(query, twitter_field, finacial_field, from_date_string, to_date_string, day_delta, moving_average_type, moving_average_window_size, moving_average_alpha, correlation_type, moving_correlation_window_size, time_interval);
    }
    
    @WebMethod(operationName = "calculateCorrelationFinanceVsFinance")
    public CorrelationXYData calculateCorrelationFinanceVsFinance(
            @WebParam(name = "company_one_name") String company_one_name,
            @WebParam(name = "company_two_name") String company_two_name,
            @WebParam(name = "company_one_field") String company_one_field,
            @WebParam(name = "company_two_field") String company_two_field,
            @WebParam(name = "from_date_string") String from_date_string,
            @WebParam(name = "to_date_string") String to_date_string,
            @WebParam(name = "interval") String interval,
            @WebParam(name = "moving_average_type") String moving_average_type,
            @WebParam(name = "moving_average_window_size") int moving_average_window_size,
            @WebParam(name = "moving_average_alpha") double moving_average_alpha,
            @WebParam(name = "correlation_type") String correlation_type,
            @WebParam(name = "moving_correlation_window_size") int moving_correlation_window_size)
            throws NamingException, SQLException{
        
        return FinancialDataAnalysis.calculateCorrelationFinanceVsFinance(company_one_name, company_two_name, company_one_field, company_two_field, from_date_string, to_date_string, interval, moving_average_window_size, moving_average_type, moving_average_alpha, correlation_type, moving_correlation_window_size);
    }
    
}
