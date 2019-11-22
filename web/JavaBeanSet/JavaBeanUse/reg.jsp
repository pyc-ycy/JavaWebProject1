<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/22
  Time: 下午 4:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册结果</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="person" class="com.lyq.bean.Person" scope="page">
    <jsp:setProperty name="person" property="*"/>
</jsp:useBean>
<table align="center" width="400">
    <tr>
        <td align="right">姓   名：</td>
        <td>
            <jsp:getProperty name="person" property="name"/>
        </td>
    </tr>
    <tr>
        <td align="right">年  龄：</td>
        <td>
            <jsp:getProperty name="person" property="age"/>
        </td>
    </tr>
    <tr>
        <td align="right">性  别：</td>
        <td>
            <jsp:getProperty name="person" property="sex"/>
        </td>
    </tr>
    <tr>
        <td align="right">住  址：</td>
        <td>
            <jsp:getProperty name="person" property="add"/>
        </td>
    </tr>
</table>
</body>
</html>
