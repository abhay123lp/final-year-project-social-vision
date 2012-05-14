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
public class TopsyCountryDataItem {
    public int idtopsy_table;
    public String name;        
    public String type;       
    public String query;        
    public String title;        
    public String url;        
    public Double score;        
    public Date date;       
    public String content;        
    public int total_search_results;
    public String trackback_permalink;        
    public int hits;        
    public int trackback_total;
    public String topsy_trackback_url;        
    public String highlight;
    
    public String is_english;
    public Double english_prob;
    public Double not_english_prob;   
    
    public String relevant;   
    public Double relevant_prob;
    public Double irrelevant_prob;
    
    public String is_neutral;   
    public Double neutral_prob;
    public Double not_neutral_prob;
    
    public String subjectivity;
    public Double subjective_prob; 
    public Double objective_prob;  
    
    public String sentiment;        
    public Double sentiment_pos_prob;        
    public Double sentiment_neg_prob;   
    
    public String growth_recession;
    public double growth_prob;
    public double recession_prob;
    
    public String political_stability;
    public double politically_stable_prob; 
    public double politically_instable_prob;
    
    public TopsyCountryDataItem() {
        
        
    }

}
