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
public class TwitterRealTimeItem {
    public int idtwitter_real_time;
    public String query;
    public String data_group;
    
    public Date inserted_date;
    public Date rounded_time;
    public Date created_at;
    
    public String tweet;
    public String just_text;
    public String url;
    public String screen_name;
    
    public String is_english;
    public Double english_prob;
    public Double not_english_prob;       
    
    public String relevant;   
    public Double relevant_prob;
    public Double irrelevant_prob;
    
    public String subjectivity;
    public Double subjective_prob; 
    public Double objective_prob;  
    
    public String sentiment;        
    public Double sentiment_pos_prob;        
    public Double sentiment_neg_prob;        
    public Double sentiment_neu_prob;
    
    public String financial_actual;
    public String financial_prediction;
    public Double financial_change;
    public Double financial_up_prob;
    public Double financial_down_prob;
    
    public String film_sentiment_overall;
    public double film_sentiment_pos_prob;        
    public double film_sentiment_neg_prob;
    
    public String growth_recession;
    public double growth_prob;
    public double recession_prob;
    
    
    public String political_stability;
    public double politically_stable_prob; 
    public double politically_instable_prob;
   
    public String IntelMention;
    public String SamsungMention;
    public String ImaginationTechMention;
    public String ImgtecMention;
    public String ARMMention;
    public String GoogleMention;
    public String AppleMention;
    public String HTCMention;
    public String SonyMention;
    public String BlackberryMention;
    public String NokiaMention;
    public String MotorolaMention;
    public String LGMention;
    public String MicrosoftMention;
    public String IBMMention;
    public String ARMHoldingsMention;
    public String RIMMention;

    public TwitterRealTimeItem() {
    }

}
