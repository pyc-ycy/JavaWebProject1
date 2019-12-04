<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/4
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lyq.bean.Product" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <title>商品信息条目</title>
    <style type="text/css">
        td{font-size: 12px;}
        h2{margin: 0;
        }
        body{
            background: #d7c7e9;
            align-items: center;
            text-align: center;
            font-size: large;
        }
    </style>
</head>
<body>
<table align="center" width="800" border="1" height="400" bordercolor="white" bgcolor="black" cellpadding="1" cellspacing="1">
    <tr bgcolor="white">
        <td align="center" colspan="5">
            <h2>所有商品信息</h2>
        </td>
    </tr>
    <tr align="center" bgcolor="#e1ffc1" >
        <td><b>ID</b></td>
        <td><b>商品名称</b></td>
        <td><b>价格</b></td>
        <td><b>数量</b></td>
        <td><b>单位</b></td>
    </tr>
    <%
        List<Product> list = (List<Product>)request.getAttribute("list");
        for(Product p : list){
    %>
    <tr align="center" bgcolor="white">
        <td style="font-size: 16px;"><%=p.getId()%></td>
        <td style="font-size: 16px;"><%=p.getName()%></td>
        <td style="font-size: 16px;"><%=p.getPrice()%></td>
        <td style="font-size: 16px;"><%=p.getNum()%></td>
        <td style="font-size: 16px;"><%=p.getUnit()%></td>
    </tr>
    <%
        }
    %>
    <tr>
        <td style="font-size: 16px;" align="center" colspan="5" bgcolor="white">
            <%=request.getAttribute("bar")%>
        </td>
    </tr>
</table>
</body>
</html>
