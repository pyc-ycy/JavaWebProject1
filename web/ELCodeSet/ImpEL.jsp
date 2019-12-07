<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/7
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL Implicit Object</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<h2>1、页面上下文对象</h2>
<b>1.1、访问 request 对象</b><br>
${pageContext.request.serverPort}<br>
<b>1.2、访问 response 对象</b><br>
${pageContext.response.contentType}<br>
<b>1.3、访问 out 对象</b><br>
${pageContext.out.bufferSize}<br>
<b>1.4、访问 session 对象</b><br>
${pageContext.session.maxInactiveInterval}<br>
<b>1.5、访问 exception 对象</b><br>
${pageContext.exception.message}<br>
<b>1.6、访问 servletContext 对象</b><br>
${pageContext.servletContext.contextPath}<br>
<h2>2、访问作用域范围内的隐含对象</h2>
<h3>2.1、pageScope</h3>
<jsp:useBean id="student" class="com.lyq.bean.StudentInfo" type="com.lyq.bean.StudentInfo">
    <jsp:setProperty name="student" property="ID" value="201724073169"/>
    <jsp:setProperty name="student" property="name" value="Lucy"/>
</jsp:useBean>
\${pageScope.student.ID}:
${pageScope.student.ID}<br>
\${pageScope.student.name}:
${pageScope.student.name}<br>
</body>
</html>
