//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:WordServlet.java
// @User:彭友聪
//@Date:2019/11/24
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.ServletSet;

import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;

public class WordServlet implements Servlet {
    @Override
    public void destroy() {

    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter pwt = response.getWriter();
        pwt.println("<html>");
        pwt.println("<head><title>Test</title></head>");
        pwt.println("<body>");
        pwt.println("<center>");
        pwt.println("御承扬的博客");
        pwt.println("</center>");
        pwt.println("</body>");
        pwt.println("</html>");
        pwt.flush();
        pwt.close();
    }
}
