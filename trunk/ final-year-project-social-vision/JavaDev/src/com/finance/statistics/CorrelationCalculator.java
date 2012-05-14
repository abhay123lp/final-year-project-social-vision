/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.finance.statistics;

import java.util.Collections;
import java.util.Stack;
import com.data.structures.CorrelationXYData;
import jsc.correlation.KendallCorrelation;
import jsc.correlation.LinearCorrelation;
import jsc.correlation.SpearmanCorrelation;
import jsc.datastructures.PairedData;
import jsc.regression.PearsonCorrelation;

/**
 *
 * @author Phil
 */
public class CorrelationCalculator {
           
        public CorrelationCalculator() {
            
        }
        
        // calculates moving average for an array of doubles, does simple moving avg until it reaches its window size. 
        public static CorrelationXYData calculateAllCorrelation(double[] data_set_x,  double[] data_set_y)
        {
            PairedData paired_data = new PairedData(data_set_x, data_set_y);
            CorrelationXYData correlation_data = new CorrelationXYData();
            
            // Calculation Linear Correlation
            LinearCorrelation linCor = new LinearCorrelation(paired_data);
            correlation_data.linearConfidenceCoeff = linCor.getConfidenceCoeff();
            correlation_data.linearCorrelationCoeff = linCor.getR();
            correlation_data.linearHigherConfLimit = linCor.getUpperLimit();
            correlation_data.linearLowerConfLimit = linCor.getLowerLimit();
            correlation_data.linearSignificanceProbability = linCor.getSP(); 

            // Calculation Spearman Correlation
            SpearmanCorrelation spearCor = new SpearmanCorrelation(paired_data);
            correlation_data.spearmanCorrelationCoeff = spearCor.getR();
            correlation_data.spearmanSignificanceProbability = spearCor.getSP();
            correlation_data.spearmanSumOfSqDiff = spearCor.getS(); 

            // Calculation Spearman Correlation
            KendallCorrelation kendCor = new KendallCorrelation(paired_data);
            correlation_data.kendelCorrelationCoeff = kendCor.getR();
            correlation_data.kendelSignificanceProbability = kendCor.getSP();
            correlation_data.kendelTheilsStatisitc = kendCor.getT();

            // Pearson Correlation
            PearsonCorrelation pearsCor = new PearsonCorrelation(paired_data);
            correlation_data.pearsonInterceptionTerma = pearsCor.getA(); 
            correlation_data.pearsonSlopeTermB = pearsCor.getB(); 
            correlation_data.pearsonPMCorrelationCoeff = pearsCor.getR(); 
            
            return correlation_data;
        }
        
}

