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
public class ApiTwitterSearchesItem {
    public int idTwitterSearches;
    public String local_name;        
    public String query;    
    public String data_group;
    
    public Date date_created;    
    
    public int stream_hourly_count;
    public int stream_day_count;   
    
    public Date tweet_count_process_date;
    
    public Date tweet_is_english_pocess_date;

    public Date start_time;        
    public Date last_completed;        
    public int number_calls;       
    public String error_message;        
    public String geo_latitude;
    public String geo_longitude;        
    public String geo_radius_miles;        
    public String language;
    public int num_of_pages;        
    public int rpp;
    public String result_type;

    public ApiTwitterSearchesItem() {
        
        
    }

}
