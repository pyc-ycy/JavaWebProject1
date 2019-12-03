<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/3
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.bean.Book"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>修改图书信息</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-items: center;
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        function check(form){
            with(form){
                if(bookCount.value === ""){
                    alert("图书数量不能为空");
                    return false;
                }
                return true;
            }
        }
    </script>
</head>
<body>
<table align="center" width="450" border="1" height="180" bordercolor="white" cellpadding="1"
       cellspacing="1">
    <tr bgcolor="white">
        <td align="center" colspan="6">
            <h2>所有图书信息</h2>
        </td>
    </tr>
    <tr align="center" bgcolor="#e1ffc1">
        <td><b>ID</b></td>
        <td><b>图书名称</b></td>
        <td><b>价格</b></td>
        <td><b>数量</b></td>
        <td><b>作者</b></td>
        <td><b>修改数量</b></td>
    </tr>
    <%
        List<Book> list = (List<Book>) request.getAttribute("list");
        if(list == null ||list.size() < 1){
            out.print("没有数据");
        }else{
            for(Book book:list){


    %>
        <tr align="center">
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
            <td>
                <form action="${pageContext.request.contextPath}/UpdateServlet" method="post" onsubmit="return check(this)">
                    <input type="hidden" name="id" value="<%=book.getId()%>">
                    <label>
                        <input type="text" name="bookCount" size="3">
                    </label>
                    <input type="submit" value="修改">
                </form>
            </td>
        </tr>
    <%
            }
        }
    %>
    <tr bgcolor="white">
        <td align="center" colspan="3">
            <input type="button" value="添加图书信息" onclick="window.location.href='http://localhost:8080/JavaWebProject1_war_exploded/JDBCOption/book.jsp'">
        </td>
        <td align="center" colspan="3">
            <input type="button" value="图书信息查询" onclick="window.location.href='http://localhost:8080/JavaWebProject1_war_exploded/JDBCOption/book_list.jsp'">
        </td>
    </tr>
</table>
</body>
</html>
