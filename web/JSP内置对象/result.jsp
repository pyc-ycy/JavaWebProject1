<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/19
  Time: 下午 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<html>
<head>
    <title>结果页</title>
    <style type="text/css">
        body{
            background: #ccc5e9;
        }
        div{
            align-items: center;
        }
        table{
            width: 28%;
            border: 0;
        }
    </style>
</head>
<body>
<%
    String name = session.getAttribute("name").toString();
    String solution = request.getParameter("address");
    //String solution = new String(request.getParameter("address").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
%>
<form id="from1" name="form1" method="post" action="">
    <table>
        <tr>
            <td colspan="2"><div><strong>显示答案</strong></div> </td>
        </tr>
        <tr>
            <td width="49%"><div align="left">您的名字是：</div> </td>
            <td width="51%"><label><div align="left"><%=name%></div> </label></td>
        </tr>
        <tr>
            <td><label><div align="left">您最喜欢去的地方是：</div> </label></td>
            <td><div align="left"><%=solution%></div> </td>
        </tr>
    </table>
</form>
</body>
</html>
