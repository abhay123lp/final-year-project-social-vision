/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.structures;

import java.util.Date;

/**
 *
 * @author Phil
 */
public class FinancialPredictionTask {
    public int prediction_task_id;
    public String company_name;
    public Date date_run;
    public String tweet_source;
    public String prediction_type;
    public String historical_current_type;
    public int tweets_fin_time_delta_value;
    public String tweets_fin_time_delta_unit;
    public int interval_value;
    public String interval_unit;
    public int training_limit;
    public Date training_from_date;
    public Date training_to_date;
    public Date test_from_date;
    public Date test_to_date;
    public String remove_short_words;
    public String remove_stop_words;
    public String remove_low_info_words;
    public int num_of_inf_words;
    public String use_bigrams;
    public String remove_non_english;
    public String remove_irrelevant;
    public String include_subjective;
    public String include_objective;
    public double down_precision;
    public double down_recall;
    public double up_precision;
    public double up_recall;
    public String prediction;
    public double up_prediction_prob;
    public double down_prediction_prob;
    public int num_of_most_intersting_features_to_show;
    public String most_informative_features;
   
    public FinancialPredictionTask() {
        
    }
}
