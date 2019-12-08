<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/8
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="TEL" uri="/ELFunctionTest" %>
<html>
<head>
    <title>显示结果</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
内容为：<br>
${TEL:shiftEnter(param.content)}
</body>
</html>
