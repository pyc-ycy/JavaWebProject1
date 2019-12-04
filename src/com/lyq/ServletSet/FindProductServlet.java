package com.lyq.ServletSet;//@Software: IntelliJ IDEA
// @Project: JavaWebProject1
//@File:${NAME}
//@Date:2019/12/4
// Author:御承扬
//E-mail:2923616405@qq.com

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FindProductServlet", urlPatterns = "/FindProductServlet")
public class FindProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
