<%--
  Created by IntelliJ IDEA.
  User: 彭友聪
  Date: 2019/11/15
  Time: 下午 7:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8"  pageEncoding="utf-8" language="java" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <title>一个简单的 JSP 页面——显示系统时间</title>
    <style type="text/css">
      body{
        align-items: center;
        background: #e9e0e7;
      }
    </style>
  </head>
  <body>
  <%
    Date date = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String today = df.format(date);
  %>
  <center>
    <h4>当前时间</h4>
    <%=today%>
    <%@include file="test.jsp"%>
  </center>
  </body>
</html>
