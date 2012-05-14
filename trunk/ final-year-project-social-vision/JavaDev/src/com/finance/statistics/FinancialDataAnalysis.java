/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.finance.statistics;

import com.data.dataitems.SimpleFinancialItem;
import com.data.operations.DBFinancialOperations;
import com.data.structures.CorrelationXYData;
import com.data.structures.CorrelationXYItem;
import java.sql.SQLException;
import java.util.Vector;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class FinancialDataAnalysis {
    
    public static CorrelationXYData calculateCorrelationFinanceVsFinance(String company_one_name, String company_two_name, String company_one_field, 
            String company_two_field, String from_date_string, String to_date_string, String interval,
            int moving_average_window_size, String moving_average_type, double moving_average_alpha, String correlation_type, int correlation_window_size) throws NamingException, SQLException
    {
        
        Vector<SimpleFinancialItem> financial_data_one = new Vector<SimpleFinancialItem>();
        Vector<SimpleFinancialItem> financial_data_two = new Vector<SimpleFinancialItem>();

        if(interval.equals("day"))
        {
            financial_data_one = DBFinancialOperations.getSpecificFinancialData(company_one_name, company_one_field, from_date_string, to_date_string);
            financial_data_two = DBFinancialOperations.getSpecificFinancialData(company_two_name, company_two_field, from_date_string, to_date_string);    
        }
        else if(interval.equals("hour"))
        {
            financial_data_one = DBFinancialOperations.getSpecificHourlyFinancialData(company_one_name, company_one_field, from_date_string, to_date_string);
            financial_data_two = DBFinancialOperations.getSpecificHourlyFinancialData(company_two_name, company_two_field, from_date_string, to_date_string);   
        }    
        else if(interval.equals("minute"))
        {
            financial_data_one = DBFinancialOperations.getSpecificMinutelyFinancialData(company_one_name, company_one_field, from_date_string, to_date_string);
            financial_data_two = DBFinancialOperations.getSpecificMinutelyFinancialData(company_two_name, company_two_field, from_date_string, to_date_string);   
        }
        
        // Calculate the size of the array so they are equal
        int size = 0;
        if(financial_data_one.size() >= financial_data_two.size())
            size = financial_data_two.size();
        else
            size = financial_data_one.size();
        
        
        // Store the vector as array ready for the correlation to be calculated
        double [] finance_one_array = convertSimpleFinanceItemsToArray(financial_data_one, size);
        double [] finance_two_array = convertSimpleFinanceItemsToArray(financial_data_two, size);

        // Apply moving average filter on the financial data
        MovingAverageCalculator mvAvgCal = new MovingAverageCalculator(moving_average_window_size,moving_average_type,moving_average_alpha);
        finance_one_array = mvAvgCal.calculateMovingCorrelation(finance_one_array);
       
        // Apply moving average filter  social data
        mvAvgCal = new MovingAverageCalculator(moving_average_window_size,moving_average_type,moving_average_alpha);
        finance_two_array = mvAvgCal.calculateMovingCorrelation(finance_two_array);
        
      
        double[] correlation_array = new double[finance_one_array.length];
        MovingCorrelationCalculator mvCorCal = new MovingCorrelationCalculator(correlation_window_size, correlation_type); 
        correlation_array = mvCorCal.calculateMovingCorrelation(finance_one_array, finance_two_array);
        
        // Calculate the correlation for all the data
        CorrelationXYData corItem = CorrelationCalculator.calculateAllCorrelation(finance_one_array, finance_two_array);   
        
        Vector<CorrelationXYItem> correlationSocialFinanceItems = new Vector<CorrelationXYItem>();
        
        // CorrelationSocialFinanceItem temp_item;
        for(int i = 0; i < finance_two_array.length; i++)
        {
            CorrelationXYItem temp_item = new CorrelationXYItem();
            temp_item.x_value = finance_one_array[i];
            temp_item.x_date = financial_data_one.get(i).date;
            temp_item.y_value = finance_two_array[i];
            temp_item.y_date = financial_data_one.get(i).date;
            temp_item.correlation_value = correlation_array[i];
            correlationSocialFinanceItems.add(temp_item);
        }
        
        corItem.correlationXYItems = correlationSocialFinanceItems;
        
        return corItem; 
     }
    
    
    private static double[] convertSimpleFinanceItemsToArray(Vector<SimpleFinancialItem> financial_data, int size)
    {
        double [] data_array = new double [size];
        
        for(int i = 0; i<size;i++)
        {
            data_array[i] = financial_data.get(i).field_value;
        }
        
        return data_array;
    }
}
