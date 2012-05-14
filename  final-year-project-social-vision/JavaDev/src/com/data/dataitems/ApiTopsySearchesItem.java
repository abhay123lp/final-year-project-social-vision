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
public class ApiTopsySearchesItem {
    
    public int idtopsysearches;
    public String name;
    public String query;
    public String type;
    public Date last_completed;
    public Date most_current_histogram;
    public Date overall_start_date;
    public Date overall_end_date;
    public Date furthest_date_bk;
    public Date most_current_date;
    public int day_count;
    public int results_per_page;      
    public int max_no_pages;        
    public String tasked_impl;        
    public String completed;        
    public String history_collected;
    public String data_group;

    public Date company_count_process_date;
    
    public Date country_count_process_date;

     
    public ApiTopsySearchesItem() {
    }
                 
}
