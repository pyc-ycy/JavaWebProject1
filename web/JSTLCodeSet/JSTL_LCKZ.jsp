<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/10
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Random" %>
<html>
<head>
    <title>流程控制</title>
    <style type="text/css">
        body{
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<h2>1、&lt;c:if&gt;</h2>
<c:if var="key" test="${empty param.agent}">
    <form name="form" method="post" action="">
        <label for="agent">姓名：</label><input type="text" name="agent" id="agent">
        <br>
        <br>
        <input type="submit" name="Submit" value="确认">
    </form>
</c:if>
<c:if test="${!key}">
    <b>${param.agent}</b>欢迎！
</c:if>
<h2>2、&lt;c:choose&gt;</h2>
<c:choose>
    <c:when test="${empty param.str}">
        <form name="form1" method="post" action="">
            <label for="str">搜索条件：</label><input type="text" name="str" id="str">
            &nbsp;&nbsp;
            <input type="submit" value="搜索">
        </form>
    </c:when>
    <c:otherwise>
        ${param.str} 所得的搜索结果：
    </c:otherwise>
</c:choose>
<h2>3、&lt;c:when&gt;</h2>
<c:set var="hour">
    <%=new java.util.Date().getHours()%>
</c:set>
<c:set var="second">
    <%=new java.util.Date().getMinutes()%>
</c:set>
<c:choose>
    <c:when test="${hour>1&&hour<6}">早上好！</c:when>
    <c:when test="${hour>6&&hour<11}">上午好！</c:when>
    <c:when test="${hour>11&&hour<17}">下午好！</c:when>
    <c:when test="${hour>17&&hour<24}">晚上好！</c:when>
</c:choose>
现在的时间是：${hour}:${second}
<h2>4、&lt;c:otherwise&gt;</h2>
<%
    Random rmd = new Random();
%>
<c:set var="luck">
    <%=rmd.nextInt(10)%>
</c:set>
<c:choose>
    <c:when test="${luck==6}">恭喜！荣获一等奖！</c:when>
    <c:when test="${luck==7}">恭喜！荣获二等奖！</c:when>
    <c:when test="${luck==8}">恭喜！荣获三等奖！</c:when>
    <c:when test="${luck==9}">恭喜！荣获四等奖！</c:when>
    <c:otherwise>谢谢参与！！下次一定中奖！</c:otherwise>
</c:choose>
</body>
</html>
