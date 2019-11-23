<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/23
  Time: 上午 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="release.jsp" method="post">
    <table align="center" width="450" height="260" border="1">
        <tr>
            <td align="center" colspan="2" height="40">
                <b>新闻发布</b>
            </td>
        </tr>
        <tr>
            <td align="right">标  题：</td>
            <td>
                <label>
                    <input type="text" name="title" size="30"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">内  容：</td>
            <td>
                <label>
                    <textarea name="content" rows="8" cols="40"></textarea>
                </label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="发布">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
