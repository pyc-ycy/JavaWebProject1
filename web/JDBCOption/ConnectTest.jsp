<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/30
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<html>
<head>
    <title>JDBC 连接 MySQL 数据库</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            text-align: center;
        }
    </style>
</head>
<body>
<%
    String msg = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/test?serverTimezone=GMT%2B8";
        String username = "root";
        String password = "root19537";
        try {
            Connection conn = DriverManager.getConnection(url,username,password);
            if(conn != null){
                msg = "数据库连接成功";
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            msg = "数据库连接失败！！！";
        }
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
        msg = "找不到合适数据库驱动！！！";
    }
%>
<%=msg%>
</body>
</html>
