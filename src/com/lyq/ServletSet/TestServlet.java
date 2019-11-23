//@Software: IntelliJ IDEA
// @Project:JavaWebProject1
//@File:TestServlet.java
// @User:彭友聪
//@Date:2019/11/23
// Author:御承扬
//E-mail:2923616405@qq.com


package com.lyq.ServletSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TestServlet extends HttpServlet{
    //初始化
    @Override
    public void init() throws ServletException {
        super.init();
    }
    // 处理 Http Get 请求
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{}
    // 处理 Http Post 请求
    public void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{}

    // 处理Http Put 请求
    public void doPut(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{

    }
    // 处理 Http Delete 请求
    public void doDelete(HttpServletRequest request, HttpServletResponse response)
        throws ServletException,IOException{

    }
    // 销毁方法

    @Override
    public void destroy() {
        super.destroy();
    }
}
