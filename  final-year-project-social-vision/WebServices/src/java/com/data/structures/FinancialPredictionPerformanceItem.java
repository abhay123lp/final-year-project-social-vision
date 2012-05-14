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
public class FinancialPredictionPerformanceItem {
    public int prediction_data_item_id;
    public int prediction_task_id;
    public String company_name;
    public String predicton_type;
    public Date date;
    public Date predicted_from_date;
    public double actual_financial_change_value;
    public double actual_financial_change_percent;
    public String actual_financial_direction;
    public String predicted_financial_direction;
    public double predicted_financial_change;
    public double predicted_financial_up_prob;
    public double predicted_financial_down_prob;
    public double predicted_financial_normalised_prob;

    public FinancialPredictionPerformanceItem() {
        
    }
}
