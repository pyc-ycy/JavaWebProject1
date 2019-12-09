<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/9
  Time: 18:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>C_Remove</title>
</head>
<body>
<ul>
    <li>
        声明一个作用域在 request 范围内的变量 temp，
        <c:set var="temp" value="若道天涯有回路，漫漫黄沙掩枯骨！" scope="request"/>
        其值为：<c:out value="${temp}"/>
    </li>
    <li>
        使用 &lt;c:remove&gt; 移除变量 temp，
        <c:remove var="temp" scope="request"/>
        此时 temp 的值为：<c:out value="${temp}" default="空"/>
    </li>
</ul>
</body>
</html>
