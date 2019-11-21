<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/21
  Time: 下午 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  errorPage="eroorDeal.jsp" %>
<html>
<head>
    <title>错误页面</title>
    <style type="text/css">
        body{
            background: #d9d2e9;
            text-align: center;
            margin: fill;
        }
    </style>
</head>
<body>
<%
    request.setAttribute("price","12.5元");
    float price = Float.parseFloat(request.getAttribute("price").toString());
%>
</body>
</html>
