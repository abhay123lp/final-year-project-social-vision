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
public class CombinedDailySocialFinanceData {
    public String name;
    public String from_date;
    public String to_date;
    public String social_field;
    public String financial_field;
    public int day_delta;
    
    public  double [] social_data_array;
    public  Date [] social_date_array;
    
    public  double [] finacial_data_array;
    public  Date [] financial_date_array;

    public CombinedDailySocialFinanceData() {
    }
    
}
