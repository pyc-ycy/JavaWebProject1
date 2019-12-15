//IntelliJ IDEA
//JavaWebProject1
//ConnDB
//2019/12/15
// Author:御承扬
//E-mail:2923616405@qq.com

package com.lyq.DB;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class ConnDB {
    public Connection conn = null;
    public Statement stmt = null;
    public ResultSet rs = null;
    private static Properties prop = new Properties();
    private static String dbClassName = "com.mysql.jdbc.Driver";
    private static String dbURL = "jdbc:mysql://localhost:3306/test?serverTimezone=GMT%2B8&user=root&password=root19537&useUnicode=true";
    public ConnDB(){
        try{
            String propFileName = "ConnDB.properties";
            InputStream in = getClass().getResourceAsStream(propFileName);
            prop.load(in);
            dbClassName = prop.getProperty("DB_CLASS_NAME");
            dbURL = prop.getProperty("URL",dbURL);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static Connection getConnection(){
        Connection conn = null;
        try{
            Class.forName(dbClassName).newInstance();
            conn = DriverManager.getConnection(dbURL);
        }catch (Exception e){
            e.printStackTrace();
        }
        if(conn == null){
            System.err.println("Warning:DBConnectionManager.getConnection() get connection of database fail.\r\n\r\n connection type:"
            + dbClassName
            + "\r\nconnect path:"
            + dbURL);
        }
        return conn;
    }
    public ResultSet Query(String sql){
        try{
            conn = getConnection();
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            rs = stmt.executeQuery(sql);
        }catch (SQLException e){
            System.err.println(e.getMessage());
        }
        return rs;
    }
    public int Update(String sql){
        int result =0;
        try{
            conn = getConnection();
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            result = stmt.executeUpdate(sql);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return result;
    }
    public void closeConn(){
        try{
            if(rs != null){
                rs.close();
            }
            if(stmt != null){
                stmt.close();
            }
            if(conn != null){
                conn.close();
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}

