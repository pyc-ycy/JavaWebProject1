<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/23
  Time: 下午 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数组转字符串</title>
    <style type="text/css">
        body{
            background: #d8d0e9;
            align-items: center;
        }
    </style>
</head>
<body>
<form action="arrDeal.jsp" method="post">
    <div>
        <h1>调查问卷</h1>
        <hr/>
        <ul>
            <li>你经常用哪些编程语言开发程序：</li>
            <li>
                <label>
                    <input type="checkbox" name="languages" value="JAVA">
                </label>JAVA
                <label>
                    <input type="checkbox" name="languages" value="PYTHON">
                </label>PYTHON
                <label>
                    <input type="checkbox" name="languages" value=".NET">
                </label>.NET
                <label>
                    <input type="checkbox" name="languages" value="VC++">
                </label>VC++
            </li>
        </ul>
        <ul>
            <li>你目前所掌握的技术：</li>
            <li>
                <label>
                    <input type="checkbox" name="technics" value="HTML">
                </label>HTML
                <label>
                    <input type="checkbox" name="technics" value="JSP">
                </label>JSP
                <label>
                    <input type="checkbox" name="technics" value="ASP">
                </label>ASP
                <label>
                    <input type="checkbox" name="technics" value="MFC">
                </label>MFC
            </li>
        </ul>
        <ul>
            <li>在学习中哪一部分最困难：</li>
            <li>
                <label>
                    <input type="checkbox" name="parts" value="JSP">
                </label>JSP
                <label>
                    <input type="checkbox" name="parts" value="MFC">
                </label>MFC
            </li>
        </ul>
        <input type="submit" value="提交">
    </div>
</form>
</body>
</html>
