<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/3
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.bean.Book" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>调用存储过程</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<jsp:useBean id="findBook" class="com.lyq.bean.FindBook"></jsp:useBean>
<table align="center" width="450" border="1">
    <tr>
        <td align="center" colspan="5">
            <h2>所有图书信息</h2>
        </td>
    </tr>
    <<tr align="center" bgcolor="#e1ffc1">
        <td><b>ID</b></td>
        <td><b>图书名称</b></td>
        <td><b>价格</b></td>
        <td><b>数量</b></td>
        <td><b>作者</b></td>
    </tr>
    <%
        List<Book> list = findBook.findAll();
        if(list == null || list.size()<1){
            out.print("没有数据！！！！");
        }else{
            for(Book book:list){
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
        }
    %>
</table>
</body>
</html>
