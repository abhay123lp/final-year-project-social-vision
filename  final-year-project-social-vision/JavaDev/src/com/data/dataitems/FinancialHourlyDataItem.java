/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.dataitems;

import java.util.Date;

/**
 *
 * @author Phil
 */
public class FinancialHourlyDataItem {

    public int idcurrent_table;
    public String name;
    public Date date_time;
    public String symbol;
    public String market;      
    public double price;        
    public double volume;        
    public double avg_daily_volume;
    public String  market_cap;
    public double book_value;
    public String ebitda;
    public double dividend_per_share;
    public double dividend_yield;
    public double earnings_per_share;
    // Its actually 52_week_high and 52_week_low in DB
    public double year_week_high;
    public double year_week_low;
    // Its 50day_moving_avg in db;
    public double fifty_day_moving_avg;
    // Its 200day_moving_avg in db;
    public double two_hundred_day_moving_avg;
    public double price_earnings_ratio;
    public double price_earnings_growth_ratio; 
    public double price_sales_ratio;        
    public double price_book_ratio;
    public double short_ratio;      
    
    // Recent 15 minute values
    public Date previous_time_date;
    public double previous_price;
    public double price_change_value;
    public double price_change_percentage;
    public String price_change_text;
    
    // Recent hour values
    public Date hourly_previous_time_date;
    public double hourly_previous_price;
    public double hourly_price_change_value;
    public double hourly_price_change_percentage;
    public String hourly_price_change_text;

    public FinancialHourlyDataItem() {
    }
    
}
