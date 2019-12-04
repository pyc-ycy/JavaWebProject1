//IntelliJ IDEA
//JavaWebProject1
//ProductDao
//2019/12/4
// Author:御承扬
//E-mail:2923616405@qq.com

package com.lyq.bean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
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

    public List<Product> find(int page){
        List<Product> list = new ArrayList<>();
        Connection conn = getConnection();
        String sql = "select * from tb_product order by id desc limit ?,?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, (page-1)*Product.PAGE_SIZE);
            ps.setInt(2, Product.PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Product p = new Product();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(rs.getDouble("price"));
                p.setNum(rs.getInt("num"));
                p.setUnit(rs.getString("unit"));
                list.add(p);
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    public int findCount(){
        int count = 0;
        Connection conn = getConnection();
        String sql = "select count(*) from tb_product";
        try{
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next()){
                count = rs.getInt(1);
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return count;
    }
}
