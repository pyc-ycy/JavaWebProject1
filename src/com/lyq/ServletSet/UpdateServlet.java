
//@Software: IntelliJ IDEA
// @Project: JavaWebProject1
//@File:${NAME}
//@Date:2019/12/3
// Author:御承扬
//E-mail:2923616405@qq.com
package com.lyq.ServletSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "UpdateServlet", urlPatterns = "/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int bookCount = Integer.parseInt(request.getParameter("bookCount"));
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3306/test?serverTimezone=GMT%2B8";
        String username = "root";
        String password = "root19537";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(conn != null){
            String sql = "update tb_books set bookCount=? where id=?";
            try {
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(2,id);
                ps.setInt(1, bookCount);
                ps.executeUpdate();
                ps.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("FindServlet");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
