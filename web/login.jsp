<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/17
  Time: 下午 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <style type="text/css">
        body{
            background: #d0d2e9;
            align-items: center;
            text-align: center;
            top: 200px;
            margin: 400px;
        }
    </style>
</head>
<body>
<form name="form1" method="post" action="">
    <label for="name">用户名：</label><input name="name" type="text" id="name" style="width: 120px;"><br>
    <label for="pwd">密&nbsp;&nbsp;码：</label><input name="pwd" type="password" id="pwd" style="width: 120px;"><br>
    <br>
    <input type="submit" name="Submit" value="提交">
</form>
</body>
</html>
