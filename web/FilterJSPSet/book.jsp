<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/25
  Time: 下午 7:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书管理系统</title>
    <style type="text/css">
        body{
            background: #e8d7e9;
            align-items: center;
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath}/AddServlet" method="post">
    <table align="center" border="1" width="350">
        <tr>
            <td class="2" align="center" colspan="2">
                <h2>添加图书信息</h2>
            </td>
        </tr>
        <tr>
            <td align="right">图书编号：</td>
            <td>
                <label>
                    <input type="text" name="id"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">图书名称：</td>
            <td>
                <label>
                    <input type="text" name="name"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">图书作者：</td>
            <td>
                <label>
                    <input type="text" name="author"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">图书价格：</td>
            <td>
                <label>
                    <input type="text" name="price"/>
                </label>
            </td>
        </tr>
        <tr>
            <td class="2" align="center" colspan="2">
                <input type="submit" value="添加">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
