/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.finance.statistics;

import java.util.Stack;

/**
 *
 * @author Phil
 */
public class Utility {
    
    public static double[] convertStackToArray(Stack <Double> buffer)
    {
        double[] array = new double[buffer.size()];
        for(int i = 0; i < buffer.size(); i++)
        {
            array[i] = buffer.get(i);
        }
        
        return array;
    }
}
