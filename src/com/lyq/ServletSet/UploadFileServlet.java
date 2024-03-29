//@Software: IntelliJ IDEA
// @Project: JavaWebProject1
//@File:${NAME}
//@Date:2019/12/15
// Author:御承扬
//E-mail:2923616405@qq.com
package com.lyq.ServletSet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "UploadFileServlet", urlPatterns = "/UploadFileServlet")
public class UploadFileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("uploadFile".equals(action)) {
            this.uploadFile(request, response); // 上传文件
        }
    }

    public void uploadFile(HttpServletRequest request,
                           HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        session.setAttribute("progressBar", 0); // 定义指定上传进度的Session变量
        String error = "";
        int maxSize = 50 * 1024 * 1024; // 单个上传文件大小的上限
        DiskFileItemFactory factory = new DiskFileItemFactory(); // 基于磁盘文件项目创建一个工厂对象
        ServletFileUpload upload = new ServletFileUpload(factory); // 创建一个新的文件上传对象
        try {
            List<FileItem> items = upload.parseRequest(request);// 解析上传请求
            Iterator itr = items.iterator();// 枚举方法
            while (itr.hasNext()) {
                FileItem item = (FileItem) itr.next(); // 获取FileItem对象
                if (!item.isFormField()) {// 判断是否为文件域
                    if (item.getName() != null && !item.getName().equals("")) {// 判断是否选择了文件
                        long upFileSize = item.getSize(); // 上传文件的大小
                        String fileName = item.getName(); // 获取文件名
                        // System.out.println("上传文件的大小:" + item.getSize());
                        if (upFileSize > maxSize) {
                            error = "您上传的文件太大，请选择不超过50M的文件";
                            break;
                        }
                        // 此时文件暂存在服务器的内存中
                        File tempFile = new File(fileName);// 构造临时对象
                        // String savePath=tempFile.getName();
                        // //返回上传文件在客户端的完整路径名称
                        // request.setAttribute("filename", savePath);
                        File file = new File(request.getRealPath("/image"),
                                tempFile.getName()); // 获取根目录对应的真实物理路径

                        InputStream is = item.getInputStream();
                        int buffer = 1024; // 定义缓冲区的大小
                        int length = 0;
                        byte[] b = new byte[buffer];
                        double percent = 0;
                        FileOutputStream fos = new FileOutputStream(file);
                        while ((length = is.read(b)) != -1) {
                            percent += length / (double) upFileSize * 100D; // 计算上传文件的百分比
                            fos.write(b, 0, length); // 向文件输出流写读取的数据
                            session.setAttribute("progressBar", Math
                                    .round(percent)); // 将上传百分比保存到Session中
                        }
                        fos.close();
                        Thread.sleep(1000); // 线程休眠1秒
                    } else {
                        error = "没有选择上传文件！";
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            error = "上传文件出现错误：" + e.getMessage();
        }
        if (!"".equals(error)) {
            request.setAttribute("error", error);
            request.getRequestDispatcher("AjaxJSP/error.jsp")
                    .forward(request, response);
        } else {
            request.setAttribute("result", "文件上传成功！");
            request.getRequestDispatcher("AjaxJSP/upFile_deal.jsp").forward(request,
                    response);
        }
    }
}
