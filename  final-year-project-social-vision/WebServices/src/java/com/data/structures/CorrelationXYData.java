/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.data.structures;

import java.util.Date;
import java.util.Vector;


/**
 *
 * @author Phil
 */
public class CorrelationXYData{
    public String name;
    public String from_date;
    public String to_date;
    public String social_field;
    public String financial_field;
    public int day_delta;
    
    public Vector<CorrelationXYItem> correlationXYItems; 
    
    // Kendel Correlation Calculations
    public double kendelCorrelationCoeff = 0; 
    public double kendelSignificanceProbability = 0;
    public int kendelTheilsStatisitc = 0;
    
    // Linear Correlation Calculations
    public double linearCorrelationCoeff = 0;
    public double linearConfidenceCoeff = 0;
    public double linearSignificanceProbability = 0;
    public double linearLowerConfLimit = 0;
    public double linearHigherConfLimit = 0;
    
    // Spearman Calculations
    public double spearmanCorrelationCoeff = 0;
    public double spearmanSumOfSqDiff = 0;
    public double spearmanSignificanceProbability = 0;
    
    // Pearson Correlation, This class calculates and stores the Pearson product-moment 
    // correlation coefficient and least squares straight line, x = A + By, for an array of n data pairs 
    public double pearsonPMCorrelationCoeff = 0;
    public double pearsonInterceptionTerma = 0;
    public double pearsonSlopeTermB = 0;

    public CorrelationXYData() {
    
    }
    
    
}
