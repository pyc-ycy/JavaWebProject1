package com.lyq.ServletSet;//@Software: IntelliJ IDEA
// @Project: JavaWebProject1
//@File:${NAME}
//@Date:2019/11/29
// Author:御承扬
//E-mail:2923616405@qq.com

import org.apache.catalina.core.ApplicationPart;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UploadServlet", urlPatterns = "/UploadServlet")
@MultipartConfig(location = "D:\\users")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID=1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String path = this.getServletContext().getRealPath("/");
        Part p = request.getPart("file1");
        if(p.getContentType().contains("image")){
            ApplicationPart ap = (ApplicationPart) p;
            //String fname1 = ap.getSubmittedFileName();
            //int path_idx = fname1.lastIndexOf("\\");
            //String fname2 = fname1.substring(path_idx);
            //String fname2 = "IMG_20180228_155857_1.jpg";
            String fname2 = request.getParameter("rename");
            p.write(path + "/image/"+fname2+".jpg");
//            p.write(path+"/image");
            out.write("文件上传成功");
        }else{
            out.write("请选择图片！！！！");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
