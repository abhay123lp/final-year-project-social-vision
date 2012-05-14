package com.data.operations;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.sql.DataSource;
import java.sql.Connection;
/**
 *
 * @author Phil
 */
public class DBConnection {
	public Connection conn = null;
    public Context ctx = null; 
    public DataSource ds = null;
    public Statement stmt = null;
    public ResultSet rs = null;

    public DBConnection() throws NamingException, SQLException {
        initialiseConnection();
    }
            
    public void initialiseConnection() throws NamingException, SQLException{   
        conn = DriverManager
				.getConnection("jdbc:mysql://localhost/alldata?"
						+ "user=root&password=5mmscppcsmm5");
        stmt = conn.createStatement();   
    } 
    
    public ResultSet executeGetResultSetSQL(String SQL) throws NamingException, SQLException{
        stmt.executeQuery(SQL);
        rs = stmt.getResultSet();
        return rs;
    } 
    
    public void executeUpdateSQL(String SQL) throws NamingException, SQLException{
        stmt.executeUpdate(SQL);
    } 
    
    public void closeConnection() throws SQLException{
        try{
                if(rs != null)
                {
                    rs.close();
                    rs = null;
                }

                if(stmt != null)
                {
                    stmt.close();
                    stmt = null;
                }

                if(conn != null)
                {
                    conn.close();
                    conn = null;
                }     
            }  
        finally {
                /*
                * close any jdbc instances here that weren't
                * explicitly closed during normal code path, so
                * that we don't 'leak' resources...
                */

                if (rs != null) {
                    try {
                        rs.close();
                    } catch (SQLException sqlex) {
                        // ignore -- as we can't do anything about it here
                    }

                    stmt = null;
                }

                if (stmt != null) {
                    try {
                        stmt.close();
                    } catch (SQLException sqlex) {
                        // ignore -- as we can't do anything about it here
                    }

                    stmt = null;
                }

                if (conn != null) {
                    try {
                        conn.close();
                    } catch (SQLException sqlex) {
                        // ignore -- as we can't do anything about it here
                    }

                    conn = null;
                }
            }   
    }
}