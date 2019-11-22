<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/22
  Time: 下午 4:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <style type="text/css">
        body{
            background: #d1d0e9;
            align-items: center;
        }
    </style>
</head>
<body>
<form action="reg.jsp" method="post">
    <table align="center" width="400" height="200" border="1">
        <tr>
            <td width="center" colspan="2" height="40">
                <b>添加用户信息</b>
            </td>
        </tr>
        <tr>
            <td align="right">姓   名：</td>
            <td>
                <label>
                    <input type="text" name="name"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">年  龄：</td>
            <td>
                <label>
                    <input type="text" name="age"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">性  别：</td>
            <td>
                <label>
                    <input type="text" name="sex"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">住  址：</td>
            <td>
                <label>
                    <input type="text" name="add"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="添加"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
