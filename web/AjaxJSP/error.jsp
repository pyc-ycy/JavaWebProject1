<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/15
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>错误提示</title>
</head>
<body>
<h1>${error}</h1>
<input name="btn_return" type="button" value="返回" onClick="history.back(-1);">
</body>
</html>
