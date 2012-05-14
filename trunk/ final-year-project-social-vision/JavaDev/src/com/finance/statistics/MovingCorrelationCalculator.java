/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.finance.statistics;

import java.util.Collections;
import java.util.Stack;
import jsc.correlation.KendallCorrelation;
import jsc.correlation.LinearCorrelation;
import jsc.correlation.SpearmanCorrelation;
import jsc.datastructures.PairedData;

/**
 *
 * @author Phil
 */
public class MovingCorrelationCalculator {
          
        private int window_size;
        private String correlation_type;
        
        public MovingCorrelationCalculator(int window_size, String correlation_type) {
            this.window_size = window_size;
            this.correlation_type = correlation_type;
        }
        
        // calculates moving average for an array of doubles, does simple moving avg until it reaches its window size. 
        public double[] calculateMovingCorrelation(double[] data_set_x,  double[] data_set_y)
        {
            // This varuable stores the window size of samples
            Stack <Double> bufferX = new Stack<Double>();
            Stack <Double> bufferY = new Stack<Double>();
            
            // Stores the returned moving correlation for each window. 
            double[] corArray = new double[data_set_x.length];
            
            // Set Stack Size
	    bufferX.setSize(window_size);
            bufferY.setSize(window_size);
            
            
            double current_x = 0;
            double current_y = 0;
            double previous_x = 0;
            double previous_y = 0;
            for(int i = 0; i < data_set_x.length; i++)
            {
                current_x = data_set_x[i];
                current_y = data_set_y[i];
                
                // Change sma values slightly 
                if(current_x == previous_x)
                {
                    current_x = current_x + 0.000000001;
                }
                if(current_y == previous_y)
                {
                    current_y = current_y + 0.000000001;
                }
                
                // Add new data set to buffer X
                bufferX.push(current_x);
                bufferX.remove(0);
                
                // Add new data set to buffer Y
                bufferY.push(current_y);
                bufferY.remove(0);
                                        
                //Applys simple moving avg until it reaches its window size.
                if(i >= window_size)
                    corArray[i] = movingCorrelationForWindow(Utility.convertStackToArray(bufferX), Utility.convertStackToArray(bufferY));
                else
                    // Until it reaches the window, keep correlation to 0
                    corArray[i] = 0;
                
                previous_x = current_x;
                previous_y = current_y;
            }
            return corArray;
        }
        
        
        // Correlation types Linear, Spearman, Kendall 
        private double movingCorrelationForWindow(double[] bufferX, double[] bufferY)
        {
            double correlation = 0;
            PairedData pairedData = new PairedData(bufferX, bufferY);
            
            if(correlation_type.equals("Linear"))
            {
                LinearCorrelation linCor = new LinearCorrelation(pairedData);
                correlation = linCor.getR();
            }
            else if(correlation_type.equals("Spearman"))
            {
                SpearmanCorrelation spearCor = new SpearmanCorrelation(pairedData);
                correlation = spearCor.getR();
            }
            else if(correlation_type.equals("Kendall"))
            {
                KendallCorrelation kendCor = new KendallCorrelation(pairedData);
                correlation = kendCor.getR();
            }
            else
            {
                LinearCorrelation linCor = new LinearCorrelation(pairedData);
                correlation = linCor.getR();
            }
            
            return correlation; 
        }
        
}

