/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.finance.statistics;
import com.data.dataitems.TwitterRealTimeProcessedSimpleDataItem;
import com.data.dataitems.SimpleFinancialItem;
import com.data.dataitems.TopsyProcessedSimpleDataItem;
import com.data.dataitems.TwitterRealTimeProcessedSimpleDataItem;
import com.data.operations.DBFinancialOperations;
import com.data.operations.DBTwitterOperations;
import com.data.structures.CorrelationXYData;
import com.data.structures.CorrelationXYItem;
import com.data.structures.SocialFinanceItem;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class RealTimeTwitterDataAnalysis {
    
    public static CombinedDailySocialFinanceData getCombinedDailyTwitterAndFinanceData(String query, String topsy_field, String finacial_field, String from_date_string, String to_date_string, int day_delta) throws NamingException, SQLException{
        
        String twitter_from_date_string = incrementStringDateByDays(from_date_string, day_delta);
        String twitter_to_date_string = incrementStringDateByDays(to_date_string, day_delta);
             
        // Get Topsy Social Data between certain dates
        Vector<TwitterRealTimeProcessedSimpleDataItem> twitter_data;
        twitter_data = DBTwitterOperations.getSpecificTwitterProcessedData(query, topsy_field, twitter_from_date_string, twitter_to_date_string, "day");
        
        // Get Financial Data between certain dates
        Vector<SimpleFinancialItem> financial_data;
        financial_data = DBFinancialOperations.getSpecificFinancialData(query,finacial_field, twitter_from_date_string, twitter_to_date_string);
        
        // Join the financial and topsy social data together
        Vector<SocialFinanceItem> social_finance_items = new Vector<SocialFinanceItem>();
        
        Date topsy_date;
        int index;
        // For each financial row get corresponding social data, taking into account the day delta
        for(int i =0; i < financial_data.size();i++)
        {
            // Increment the date using the day delta
            topsy_date = incrementDateByDays(financial_data.get(i).date, day_delta);
            index = searchDateFromTwitterData(twitter_data, topsy_date);
            
            // If it has been found add to vector 
            SocialFinanceItem temp_social_finance_item = new SocialFinanceItem();
            if(index != -1)
            {
                temp_social_finance_item = new SocialFinanceItem();
                temp_social_finance_item.social_date = topsy_date;
                temp_social_finance_item.social_value = twitter_data.get(index).twitter_value;
                temp_social_finance_item.financial_date = financial_data.get(i).date;
                temp_social_finance_item.finacial_value = financial_data.get(i).field_value;
                social_finance_items.add(temp_social_finance_item);
            }
        }
        
        // Convert to correlation item
        double[] topsy_data_array = new double[social_finance_items.size()];
        Date[] topsy_date_array = new Date[social_finance_items.size()];
        double[] financial_data_array = new double[social_finance_items.size()];
        Date[] financial_date_array = new Date[social_finance_items.size()];
        
        for (int i = 0; i < social_finance_items.size(); i++)
        {
            topsy_data_array[i] = social_finance_items.get(i).social_value;
            topsy_date_array[i] = social_finance_items.get(i).social_date;
            financial_data_array[i] = social_finance_items.get(i).finacial_value;
            financial_date_array[i] = social_finance_items.get(i).financial_date;
        }
        
        CombinedDailySocialFinanceData combinedItem = new CombinedDailySocialFinanceData();
        combinedItem.social_data_array = topsy_data_array;
        combinedItem.social_date_array = topsy_date_array;
        combinedItem.finacial_data_array = financial_data_array;
        combinedItem.financial_date_array = financial_date_array;
        combinedItem.name = query;
        combinedItem.from_date = from_date_string;
        combinedItem.to_date = to_date_string;
        combinedItem.day_delta = day_delta;
        combinedItem.social_field =  topsy_field;
        combinedItem.financial_field = finacial_field;
        
        return combinedItem;
    }
    
    public static CombinedDailySocialFinanceData getCombinedHourlyTwitterAndFinanceData(String query, String topsy_field, String finacial_field, String from_date_string, String to_date_string, int time_delta, String time_interval) throws NamingException, SQLException{
        
        
        String twitter_from_date_string = "";
        String twitter_to_date_string = "";
             
        // Get Topsy Social Data between certain dates
        Vector<TwitterRealTimeProcessedSimpleDataItem> twitter_data = new Vector<TwitterRealTimeProcessedSimpleDataItem>();
        if(time_interval.equals("hour"))
        {
            twitter_from_date_string = incrementStringDateByHours(from_date_string, time_delta);
            twitter_to_date_string = incrementStringDateByHours(to_date_string, time_delta);
            twitter_data = DBTwitterOperations.getSpecificTwitterProcessedData(query, topsy_field, twitter_from_date_string, twitter_to_date_string, "hour");
        }
        else if (time_interval.equals("minute"))
        {
            twitter_from_date_string = incrementStringDateByMinutes(from_date_string, time_delta);
            twitter_to_date_string = incrementStringDateByMinutes(to_date_string, time_delta);
            twitter_data = DBTwitterOperations.getSpecificTwitterProcessedData(query, topsy_field, twitter_from_date_string, twitter_to_date_string, "minute");
        }
            
            
        // Get Financial Data between certain dates
        Vector<SimpleFinancialItem> financial_data = new Vector<SimpleFinancialItem>();
        if(time_interval.equals("hour"))
        {
            financial_data = DBFinancialOperations.getSpecificHourlyFinancialData(query,finacial_field, twitter_from_date_string, twitter_to_date_string);
        }
        else if (time_interval.equals("minute"))
        {
            financial_data = DBFinancialOperations.getSpecificMinutelyFinancialData(query,finacial_field, twitter_from_date_string, twitter_to_date_string);
        }
        
        // Join the financial and topsy social data together
        Vector<SocialFinanceItem> social_finance_items = new Vector<SocialFinanceItem>();
        
        Date social_date = new Date();
        int index;
        // For each financial row get corresponding social data, taking into account the day delta
        for(int i =0; i < financial_data.size();i++)
        {                   
            // Increment the date using the day delta
            if(time_interval.equals("hour"))
                social_date = incrementDateByHours(financial_data.get(i).date, time_delta);
            if(time_interval.equals("minute"))
                social_date = incrementDateByMinutes(financial_data.get(i).date, time_delta);
                
            index = searchDateFromTwitterData(twitter_data, social_date);
            
            // If it has been found add to vector 
            SocialFinanceItem temp_social_finance_item = new SocialFinanceItem();
            if(index != -1)
            {
                temp_social_finance_item = new SocialFinanceItem();
                temp_social_finance_item.social_date = social_date;
                temp_social_finance_item.social_value = twitter_data.get(index).twitter_value;
                temp_social_finance_item.financial_date = financial_data.get(i).date;
                temp_social_finance_item.finacial_value = financial_data.get(i).field_value;
                social_finance_items.add(temp_social_finance_item);
            }
        }
        
        // Convert to correlation item
        double[] topsy_data_array = new double[social_finance_items.size()];
        Date[] topsy_date_array = new Date[social_finance_items.size()];
        double[] financial_data_array = new double[social_finance_items.size()];
        Date[] financial_date_array = new Date[social_finance_items.size()];
        
        for (int i = 0; i < social_finance_items.size(); i++)
        {
            topsy_data_array[i] = social_finance_items.get(i).social_value;
            topsy_date_array[i] = social_finance_items.get(i).social_date;
            financial_data_array[i] = social_finance_items.get(i).finacial_value;
            financial_date_array[i] = social_finance_items.get(i).financial_date;
        }
        
        CombinedDailySocialFinanceData combinedItem = new CombinedDailySocialFinanceData();
        combinedItem.social_data_array = topsy_data_array;
        combinedItem.social_date_array = topsy_date_array;
        combinedItem.finacial_data_array = financial_data_array;
        combinedItem.financial_date_array = financial_date_array;
        combinedItem.name = query;
        combinedItem.from_date = from_date_string;
        combinedItem.to_date = to_date_string;
        combinedItem.day_delta = time_delta;
        combinedItem.social_field =  topsy_field;
        combinedItem.financial_field = finacial_field;
        
        return combinedItem;
    }
    
    public static CorrelationXYData calculateDailyCorrelationTwitterVsFinance(String query, 
            String twitter_field, 
            String finacial_field,
            String from_date_string, 
            String to_date_string, 
            int day_delta,
            String moving_average_type,
            int moving_average_window_size,
            double moving_average_alpha,
            String correlation_type,
            int moving_correlation_window_size,
            String time_period) throws NamingException, SQLException
    {
       
        // Get the combined the combined topsy and finance data
        CombinedDailySocialFinanceData combinedItem = new CombinedDailySocialFinanceData();
        if(time_period.equals("day"))
            combinedItem = getCombinedDailyTwitterAndFinanceData(query,twitter_field, finacial_field, from_date_string, to_date_string, day_delta);
        else if (time_period.equals("hour"))
            combinedItem = getCombinedHourlyTwitterAndFinanceData(query,twitter_field, finacial_field, from_date_string, to_date_string, day_delta, "hour");
        else 
            combinedItem = getCombinedHourlyTwitterAndFinanceData(query,twitter_field, finacial_field, from_date_string, to_date_string, day_delta, "minute");
        
        // Apply moving average filter on the financial data
        MovingAverageCalculator mvAvgCal = new MovingAverageCalculator(moving_average_window_size,moving_average_type,moving_average_alpha);
        combinedItem.finacial_data_array = mvAvgCal.calculateMovingCorrelation(combinedItem.finacial_data_array);
       
        // Apply moving average filter  social data
        mvAvgCal = new MovingAverageCalculator(moving_average_window_size,moving_average_type,moving_average_alpha);
        combinedItem.social_data_array = mvAvgCal.calculateMovingCorrelation(combinedItem.social_data_array);
        
        CorrelationXYData corItem = CorrelationCalculator.calculateAllCorrelation(combinedItem.social_data_array, combinedItem.finacial_data_array);     
        
        // Calculate moving correlation 
        double[] correlation_array = new double[combinedItem.finacial_data_array.length];
        MovingCorrelationCalculator mvCorCal = new MovingCorrelationCalculator(moving_correlation_window_size, correlation_type); 
        correlation_array = mvCorCal.calculateMovingCorrelation(combinedItem.social_data_array, combinedItem.finacial_data_array);
        
        // Convert Data into to the right format
        corItem.name = combinedItem.name;
        corItem.from_date = combinedItem.from_date;
        corItem.to_date = combinedItem.to_date;
        corItem.financial_field = combinedItem.financial_field;
        corItem.social_field = combinedItem.social_field;
        
        Vector<CorrelationXYItem> correlationSocialFinanceItems = new Vector<CorrelationXYItem>();
        // CorrelationSocialFinanceItem temp_item;
        for(int i = 0; i < combinedItem.finacial_data_array.length; i++)
        {
            CorrelationXYItem temp_item = new CorrelationXYItem();
            temp_item.x_value = combinedItem.social_data_array[i];
            temp_item.x_date = combinedItem.social_date_array[i];
            temp_item.y_value = combinedItem.finacial_data_array[i];
            temp_item.y_date = combinedItem.financial_date_array[i];
            temp_item.correlation_value = correlation_array[i];
            correlationSocialFinanceItems.add(temp_item);
        }
        
        corItem.correlationXYItems = correlationSocialFinanceItems;
        return corItem;
    }

    public static int searchDateFromTwitterData(Vector<TwitterRealTimeProcessedSimpleDataItem> socialVector, Date date)
    {
        int i = 0;
        for(i = 0; i < socialVector.size(); i++)
        {
            if(socialVector.get(i).date.getTime() == date.getTime())
                break;
        }
        
        // If date could not be found
        if (i == socialVector.size())
            i = -1;
            
        // Returns the index location. 
        return i;
    }
    
    public static String incrementStringDateByDays(String dateString, int numOfDays)
    {
        DateFormat formatter ; 
        Calendar date_calendar = Calendar.getInstance();
        Date date = date_calendar.getTime();
        String date_string = "";

        // Format the date strings to actual dates taken into account the day delta
        try {  
                formatter = new SimpleDateFormat("yyyy-MM-dd");
                date = (Date)formatter.parse(dateString);
                date_calendar.setTime(date);
                date_calendar.add(Calendar.DAY_OF_MONTH, numOfDays);
                
                date_string = date_calendar.get(Calendar.YEAR) + "-" + (date_calendar.get(Calendar.MONTH)+1)
                        + "-" + date_calendar.get(Calendar.DAY_OF_MONTH);
        } 
        catch (ParseException e)
        {
            System.out.println("Exception :"+e);  
        }  
        
        return date_string;
    }
    
    public static String incrementStringDateByHours(String dateString, int numOfHours)
    {
        DateFormat formatter ; 
        Calendar date_calendar = Calendar.getInstance();
        Date date = date_calendar.getTime();
        String date_string = "";

        // Format the date strings to actual dates taken into account the day delta
        try {  
                formatter = new SimpleDateFormat("yyyy-MM-dd");
                date = (Date)formatter.parse(dateString);
                date_calendar.setTime(date);
                date_calendar.add(Calendar.HOUR, numOfHours);
                
                date_string = date_calendar.get(Calendar.YEAR) + "-" + (date_calendar.get(Calendar.MONTH)+1)
                        + "-" + date_calendar.get(Calendar.DAY_OF_MONTH) + " " + date_calendar.get(Calendar.HOUR) 
                        + ":" + date_calendar.get(Calendar.MINUTE) + ":" + date_calendar.get(Calendar.MINUTE);
        } 
        catch (ParseException e)
        {
            System.out.println("Exception :"+e);  
        }  
        
        return date_string;
    }
    
    public static String incrementStringDateByMinutes(String dateString, int numOfMinutes)
    {
        DateFormat formatter ; 
        Calendar date_calendar = Calendar.getInstance();
        Date date = date_calendar.getTime();
        String date_string = "";
 
        // Format the date strings to actual dates taken into account the day delta
        try {  
                formatter = new SimpleDateFormat("yyyy-MM-dd");
                date = (Date)formatter.parse(dateString);
                date_calendar.setTime(date);
                date_calendar.add(Calendar.MINUTE, numOfMinutes);
                
                date_string = date_calendar.get(Calendar.YEAR) + "-" + (date_calendar.get(Calendar.MONTH)+1)
                        + "-" + date_calendar.get(Calendar.DAY_OF_MONTH) + " " + date_calendar.get(Calendar.HOUR) 
                        + ":" + date_calendar.get(Calendar.MINUTE) + ":" + date_calendar.get(Calendar.SECOND);
        } 
        catch (ParseException e)
        {
            System.out.println("Exception :"+e);  
        }  
        
        return date_string;
    }
    
    public static Date incrementDateByDays(Date date, int numOfDays)
    {
        Calendar date_calendar = Calendar.getInstance();
 
        date_calendar.setTime(date);
        date_calendar.add(Calendar.DAY_OF_MONTH, numOfDays);
       
        return date_calendar.getTime();
    }
    
    public static Date incrementDateByHours(Date date, int numOfHours)
    {
        Calendar date_calendar = Calendar.getInstance();
 
        date_calendar.setTime(date);
        date_calendar.add(Calendar.HOUR, numOfHours);
       
        return date_calendar.getTime();
    }
    
    public static Date incrementDateByMinutes(Date date, int numOfMins)
    {
        Calendar date_calendar = Calendar.getInstance();
 
        date_calendar.setTime(date);
        date_calendar.add(Calendar.MINUTE, numOfMins);
       
        return date_calendar.getTime();
    }
}
