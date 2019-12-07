<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/7
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式测试</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<%
    String[] arr = {"秦国","楚国","韩国","齐国"};
    request.setAttribute("book", arr);
%>
<%
    String[] arr1 = (String[])request.getAttribute("book");
    for(int i=0;i<arr1.length;i++){
        request.setAttribute("requestl", i);
%>
${requestl}:${book[requestl]}<br>
<%}%>
</body>
</html>
