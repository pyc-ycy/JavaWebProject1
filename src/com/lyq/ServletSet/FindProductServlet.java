//@Software: IntelliJ IDEA
// @Project: JavaWebProject1
//@File:${NAME}
//@Date:2019/12/4
// Author:御承扬
//E-mail:2923616405@qq.com
package com.lyq.ServletSet;

import com.lyq.bean.Product;
import com.lyq.bean.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(name = "FindProductServlet", urlPatterns = "/FindProductServlet")
public class FindProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currPage = 1;
        if(request.getParameter("page") != null){
            currPage = Integer.parseInt(request.getParameter("page"));
        }
        ProductDao dao = new ProductDao();
        List<Product> list = dao.find(currPage);
        request.setAttribute("list", list);
        int pages;
        int count = dao.findCount();
        if(count % Product.PAGE_SIZE == 0){
            pages = count/Product.PAGE_SIZE;
        }else{
            pages = count/Product.PAGE_SIZE + 1;
        }
        StringBuffer sb = new StringBuffer();
        for(int i=1; i<=pages; i++){
            if(i == currPage){
                sb.append("『").append(i).append("』");
            }else{
                sb.append("<a href=FindProductServlet?page=").append(i).append(">").append(i).append("</a>");
            }
            sb.append(" ");
        }
        request.setAttribute("bar", sb.toString());
        request.getRequestDispatcher("/JDBCOption/Product_list.jsp").forward(request, response);
    }
}
