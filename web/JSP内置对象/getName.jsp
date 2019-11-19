<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/19
  Time: 下午 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style type="text/css">
        body{
            background: #e1e9dc;
        }
        div{
            align-items: center;
        }
        table{
            width: 23%;
            border: 0;
        }
    </style>
</head>
<body>
<div>
    <form id="form1" name="form1" method="post" action="session.jsp">
        <table>
            <tr>
                <td width="36%"><div>您的名字是：</div></td>
                <td><label>
                    <input type="text" name="name">
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
