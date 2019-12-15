<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/15
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>利用Ajax重构</title>
    <script language="JavaScript" src="../JS/AjaxRequest.js"></script>
    <script language="JavaScript">
        function onerror(){
            alert("what you have operated is wrong");
        }
        function getInfo(){
            var loader = new net.AjaxRequest("getInfo.jsp?nocache="+new Date().getTime(),deal_getInfo,onerror,"GET");
        }
        function deal_getInfo(){
            document.getElementById("showInfo").innerHTML = this.req.responseText;
        }
        window.onload=function(){
            getInfo();	//调用getInfo()方法获取公告信息
        }
    </script>
    <style type="text/css">
        body{
            background: #bdd4e9;
            align-items: center;
        }
    </style>
</head>
<body>
<center>
    <div style="border: 1px solid;height: 100px; width:200px;padding: 5px;">
        <div id="showInfo"></div>
    </div>
</center>
</body>
</html>
