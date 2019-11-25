package com.lyq.ServletFilterSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddServlet")
public class AddServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String author = request.getParameter("author");
        String price = request.getParameter("price");
        out.println("<html>");
        out.println("<head><title>图书信息</title></head>");
        out.println("<body>");
        out.print("<h2 style=\"text-align:center;\">图书信息添加成功</h2><hr>");
        out.println("<center>");
        out.println("<p>");
        out.print("图书编号：" + id + "<br>");
        out.print("图书名称：" + name + "<br>");
        out.print("图书作者：" + author + "<br>");
        out.print("图书价格：" + price + "<br>");
        out.println("</p>");
        out.println("</center>");
        out.print("</body>");
        out.println("</html>");
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
