//IntelliJ IDEA
//JavaWebProject1
//FindBook
//2019/12/3
// Author:御承扬
//E-mail:2923616405@qq.com

package com.lyq.bean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FindBook {
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

    public List<Book> findAll(){
        List<Book> list = new ArrayList<>();
        Connection conn = getConnection();
        try{
            CallableStatement cs = conn.prepareCall("{call findAllBook()}");
            ResultSet rs = cs.executeQuery();
            while (rs.next()){
                Book book = new Book();
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setPrice(rs.getDouble("price"));
                book.setBookCount(rs.getInt("bookCount"));
                book.setAuthor(rs.getString("author"));
                list.add(book);
            }
            rs.close();
            cs.close();
            conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }
}
