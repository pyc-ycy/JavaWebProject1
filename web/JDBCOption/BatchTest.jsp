<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/3
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>批处理测试</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-items: center;
        }
    </style>
</head>
<body>
<jsp:useBean id="batch" class="com.lyq.bean.Batch"></jsp:useBean>
<%
    int row = batch.saveBatch();
    if(row == 0){
        out.print("执行批处理失败");
    }else{
        out.println("批处理了【" + row + "】条数据！");
    }
%>
</body>
</html>
