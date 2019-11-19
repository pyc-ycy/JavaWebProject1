<%@ page import="java.nio.charset.StandardCharsets" %><%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/19
  Time: 下午 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style type="text/css">
        body{
            background: #c4e9e4;
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
    String name = new String(request.getParameter("name").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    session.setAttribute("name", name);
%>
<div>
    <form id="form1" name="form1" method="post" action="result.jsp">
        <table>
            <tr>
                <td>您的名字是：</td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>您最想去的地方是：</td>
                <td><label>
                    <input type="text" name="address">
                </label></td>
            </tr>
            <tr>
                <td colspan="2">
                    <div>
                        <input type="submit" name="Submit" value="提交">
                    </div>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
