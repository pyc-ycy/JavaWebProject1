<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/8
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>&lt;c:set&gt;</title>
    <style type="text/css">
        body{
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<ul>
    <li>定义 request 范围内的变量 agentname</li>
    <br>
    <c:set var="agentname" value="吴雅男" scope="request"/>
    <c:out value="agentname的值:"/>${requestScope.agentname}
</ul>
</body>
</html>
