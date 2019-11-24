package com.lyq.ServletSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "FirstServletNew")
public class FirstServletNew extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>Servlet 示例</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("<p style=\" text-align:center;\">御承扬的博客</p>");
        out.println("<center>");
        out.println(this.getClass());
        out.println("</center>");
        out.println("</BODY>");
        out.println("</HTML>");
        out.flush();
        out.close();
    }
}
