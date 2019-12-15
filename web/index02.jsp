<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/7
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试页面3</title>
    <style type="text/css">
        body {
            align-items: center;
            background: #e9e0e7;
        }
        table{
            width:440px;
            height:85px;
            cell-padding:0;
            cell-spacing:0;
            font-size: 16px;
            border-colordark: #666666;
            border-colorlight: #FFFFF;
            border: 1px #FFFFFF;
        }
        button{
            border: black 2px;
            background: darkgray;
            color: black;
        }
    </style>
</head>
<body>
<input type="button" value="上一页" onclick="window.location.href='index01.jsp'">
<center>
    <input type="button" value="EL表达式" onclick="window.location.href='ELCodeSet/ELTest.jsp'">
    <br>
    <br>
    <input type="button" value="EL隐含对象" onclick="window.location.href='ELCodeSet/ImpEL.jsp'">
    <br>
    <form name="form1" method="post" action="ELCodeSet/deal.jsp">
        <label>
            <textarea name="content" cols="30" rows="5"></textarea>
        </label>
        <br>
        <input type="submit" name="Button" value="提交">
    </form>
    <br>
    <br>
    <input type="button" value="JSTL" onclick="window.location.href='JSTLCodeSet/test.jsp'">
    <br>
    <br>
    <input type="button" value="c_set" onclick="window.location.href='JSTLCodeSet/c_set.jsp'">
    <br>
    <br>
    <input type="button" value="JSTL的表达式标签" onclick="window.location.href='JSTLCodeSet/c_remove.jsp'">
    <br>
    <br>
    <input type="button" value="JSTL的URL标签" onclick="window.location.href='JSTLCodeSet/JSTL_URL.jsp'">
    <br>
    <br>
    <input type="button" value="流程控制标签" onclick="window.location.href='JSTLCodeSet/JSTL_LCKZ.jsp'">
    <br>
    <br>
    <input type="button" value="循环标签" onclick="window.location.href='JSTLCodeSet/JSTL_XHBQ.jsp'">
    <br>
    <br>
    <input type="button" value="检查用户名是否被注册" onclick="window.location.href='AjaxJSP/userLogin.jsp'">
    <br>
    <br>
    <input type="button" value="显示书籍信息" onclick="window.location.href='AjaxJSP/Ajax01.jsp'">
    <%@include file="test.jsp" %>
</center>
</body>
</html>
