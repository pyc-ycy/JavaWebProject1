<%--
  Created by IntelliJ IDEA.
  User: 彭友聪
  Date: 2019/11/27
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="com.lyq.ListenerSet.UserInfoTrace"%>
<%@page import="com.lyq.ListenerSet.UserInfoList" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>使用监听查看在线用户</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<%
    UserInfoList list=UserInfoList.getInstance();
    UserInfoTrace ut=new UserInfoTrace();
    String name=request.getParameter("user");
    ut.setUser(name);
    session.setAttribute("list",ut);
    list.addUserInfo(ut.getUser());
    session.setMaxInactiveInterval(10);
%>
<body>
<div align="center">


    <table width="506" height="246" border="0" cellpadding="0" cellspacing="0" background="image/background2.jpg">
        <tr>
            <td align="center"><br>

                <label>
<textarea rows="8" cols="20">
<%
Vector vector=list.getList();
if(vector!=null&&vector.size()>0){
for(int i=0;i<vector.size();i++){
out.println(vector.elementAt(i));
}
}
%>
</textarea>
                </label><br><br>
                <a href="loginOut.jsp">返回</a>

            </td>
        </tr>
    </table>
</div>
</body>
</html>
