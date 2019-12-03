//@Software: IntelliJ IDEA
// @Project: JavaWebProject1
//@File:${NAME}
//@Date:2019/12/3
// Author:御承扬
//E-mail:2923616405@qq.com
package com.lyq.ServletSet;
import com.lyq.bean.Book;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "FindServlet", urlPatterns = "/FindServlet")
public class FindServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String url = "jdbc:mysql://localhost:3306/test?serverTimezone=GMT%2B8";
        String username = "root";
        String password = "root19537";
        Connection conn = null;
        Statement stmt =null;
        ResultSet rs = null;
        List<Book> list = new ArrayList<>();
        try {
            conn = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if(conn != null){
            try{
                stmt = conn.createStatement();
                String sql = "select * from tb_books;";
                rs = stmt.executeQuery(sql);

                while (rs.next()) {
                    Book book = new Book();
                    book.setId(rs.getInt("id"));
                    book.setName(rs.getString("name"));
                    book.setPrice(rs.getDouble("price"));
                    book.setBookCount(rs.getInt("bookCount"));
                    book.setAuthor(rs.getString("author"));
                    list.add(book);
                }
                request.setAttribute("list", list);
                rs.close();
                stmt.close();
                conn.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
        }
        request.getRequestDispatcher("/JDBCOption/bookUpdate.jsp").forward(request, response);
    }
}
