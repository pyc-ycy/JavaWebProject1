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
    <title>表达式标签</title>
</head>
<body>
<h2>1、&lt;c_remove&gt;</h2>
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
<h2>2、&lt;c:catch&gt;</h2>
<c:catch var="error">
    <jsp:useBean id="stu" class="com.lyq.bean.StudentInfo"/>
    <c:set target="${stu}" property="grade">85</c:set>
</c:catch>
<c:out value="捕获的异常信息为:${error}"/>
</body>
</html>
