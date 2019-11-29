package com.lyq.Servlet3_0CodeSet;
//@Software: IntelliJ IDEA
// @Project: JavaWebProject1
//@File:${NAME}
//@Date:2019/11/28
// Author:御承扬
//E-mail:2923616405@qq.com

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "SaveServlet", urlPatterns = "/SaveServlet")
public class SaveServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置request与response的编码
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        Connection con;
        Statement sql;
        // 获取表单中属性值
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String sex = request.getParameter("sex");
        String question = request.getParameter("question");
        String answer = request.getParameter("answer");
        String email = request.getParameter("email");
        PrintWriter out = response.getWriter();
        // 输出注册结果信息
        out.println("<html>");
        out.println("<head><title>注册结果</title></head>");
        out.println("<body>");
        out.print("<h1 aling='center'>");
        out.print(username );
        out.println("<br>");
        out.println(sex);
        out.println("<br>");
        out.println(email);
        out.println("<br>");
        try{
            try{
                Class.forName("com.mysql.jdbc.Driver");
            }catch (ClassNotFoundException e){
                out.println("<br>"+e.getMessage());
            }
            con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test?serverTimezone=GMT%2B8", "root", "root19537");
            if(con!=null)
            {
                out.println("数据库连接成功");
                sql = con.createStatement();
                String str = "insert into tb_user value('" + username + "','" + password + "','"
                        + sex + "','" + question + "','" + answer + "','" + email + "')";
                sql.executeUpdate(str);
                sql.close();
                con.close();
            }
            if(con == null)
            {
                out.println("数据库连接失败");
            }

        } catch(SQLException e){
            out.println(e.getMessage());
            out.println("<br>数据库连接失败！");
        }
        out.println("注册成功");
        out.print("</h1>");
        out.println("</body>");
        out.println("</html>");
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
