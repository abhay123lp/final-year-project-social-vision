/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservices;

import com.data.dataitems.ApiFinanceSearchesItem;
import com.data.operations.DBFinancialOperations;
import java.io.IOException;
import java.sql.SQLException;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
@WebService(serviceName = "PythonScriptsWebServices")
public class PythonScriptsWebServices {
    
    /**
     * RFM.py - This python script data mines the current and financial data for all the assets in the financial search terms table
     */
    @WebMethod(operationName = "startRFM")
    public String startRFM(){  
        String message = "RFM python script started sucessfully";
        try {
                Runtime.getRuntime().exec("cmd /c start C:\\Python27\\RFM.py");
        } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                message = e.getMessage().toString();
        }    
        return message;
    } 
    
    /**
     * RTM.py - This python script data mines the most influential current and historical tweets for all the queries in the topsy search table 
     */
    @WebMethod(operationName = "startRTM")
    public String startRTM(){  
        String message = "RTM python script started sucessfully";
        try {
                Runtime.getRuntime().exec("cmd /c start C:\\Python27\\RTM.py");
        } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                message = e.getMessage().toString();
        }    
        return message;
    } 
    
    /**
     * RSM.py - This python script receives tweets in real time that match any of the search terms in the twitter searches table 
     */
    @WebMethod(operationName = "startRSM")
    public String startRSM(){  
        String message = "RSM python script started sucessfully";
        try {
                Runtime.getRuntime().exec("cmd /c start C:\\Python27\\RSM.py");
        } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                message = e.getMessage().toString();
        }    
        return message;
    } 
    
    /**
     * ResetDailyCounters.py - This python script resets all the daily counters 
     */
    @WebMethod(operationName = "startResetDailyCounters")
    public String startResetDailyCounters(){  
        String message = "ResetDailyCounters python script started sucessfully";
        try {
                Runtime.getRuntime().exec("cmd /c start C:\\Python27\\ResetDailyCounters.py");
        } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                message = e.getMessage().toString();
        }    
        return message;
    } 
    
    /**
     * ResetHourlyCounters.py - This python script resets all the hourly counters  
     */
    @WebMethod(operationName = "startResetHourlyCounters")
    public String startResetHourlyCounters(){  
        String message = "ResetHourlyCounters python script started sucessfully";
        try {
                Runtime.getRuntime().exec("cmd /c start C:\\Python27\\ResetHourlyCounters.py");
        } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
                message = e.getMessage().toString();
        }    
        return message;
    } 
    
    
    
}
