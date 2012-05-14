/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.finance.statistics;

import java.util.Collections;
import java.util.Stack;

/**
 *
 * @author Phil
 */
public class MovingAverageCalculator {
          
        private String avg_type;
        private double decay_alpha;
        private int window_size;
        
        public MovingAverageCalculator(int window_size, String avg_type, double decay_alpha) {
            this.avg_type = avg_type;
            this.decay_alpha = decay_alpha;
            this.window_size = window_size;
        }
        
        // calculates moving average for an array of doubles, does simple moving avg until it reaches its window size. 
        public double[] calculateMovingCorrelation(double[] data_set)
        {
            // this varuable stores the window size of samples
            Stack <Double> buffer = new Stack<Double>();
            
            // Stores the returned moving average for each window. 
            double[] avgArray = new double[data_set.length];
            
            // Set Stack Size
	    buffer.setSize(window_size);
            
            double sumSoFar = 0;
            for(int i = 0; i < data_set.length; i++)
            {
                // Add new data set to buffer
                buffer.push(data_set[i]);
                buffer.remove(0);
                
                //Applys simple moving avg until it reaches its window size.
                if(i >= window_size)
                   avgArray[i] = movingAverageForWindow(buffer);  
               
                else
                {
                    sumSoFar = sumSoFar + data_set[i]; 
                    avgArray[i] = sumSoFar/(i+1); 
                }
            }
            return avgArray;
        }        
    
        private double movingAverageForWindow(Stack<Double> buffer)
	{
            double avg = 0;
            
            if(avg_type.equals("SMA"))
            {
                avg = simpleAverage(buffer);
            }
            else if(avg_type.equals("WMA"))
            {
                avg = weightedAverage(buffer);
            }
            else if(avg_type.equals("EMA"))
            {
                avg = exponentialAverage(buffer, decay_alpha);
            }
            else if(avg_type.equals("MMA"))
            {
                avg = medianAverage(buffer);
            }
            else
            {
                avg = simpleAverage(buffer);
            }
             
            return avg;
        }
    
        private double simpleAverage(Stack<Double> buffer)
	{
		int window_size = buffer.size();
		double avg = 0;
		double temp = 0;
		
		for(int i = 0; i<buffer.size(); i++)
		{
			temp = temp + buffer.get(i);
		}
		avg = temp/window_size;
	
		return avg;
	}
	
	private double weightedAverage(Stack<Double> buffer)
	{
		int window_size = buffer.size();
		double avg = 0;
		double numerator = 0;
		double denominator = 0;
		int coeff = 1;
		
		for(int i = 0; i<buffer.size(); i++)
		{
			numerator = numerator + (double) buffer.get(i)*coeff;
			denominator = denominator + coeff;
			coeff ++;
		}
		avg = numerator/denominator;
		
		return avg;
	}
	
	/* An larger value of the decay alpha discounts older values faster, it is a value of 0 to 1*/ 
	/* This function is recursive, St = alpha x Most Current Value + (1-alpha) x St-1*/
	// 
	private double exponentialAverage(Stack<Double> buffer, double decay_alpha)
	{
		double avg = 0;
		
		int window_size = buffer.size();
		
		ExponentialMovingAverage ema = new ExponentialMovingAverage(decay_alpha);
		
		Stack<Double> output = new Stack<Double> ();
		
		for (double value:buffer) 
		{
			output.add(ema.average(value));	
		};
		
		avg = simpleAverage(output);
	
		return avg;
	}
	
	
	// Code found from http://answers.yahoo.com/question/index?qid=20080107235906AAH82j4
	@SuppressWarnings("unchecked")
	private double medianAverage(Stack<Double> buffer) {
		Stack<Double> sortedBuffer;
		sortedBuffer = (Stack<Double>) buffer.clone();
		double avg = 0;
		
		Collections.sort(sortedBuffer);
		
		if (buffer.size() % 2 == 0) {
			avg = ((sortedBuffer.get((sortedBuffer.size()/ 2) - 1) + sortedBuffer.get(sortedBuffer.size() / 2)) / 2.0);
		} 
		else {	
			avg = sortedBuffer.get(sortedBuffer.size()/ 2);
		}
	
		return avg;
	}
		
}
