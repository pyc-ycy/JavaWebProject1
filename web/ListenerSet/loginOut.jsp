<%--
  Created by IntelliJ IDEA.
  User: 彭友聪
  Date: 2019/11/27
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();
    out.println("<script>parent.location.href='login.jsp';</script>");
%>
