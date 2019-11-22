<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/22
  Time: 上午 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取JavaBean属性</title>
    <style type="text/css">
        body{
            background: #e9e5d2;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<jsp:useBean id="produce" class="com.lyq.bean.Produce"></jsp:useBean>
<div>
    <ul>
        <li>
            商品名称：<jsp:getProperty name="produce" property="name"/>
        </li>
        <li>
            价格：<jsp:getProperty name="produce" property="price"/>
        </li>
        <li>
            类别：<jsp:getProperty name="produce" property="type"/>
        </li>
        <li>
            出版社：<jsp:getProperty name="produce" property="publishor"/>
        </li>
    </ul>
</div>
</body>
</html>
