<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/21
  Time: 上午 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输出对象测试</title>
    <style type="text/css">
        body{
            background: #d9d2e9;
            text-align: center;
            margin: fill;
        }
    </style>
</head>
<body>
<h3>print 和 println 测试</h3>
<pre>
    <% out.print("御承扬的博客");%><br>
    <%="御承扬的博客"%>
    <br>
    <%
        out.println("最是人间留不住");
        out.println("朱颜辞镜花辞树");
    %>
</pre>
</body>
</html>
