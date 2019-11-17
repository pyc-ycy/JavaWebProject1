<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/17
  Time: 下午 4:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String id = request.getParameter("id");
    String user = request.getParameter("user");
    String pwd = request.getParameter("pwd");
%>
<html>
<head>
    <title>获取传递的参数值</title>
</head>
<body>
<p>
    id 的参数值：<%=id%><br>
    user 的参数值：<%=user%><br>
    pwd 的参数值：<%=pwd%>
</p>
</body>
</html>
