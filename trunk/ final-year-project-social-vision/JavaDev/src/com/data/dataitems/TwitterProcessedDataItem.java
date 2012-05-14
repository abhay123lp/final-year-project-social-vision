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
public class TwitterProcessedDataItem {
    public int id_twitter_processed;
    public String name;
    public String query;
    public String data_group;
    
    public Date date;
    public int no_tweets_collected;
    public double tweet_rate;
    public String is_quarter_hour;
    public String is_hour;
    public String is_day;
    
    public String most_used_words;
       
    public int no_english;
    public int no_not_english;
    
    public int no_relevant;
    public int no_irrelevant;
    
    public int no_neutral;
    public int no_not_neutral;
    
    public int no_subjective;
    public int no_objective;
    
    public int no_positive_sentiments;
    public int no_negative_sentiments;

    public int no_growth_comments;
    public int no_recession_comments;
    
    public int no_politically_stable_comments;
    public int no_politically_instable_comments;
    
    public int no_Intel_comments;
    public int no_Samsung_comments;
    public int no_Imagination_Technologies_comments;
    public int no_Imgtec_comments;
    public int no_ARM_comments;
    public int no_Google_comments;
    public int no_Apple_comments;
    public int no_HTC_comments;
    public int no_Sony_comments;
    public int no_Blackberry_comments;
    public int no_Nokia_comments;
    public int no_Motorola_comments;
    public int no_LG_comments;
    public int no_Microsoft_comments;
    public int no_IBM_comments;
    public int no_ARM_Holdings_comments;
    public int no_RIM_comments;

    public TwitterProcessedDataItem() {
    }
            
}
