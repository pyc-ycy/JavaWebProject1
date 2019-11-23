<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/23
  Time: 上午 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>时间日期</title>
    <style type="text/css">
        #clock{
            width: 420px;
            height: 80px;
            background: #E0E0E0;
            font-size: 25px;
            font-weight: bold;
            border: solid 5px orange;
            padding: 20px;
        }
        #time{
            font-family: 华文行楷, serif;
        }
        #week{
            padding: 15px;
            color: #0080FF;
        }
        body{
            background: #decde9;
            align-items: center;
            text-align: center;
        }
    </style>
    <meta http-equiv="Referer" content="1">
</head>
<body>
<jsp:useBean id="date" class="com.lyq.bean.DateTimeBean" scope="application"></jsp:useBean>
<div align="center">
    <div id="clock">
        <div id="time">
            <jsp:getProperty name="date" property="dateTime"/>
        </div>
        <div id="week">
            <jsp:getProperty name="date" property="week"/>
        </div>
    </div>
</div>
</body>
</html>
