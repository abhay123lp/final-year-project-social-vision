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
public class DataAnalysisItem {
    public String name;
    public String query;
    public String symbol;
    public String market;
    public Date date;
    public double open;
    public double high;
    public double low;
    public double close;
    public double volume;
    public double adj_close;
    public int histogram_total;
    public int total_results;
    public int no_tweets_collected;
    public int no_positive_sentiments;
    public int no_negative_sentiments;
    public int no_neutral_sentiments;
    public int no_relevant;
    public int no_irrelevant;

    public DataAnalysisItem() {
    }
    
}
