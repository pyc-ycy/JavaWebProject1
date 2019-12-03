//IntelliJ IDEA
//JavaWebProject1
//Batch
//2019/12/3
// Author:御承扬
//E-mail:2923616405@qq.com

package com.lyq.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class Batch {
    public Connection getConnection(){
        Connection conn;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/test?serverTimezone=GMT%2B8";
            String username = "root";
            String password = "root19537";
            try{
                conn = DriverManager.getConnection(url, username, password);
                if(conn != null)
                {
                    return conn;
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        }
        return null;
    }

    public int saveBatch(){
        int row =0;
        Connection conn = getConnection();
        try{
            String sql = "insert into tb_students(id,name,sex,age) values(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            for(int i=0; i<10; i++){
                ps.setInt(1,i+1);
                ps.setString(2, "学生"+i);
                ps.setBoolean(3, i % 2 == 0);
                ps.setInt(4, (((i+1)%10)*2+10));
                ps.addBatch();
            }
            int[] rows = ps.executeBatch();
            row = rows.length;
            ps.close();
            conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return row;
    }
}
