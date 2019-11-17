<%--
  Created by IntelliJ IDEA.
  User: 彭友聪
  Date: 2019/11/17
  Time: 下午 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    try{
        int money = 100;
        int number = 10;
        request.setAttribute("result", money/number);
    } catch (Exception e){
        request.setAttribute("result", "很抱歉，页面产生错误！");
    }
%>
<jsp:forward page="setAttrTest.jsp"></jsp:forward>
</body>
</html>
