<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/3
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>SQLite数据库连接测试</title>
</head>
<body>
<%
    try {
        Class.forName("org.sqlite.JDBC");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection conn = null;
    Statement stmt =null;
    ResultSet rs = null;
    try{
        conn = DriverManager.getConnection("jdbc:sqlite:sample.db");
    }catch (SQLException e){
        e.printStackTrace();
        out.println("数据库连接异常！");
    }
    if(conn != null){
        out.println("数据库连接成功");
        try {
            stmt = conn.createStatement();
            String sql = "select * from person where id=1";
            rs = stmt.executeQuery(sql);
            out.println(rs.getInt("id"));
            out.println(rs.getString("name"));
            rs.close();
            stmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    else{
        out.print("数据库连接失败");
    }
%>
</body>
</html>
