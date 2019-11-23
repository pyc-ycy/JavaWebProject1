<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/23
  Time: 下午 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>调查结果</title>
    <style type="text/css">
        body{
            background: #d8d0e9;
            align-items: center;
        }
    </style>
</head>
<body>
<jsp:useBean id="suvery" class="com.lyq.bean.Suvery"></jsp:useBean>
<jsp:useBean id="convert" class="com.lyq.bean.Convert"></jsp:useBean>
<jsp:setProperty name="suvery" property="*"/>
<div>
    <h1>调查结果</h1>
    <hr/>
    <ul>
        <li>
            你经常使用的编程语言：<%=convert.arr2str(suvery.getLanguages())%>
        </li>
        <li>
            你目前所掌握的技术：<%=convert.arr2str(suvery.getTechnics())%>
        </li>
        <li>
            在学习中感到最困难的部分：<%=convert.arr2str(suvery.getParts())%>
        </li>
    </ul>
</div>
</body>
</html>
