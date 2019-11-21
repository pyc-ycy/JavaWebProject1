<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/21
  Time: 下午 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isErrorPage="true" %>
<html>
<head>
    <title>错误处理页面</title>
    <style type="text/css">
        body{
            background: #d9d2e9;
            text-align: center;
            margin: fill;
        }
    </style>
</head>
<body>
<p>
    错误提示为：<%=exception.getMessage()%>
</p>
</body>
</html>
