<%--
  Created by IntelliJ IDEA.
  User: 彭友聪
  Date: 2019/11/17
  Time: 下午 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>中转页面</title>
</head>
<body>
<jsp:forward page="login.jsp">
    <jsp:param name="御承扬" value="123456"/>
</jsp:forward>
</body>
</html>
