<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/7
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>EL表达式测试</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<h2>1、数组元素获取</h2>
<%
    String[] arr = {"秦国","楚国","韩国","齐国"};
    request.setAttribute("book", arr);
%>
<%
    String[] arr1 = (String[])request.getAttribute("book");
    for(int i=0;i<arr1.length;i++){
        request.setAttribute("requestl", i);
%>
${requestl}:${book[requestl]}<br>
<%}%>
<h2>2、List 元素获取</h2>
<%
    List<String> list = new ArrayList<>();
    list.add("广东省");
    list.add("湖南省");
    list.add("云南省");
    list.add("北京市");
    list.add("山东省");
    list.add("山西省");
    session.setAttribute("province", list);
%>
<%
    List<String> list1 = (List<String>)session.getAttribute("province");
    for(int i=0;i<list1.size();i++){
        request.setAttribute("requestl", i);
%>
${requestl}:${province[requestl]}<br>
<%}%>
<h2>3、empty 运算符</h2>
<%request.setAttribute("user","");%>
<%
    request.setAttribute("user1", null);
%>
<h3>
    ${empty user}<br>
    ${empty user1}
</h3>

</body>
</html>
