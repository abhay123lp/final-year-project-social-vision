/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservices;

import com.data.operations.DBGraphingOperations;
import com.data.operations.DBTwitterOperations;
import com.data.structures.*;
import com.finance.statistics.FinancialDataAnalysis;
import com.finance.statistics.RealTimeTwitterDataAnalysis;
import com.finance.statistics.TopsyDataAnalysis;
import java.io.IOException;
import java.sql.SQLException;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.naming.NamingException;


import java.io.File;
import java.io.FileOutputStream;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;


/**
 *
 * @author Phil
 */
@WebService(serviceName = "DataAnalysisWebServices")
public class DataAnalysisWebServices {
    
    /**
     * Data Analysis - Get Correlated Topsy and Financial Data
     */
    @WebMethod(operationName = "calculateCorrelationTopsyVsFinance")
    public CorrelationXYData calculateCorrelationTopsyVsFinance(
            @WebParam(name = "query") String query,
            @WebParam(name = "topsy_field") String topsy_field,
            @WebParam(name = "finacial_field") String finacial_field,
            @WebParam(name = "from_date_string") String from_date_string,
            @WebParam(name = "to_date_string") String to_date_string,
            @WebParam(name = "day_delta") int day_delta,
            @WebParam(name = "moving_average_type") String moving_average_type,
            @WebParam(name = "moving_average_window_size") int moving_average_window_size,
            @WebParam(name = "moving_average_alpha") double moving_average_alpha,
            @WebParam(name = "correlation_type") String correlation_type,
            @WebParam(name = "moving_correlation_window_size") int moving_correlation_window_size) throws NamingException, SQLException
            {  
        
            return TopsyDataAnalysis.calculateCorrelationTopsyVsFinance(query, topsy_field, finacial_field, from_date_string, to_date_string, day_delta, moving_average_type, moving_average_window_size, moving_average_alpha, correlation_type, moving_correlation_window_size);
    }    
    
    @WebMethod(operationName = "calculateCorrelationTwitterVsFinance")
    public CorrelationXYData calculateCorrelationTwitterVsFinance(@WebParam(name = "query") String query,
            @WebParam(name = "twitter_field") String twitter_field,
            @WebParam(name = "finacial_field") String finacial_field,
            @WebParam(name = "from_date_string") String from_date_string,
            @WebParam(name = "to_date_string") String to_date_string,
            @WebParam(name = "day_delta") int day_delta,
            @WebParam(name = "moving_average_type") String moving_average_type,
            @WebParam(name = "moving_average_window_size") int moving_average_window_size,
            @WebParam(name = "moving_average_alpha") double moving_average_alpha,
            @WebParam(name = "correlation_type") String correlation_type,
            @WebParam(name = "moving_correlation_window_size") int moving_correlation_window_size,
            @WebParam(name = "time_interval") String time_interval)
            throws NamingException, SQLException{
        
        return RealTimeTwitterDataAnalysis.calculateDailyCorrelationTwitterVsFinance(query, twitter_field, finacial_field, from_date_string, to_date_string, day_delta, moving_average_type, moving_average_window_size, moving_average_alpha, correlation_type, moving_correlation_window_size, time_interval);
    }
    
    @WebMethod(operationName = "calculateCorrelationFinanceVsFinance")
    public CorrelationXYData calculateCorrelationFinanceVsFinance(
            @WebParam(name = "company_one_name") String company_one_name,
            @WebParam(name = "company_two_name") String company_two_name,
            @WebParam(name = "company_one_field") String company_one_field,
            @WebParam(name = "company_two_field") String company_two_field,
            @WebParam(name = "from_date_string") String from_date_string,
            @WebParam(name = "to_date_string") String to_date_string,
            @WebParam(name = "interval") String interval,
            @WebParam(name = "moving_average_type") String moving_average_type,
            @WebParam(name = "moving_average_window_size") int moving_average_window_size,
            @WebParam(name = "moving_average_alpha") double moving_average_alpha,
            @WebParam(name = "correlation_type") String correlation_type,
            @WebParam(name = "moving_correlation_window_size") int moving_correlation_window_size)
            throws NamingException, SQLException{
        
        return FinancialDataAnalysis.calculateCorrelationFinanceVsFinance(company_one_name, company_two_name, company_one_field, company_two_field, from_date_string, to_date_string, interval, moving_average_window_size, moving_average_type, moving_average_alpha, correlation_type, moving_correlation_window_size);
    }
    
    @WebMethod(operationName = "getXMLMapForCompany")
    public XmlGraph getXMLMapForCompany(@WebParam(name = "company_name") String company_name,@WebParam(name = "from_date") String from_date, @WebParam(name = "to_date") String to_date)
            throws NamingException, SQLException{
        
        Graph aGraph = DBGraphingOperations.makeGraphFromSingleCompanyHistorical(company_name, from_date, to_date);    
        XmlGraph xmlGrpah = new XmlGraph();
        xmlGrpah.xmlGraphString = GraphMaker.generateGraphXML(aGraph);
        xmlGrpah.primaryNodeString = DBGraphingOperations.getNodeIdFromCompanyName(company_name);
        return xmlGrpah;
    }
    
    @WebMethod(operationName = "getCompleteXMLMap")
    public String getCompleteXMLMap(@WebParam(name = "from_date") String from_date, @WebParam(name = "to_date") String to_date)
            throws NamingException, SQLException{
        
        Graph aGraph = DBGraphingOperations.makeCompleteGraphFromData(from_date, to_date);  
        String graphXml = GraphMaker.generateGraphXML(aGraph);
        return graphXml;
    }

    @WebMethod(operationName = "getNodeIdFromCompanyName")
    public String getXMLMap(@WebParam(name = "company_name") String company_name)
            throws NamingException, SQLException{
        String id = DBGraphingOperations.getNodeIdFromCompanyName(company_name);
        return id;
    }
}
