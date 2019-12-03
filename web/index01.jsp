<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/23
  Time: 上午 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>示例2</title>
    <style type="text/css">
        body {
            align-items: center;
            background: #e9e0e7;
        }
        table{
            width:440px;
            height:85px;
            cell-padding:0;
            cell-spacing:0;
            font-size: 16px;
            border-colordark: #666666;
            border-colorlight: #FFFFF;
            border: 1px #FFFFFF;
        }
        button{
            border: black 2px;
            background: darkgray;
            color: black;
        }
    </style>
</head>
<body>
<input type="button" value="上一页" onclick="window.location.href='index.jsp'">
<center>
    <input type="button" value="时间日期" onclick="window.location.href='JavaBeanSet/JavaBeanUse/dateTime.jsp'">
    <br>
    <br>
    <input type="button" value="数组转字符串" onclick="window.location.href='JavaBeanSet/JavaBeanUse/arr.jsp'">
    <br>
    <br>
    <input type="button" value="图书管理系统" onclick="window.location.href='FilterJSPSet/book.jsp'">
    <br>
    <br>
    <input type="button" value="监听器" onclick="window.location.href='ListenerSet/login.jsp'">
    <br>
    <br>
    <input type="button" value="@WebServlet" onclick="window.location.href='Servlet3_0/userLogin.jsp'">
    <br>
    <br>
    <input type="button" value="文件上传" onclick="window.location.href='WJSC.jsp'">
    <br>
    <br>
    <input type="button" value="JDBC连接数据库" onclick="window.location.href='JDBCOption/ConnectTest.jsp'">
    <br>
    <br>
    <input type="button" value="图书信息登记" onclick="window.location.href='JDBCOption/book.jsp'">
    <br>
    <br>
    <input type="button" value="图书信息查询" onclick="window.location.href='JDBCOption/book_list.jsp'">
    <br>
    <br>
    <input type="button" value="图书信息更改" onclick="window.location.href='http://localhost:8080/JavaWebProject1_war_exploded/FindServlet'">
    <br>
    <br>
    <input type="button" value="批处理测试" onclick="window.location.href='JDBCOption/BatchTest.jsp'">
    <%@include file="test.jsp" %>
</center>
</body>
</html>
