<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/17
  Time: 下午 7:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.net.URLEncoder" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
    <title>写入 cookie</title>
</head>
<body>
<%
    String message="";
    Date date = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat df1 = new SimpleDateFormat("HH:mm:ss");
    String today = df.format(date);
    String time = df1.format(date);
    try{
        request.setCharacterEncoding("utf-8");
        String user = URLEncoder.encode(request.getParameter("user"), StandardCharsets.UTF_8);
        //String split = URLEncoder.encode("L", StandardCharsets.UTF_8);
        String str = URLEncoder.encode(today, StandardCharsets.UTF_8);
        Cookie cookie = new Cookie("testCookie", user);
        Cookie cookie1 = new Cookie("testCookie1", today);
        Cookie cookie2 = new Cookie("testCookie2", time);
        cookie.setMaxAge(60*60*24*2);   //设置cookie有效期为两天
        cookie1.setMaxAge(60*60*24*2);
        cookie2.setMaxAge(60*60*24*2);
        response.addCookie(cookie);
        response.addCookie(cookie1);
        response.addCookie(cookie2);
    } catch (Exception e){
        message = e.getMessage();
    }
%>
<script type="text/javascript">
    window.location.href="cookie.jsp";
    window.alert(<%=message%>);
</script>
<p><%=message%></p>
</body>
</html>
