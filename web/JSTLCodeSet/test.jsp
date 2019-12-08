<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/8
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>应用&lt;c:out&gt;</title>
</head>
<body>
escapeXml 为 true 时：
<c:out value="水平标记线<hr>" escapeXml="true"></c:out>
<br>
escapeXml 为 false：
<c:out value="水平标记线<hr>" escapeXml="false"></c:out>
</body>
</html>
