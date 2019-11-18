<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/18
  Time: 下午 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取客户端信息</title>
</head>
<style type="text/css">
    body{
        text-align: center;
        background: #c6cde9;
        margin: auto;
    }
</style>
<body>
<p>
    客户提交信息的方式：<%=request.getMethod()%><br>
    使用的协议：<%=request.getProtocol()%><br>
    获取发出请求字符串的客户端地址：<%=request.getRequestURI()%><br>
    获取发出请求字符串的客户端地址：<%=request.getRequestURL()%><br>
    获取提交数据的客户端 IP 地址：<%=request.getRemoteAddr()%><br>
    获取服务器端口号：<%=request.getServerPort()%><br>
    获取服务器的名称：<%=request.getServerName()%><br>
    获取客户端的主机名：<%=request.getRemoteHost()%><br>
    获取客户端所请求的脚本文件的文件路径：<%=request.getServletPath()%><br>
    获得 Http 协议定义的文件头信息 Host 的值：<%=request.getHeader("host")%><br>
    获得 Http 协议定义的文件头信息 User-Agent 的值：<%=request.getHeader("user-agent")%><br>
    获得 Http 协议定义的文件头信息的 accept-language 的值：<%=request.getHeader("accept-language")%><br>
    获得请求文件的绝对路径：<%=request.getRealPath("code01.jsp")%>
</p>
</body>
</html>
