<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/22
  Time: 上午 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>邮箱认证</title>
    <style type="text/css">
        body{
            background: #d0d2e9;
            align-items: center;
        }
        table{
            align-items: center;
            width: 300px;
            border: 1px;
            height: 150px;
        }
    </style>
</head>
<body>
<form action="result.jsp" method="post">
    <table>
        <tr>
            <td colspan="2" align="center">
                <b>邮箱认证系统</b>
            </td>
        </tr>
        <tr>
            <td align="right">邮箱地址：</td>
            <td><label>
                <input type="text" name="mailAdd"/>
            </label></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="提交"/>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
