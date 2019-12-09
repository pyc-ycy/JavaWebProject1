<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/8
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>&lt;c:set&gt;</title>
    <style type="text/css">
        body{
            align-items: center;
            text-align: center;
        }
    </style>
</head>
<body>
<ul>
    <li>定义 request 范围内的变量 agentname
    <c:set var="agentname" value="吴雅男" scope="request"/>
    <c:out value="agentname的值:"/>${requestScope.agentname}
    </li>
    <li>
        利用Jsp:useBean 为 Info 的 str 赋值：
        <jsp:useBean id="t" class="com.lyq.JSTLFunctionSet.Info">
            <jsp:setProperty name="t" property="str" value="我在测试"/>
        </jsp:useBean>
        ${t.str}
    </li>
    <li>
        利用&lt;c:set&gt; 为 Info 的 str 赋值：
        <c:set target="${t}" property="str">trying</c:set>
        <c:out value="${t.str}"></c:out>
    </li>
    <li>
        利用&lt;c:set&gt; 为 StudentInfo 的 name 和 ID 赋值：
        <jsp:useBean id="stu" class="com.lyq.bean.StudentInfo"/>
        <c:set target="${stu}" property="name">吴雅男</c:set>
        <c:set value="201703300544" target="${stu}" property="ID"/>
        <c:out value="name 值：${stu.name}  ID: ${stu.ID}"></c:out>
    </li>
</ul>
</body>
</html>
