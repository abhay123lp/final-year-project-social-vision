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
public class PythonScriptItem {
    public int id_python_script;
    public String name;
    public String interval;
    public String status;
    public String progress;
    public Date last_run_date;
    public Date last_progress_update;
    public String error_message;
    public Date error_date_time;
    public int daily_run_count;

    public PythonScriptItem() {
        
    }
     
}
