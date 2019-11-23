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
    <%@include file="test.jsp" %>
</center>
</body>
</html>
