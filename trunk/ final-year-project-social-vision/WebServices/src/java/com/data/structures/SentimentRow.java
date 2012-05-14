/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.structures;

/**
 *
 * @author Phil
 */
public class SentimentRow {
    public int numOfNotEnglish = 0;
    public int numOfEnglish = 0;
    
    public int numOfNotRelevant = 0;
    public int numOfRelevant = 0;
      
    public int numOfNeutral = 0;
    public int numOfPositive = 0;
    public int numOfNegative = 0;
    
    public int numOfRecession = 0;
    public int numOfGrowth = 0;
    
    public int numOfPoliticallyStable = 0;
    public int numOfPoliticallyInStable = 0;
    
    public int totalTweetsClassified = 0;
    
    public SentimentRow() {
        
    }
    
}
