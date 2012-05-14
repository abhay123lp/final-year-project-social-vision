/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main;

import com.data.dataitems.ApiFinanceSearchesItem;
import com.data.dataitems.TopsyProcessedDataItem;
import com.data.operations.DBConnection;
import com.data.operations.DBFinancialOperations;
import com.data.operations.DBPythonScriptOperations;
import com.data.operations.DBTopsyOperations;
import com.data.structures.AdvanceClassifierScriptInputs;
import com.data.structures.BasicClassifierScriptInputs;
import com.data.structures.ClassifierScriptOutputs;
import com.data.structures.CorrelationXYData;
import com.finance.statistics.CorrelationCalculator;
import com.finance.statistics.FinancialDataAnalysis;
import com.finance.statistics.RealTimeTwitterDataAnalysis;
import com.finance.statistics.TopsyDataAnalysis;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;
import javax.naming.NamingException;

/**
 *
 * @author Phil
 */
public class JavaDev {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws NamingException, SQLException, ParseException {
        DBPythonScriptOperations.startNLTKTrainClassifier("NLTKCompanyGrowthRecessionClassifier");
    }
}
