<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/1
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.PreparedStatement" %>
<html>
<head>
    <title>添加结果</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-content: center;
            text-align: center;
        }
    </style>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="book" class="com.lyq.bean.Book"></jsp:useBean>
<jsp:setProperty name="book" property="*"/>
<%
    Connection conn =null;
    try{
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            out.print("驱动器加载失败");
        }
        String url = "jdbc:mysql://localhost:3306/test?serverTimezone=GMT%2B8";
        String username = "root";
        String password = "root19537";
        try{
            conn = DriverManager.getConnection(url,username,password);
        }catch (SQLException e){
            out.println(e.getMessage());
            out.println("数据库连接失败");
        }
        if(conn != null){
            String sql = "insert into tb_books(name,price,bookCount,author)values(?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,book.getName());
            ps.setDouble(2,book.getPrice());
            ps.setInt(3,book.getBookCount());
            ps.setString(4,book.getAuthor());
            int row = ps.executeUpdate();
            if(row>0){
                out.println("成功添加了" + row + "条数据！");
            }
        }
    }catch (Exception e){
        e.printStackTrace();
        out.print("图书信息添加失败！");
    }
%>
<br>
<a href="book.jsp">返回图书信息添加页面</a>
<a href="book_list.jsp">去到查询页面</a>
</body>
</html>
