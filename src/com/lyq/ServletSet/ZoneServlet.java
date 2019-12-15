//@Software: IntelliJ IDEA
// @Project: JavaWebProject1
//@File:${NAME}
//@Date:2019/12/15
// Author:御承扬
//E-mail:2923616405@qq.com
package com.lyq.ServletSet;

import com.lyq.bean.CityMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.Set;

@WebServlet(name = "ZoneServlet", urlPatterns = "/ZoneServlet")
public class ZoneServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("getProvince".equals(action)){
            this.getProvince(request,response);
        }else if("getCity".equals(action)){
            this.getCity(request,response);
        }
    }
    public void getProvince(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        response.setCharacterEncoding("UTF-8");
        StringBuilder result = new StringBuilder();
        Map<String, String[]> map = CityMap.model;
        Set<String> set = map.keySet();
        for (String s : set) {
            result.append(s).append(",");
        }
        result = new StringBuilder(result.substring(0, result.length() - 1));
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(result);
        out.flush();
        out.close();
    }
    public void getCity(HttpServletRequest request,
                        HttpServletResponse response) throws ServletException, IOException{
        response.setCharacterEncoding("UTF-8");
        StringBuilder result= new StringBuilder();
        String selProvince=request.getParameter("parProvince");
        String province = URLDecoder.decode(selProvince, StandardCharsets.UTF_8);
        Map<String,String[]> map= CityMap.model;
        String[]arrCity= map.get(province);
        for (String s : arrCity) {
            result.append(s).append(",");  // Stitching strings
        }
        result = new StringBuilder(result.substring(0, result.length() - 1));
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.print(result);
        out.flush();
        out.close();
    }
}
