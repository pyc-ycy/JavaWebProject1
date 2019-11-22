<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/22
  Time: 上午 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.bean.Email" %>
<html>
<head>
    <title>认证结果</title>
    <style type="text/css">
        body{
            background: #e9e5d2;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<div>
    <%
        String mailAdd = request.getParameter("mailAdd");
        Email email = new Email(mailAdd);
        if(email.isEmail()){
            out.print(mailAdd + "<br>是一个标准的邮箱地址！<br>");
        }else{
            out.print(mailAdd + "<br>不是一个标准的邮箱地址！<br>");
        }
    %>
    <a href="EmailCheck.jsp">返回</a>
</div>
</body>
</html>
