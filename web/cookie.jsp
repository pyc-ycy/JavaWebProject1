<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/17
  Time: 下午 7:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.net.URLDecoder" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<html>
<head>
    <title>通过 cookie 保存用户登录信息</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    String user = "";
    String today ="";
    String time = "";
    String message = "";
    if(cookies != null){
        try{
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("testCookie")) {
                    user = URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8);
                }
                if(cookie.getName().equals("testCookie1")){
                    today = URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8);
                }
                if(cookie.getName().equals("testCookie2")){
                    time = URLDecoder.decode(cookie.getValue(), StandardCharsets.UTF_8);
                }
            }
        } catch (Exception e){
            message = e.getMessage();
        }
    }
    if("".equals(user)&&"".equals(today)){
%>
    游客您好，欢迎初次光临！
<form action="cookieDeal.jsp" method="post">
    <label for="user">请输入姓名：</label><input type="text" name="user" id="user" value="">
    <input type="submit" value="确定">
</form>
<%
    }else{

%>
    欢迎[<b><%=user%></b>]再次光临<br>
    注册时间是：<%=today%>, <%=time%>
    <%=message%>
<%
    }
%>
</body>
</html>
