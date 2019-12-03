<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/2
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@page import="com.lyq.bean.Book" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>图书信息查询结果页面</title>
    <style type="text/css">
        body {
            background: #d7c7e9;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<table align="center" width="450" border="1" height="180" bordercolor="white" bgcolor="black" cellpadding="1"
       cellspacing="1">
    <tr bgcolor="white">
        <td align="center" colspan="5">
            <h2>所有图书信息</h2>
        </td>
    </tr>
    <tr align="center" bgcolor="#e1ffc1">
        <td><b>ID</b></td>
        <td><b>图书名称</b></td>
        <td><b>价格</b></td>
        <td><b>数量</b></td>
        <td><b>作者</b></td>
    </tr>
    <%
        // 获取图书信息集合
        //List<Book> list = (List<Book>) request.getAttribute("list");
        try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            String url = "jdbc:mysql://localhost:3306/test?serverTimezone=GMT%2B8";
            String username = "root";
            String password = "root19537";
            Connection conn = null;
            Statement stmt =null;
            ResultSet rs = null;
            List<Book> list = new ArrayList<Book>();
            try {
                conn = DriverManager.getConnection(url, username, password);
            } catch (SQLException e) {
                e.printStackTrace();
            }
            if(conn != null){
                try{
                    stmt = conn.createStatement();
                    String sql = "select * from tb_books;";
                    rs = stmt.executeQuery(sql);

                    while (rs.next()) {
                        Book book = new Book();
                        book.setId(rs.getInt("id"));
                        book.setName(rs.getString("name"));
                        book.setPrice(rs.getDouble("price"));
                        book.setBookCount(rs.getInt("bookCount"));
                        book.setAuthor(rs.getString("author"));
                        list.add(book);
                    }
                }catch(SQLException e){
                        e.printStackTrace();
                        out.print("查询失败！");
                    }
            }
        // 判断集合是否有效
        if (list.size() < 1) {
            out.print("没有数据！");
        } else {
            // 遍历图书集合中的数据
            for (Book book : list) {
    %>
    <tr align="center" bgcolor="white">
        <td><%=book.getId()%>
        </td>
        <td><%=book.getName()%>
        </td>
        <td><%=book.getPrice()%>
        </td>
        <td><%=book.getBookCount()%>
        </td>
        <td><%=book.getAuthor()%>
        </td>
    </tr>
    <%
            }
            try {
                rs.close();
                stmt.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }

    }
    %>
    <tr bgcolor="white">
    <td align="center" colspan="3">
        <input type="button" value="添加图书信息" onclick="window.location.href='book.jsp'">
    </td>
        <td align="center" colspan="2">
            <input type="button" value="修改" onclick="window.location.href='http://localhost:8080/JavaWebProject1_war_exploded/FindServlet'">
        </td>
    </tr>
</table>
</body>
</html>
