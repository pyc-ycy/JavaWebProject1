<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/18
  Time: 下午 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>根据地区显示语言</title>
    <style type="text/css">
        body{
            text-align: center;
            background: #c6cde9;
            margin: auto;
        }
    </style>
</head>
<body>
<%
    java.util.Locale locale = request.getLocale();
    String str="";
    if(locale.equals(Locale.US)){
        str = "Hello, welcome to access our company's web!";
    }
    if(locale.equals(Locale.CHINA)){
        str = "您好， 欢迎访问我们的公司网站！";
    }
%>
<h3><%=str%></h3>
</body>
</html>
