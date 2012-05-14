/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.finance.statistics;

/* Modified Code from http://www.dreamincode.net/forums/topic/91270-exponential-moving-average/ */ 
class ExponentialMovingAverage {
	    private double alpha;
	    private Double oldValue;
	    public ExponentialMovingAverage(double alpha) {
	        this.alpha = alpha;
	    }

	    public double average(double value) {
	        if (oldValue == null) {
	            oldValue = value;
	            return value;
	        }
	        double newValue = oldValue + alpha * (value - oldValue);
	        oldValue = newValue;
	        return newValue;
	    }
	}