<%--
  Created by IntelliJ IDEA.
  User: 彭友聪
  Date: 2019/11/17
  Time: 下午 5:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结果页</title>
</head>
<body>
<%
    Object message = request.getAttribute("result");
%>
<h2><%=message%></h2>
</body>
</html>
