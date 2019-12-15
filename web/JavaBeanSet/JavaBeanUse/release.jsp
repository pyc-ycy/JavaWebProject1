<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/23
  Time: 上午 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:useBean id="news" class="com.lyq.bean.News"></jsp:useBean>
<jsp:useBean id="encoding" class="com.lyq.bean.CharactorEncoding"></jsp:useBean>
<jsp:setProperty name="news" property="*"></jsp:setProperty>
<div align="center">
    <div id="container">
        <div id="title">
            <%=encoding.toString(news.getTitle())%>
        </div>
        <hr>
        <div id="content">
            <%=encoding.toString(news.getContent())%>
        </div>
    </div>
</div>
</body>
</html>
