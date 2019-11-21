<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/21
  Time: 上午 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page 对象测试</title>
    <style type="text/css">
        body{
            background: #d9d2e9;
            text-align: center;
            margin: fill;
        }
    </style>
</head>
<body>
<%! Object object;%>
<ul>
    <li>getClass() 方法的返回值：<%=page.getClass()%></li>
    <li>hashCode() 方法的返回值：<%=page.hashCode()%></li>
    <li>toString() 方法的返回值：<%=page.toString()%></li>
    <li>与 Object 对象比较的返回值：<%=page.equals(object)%></li>
    <li>与 this 对象比较的返回值：<%=page.equals(this)%></li>
</ul>
</body>
</html>
