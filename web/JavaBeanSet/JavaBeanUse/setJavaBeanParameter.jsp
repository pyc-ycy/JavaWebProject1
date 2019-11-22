<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/22
  Time: 下午 4:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设置JavaBean属性</title>
    <style type="text/css">
        body{
            background: #d1d0e9;
            align-items: center;
        }
    </style>
</head>
<body>
<jsp:useBean id="produce" class="com.lyq.bean.Produce"></jsp:useBean>
<jsp:setProperty name="produce" property="name" value="《Java从入门到精通》"/>
<jsp:setProperty name="produce" property="price" value="89.8"/>
<jsp:setProperty name="produce" property="type" value="编程语言"/>
<jsp:setProperty name="produce" property="publishor" value="中国水利水电出版社"/>
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
