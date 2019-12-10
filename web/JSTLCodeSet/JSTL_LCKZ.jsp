<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/10
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>流程控制</title>
    <style type="text/css">
        body{
            align-items: center;
        }
    </style>
</head>
<body>
<h2>1、&lt;c:if&gt;</h2>
<c:if var="key" test="${empty param.agent}">
    <form name="form" method="post" action="">
        <label for="agent">姓名：</label><input type="text" name="agent" id="agent">
        <br>
        <br>
        <input type="submit" name="Submit" value="确认">
    </form>
</c:if>
<c:if test="${!key}">
    <b>${param.agent}</b>欢迎！
</c:if>
</body>
</html>
