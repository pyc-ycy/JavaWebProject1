<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/9
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>URL 相关标签</title>
    <style type="text/css">
        body{
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<c:set var="testStr" value="我在测试&lt;c:import&gt;功能"/>
<c:import url="a_Str.jsp" charEncoding="UTF-8">
    <c:param name="astr" value="${testStr}"/>
</c:import>
<c:url var="path" value="../login.jsp" scope="page">
    <c:param name="name" value="御承扬"/>
    <c:param name="pwd" value="123456"/>
</c:url>
<a href="${pageScope.path}">登录页面</a>
</body>
</html>
