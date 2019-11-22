<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/15
  Time: 下午 7:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" language="java" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%!
    private int number = 1;

    private int count() {
        number++;
        return number;
    }
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
    <title>一个简单的 JSP 页面——显示系统时间</title>
    <style type="text/css">
        body {
            align-items: center;
            background: #e9e0e7;
        }
      table{
        width:440px;
        height:85px;
        cell-padding:0;
        cell-spacing:0;
        font-size: 16px;
        border-colordark: #666666;
        border-colorlight: #FFFFF;
        border: 1px #FFFFFF;
      }
        button{
            border: black 2px;
            background: darkgray;
            color: black;
        }
    </style>
</head>
<body>
<%
    Date date = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String today = df.format(date);
%>
<center>
    <h4>当前时间</h4>
    <%=today%>
    <h4>使用全局变量和全局函数</h4>
    <%=count()%>
    <h4>利用脚本程序输出九九乘法表</h4>
    <%
        String str = "";
        for (int i = 1; i <= 9; i++) {
            for(int j=1; j<=i; j++){
              str += j + "*" + i + "=" + j*i;
              str += "&nbsp;";
            }
            str += "<br>";
        }
    %>
  <table>
    <tr>
      <td height="30" style="text-align: center;">九九乘法表</td>
    </tr>
    <tr>
      <td style="padding: 3pt;">
        <%=str%>
      </td>
    </tr>
  </table>
    <br>
    <br>
    <input type="button" name="register" value ="登录" onclick="window.location.href='midPage.jsp'"/>
    <br>
    <br>
    <a href="getParamTest.jsp?id=123&user=ycy&pwd=456789">处理页</a>
    <br>
    <a href="test2.jsp">结果页</a>
    <br>
    <br>
    <input type="button" name="register" value ="打开 cookie 测试页面" onclick="window.location.href='cookie.jsp'"/>
    <br>
    <br>
    <input type="button" name="test" value="获取客户端信息" onclick="window.location.href='JSP内置对象/code01.jsp'"/>
    <br>
    <br>
    <input type="button" name="test" value="根据地区显示语言" onclick="window.location.href='JSP内置对象/localLanguage.jsp'"/>
    <br>
    <br>
    <input type="button" value="网页重定向" onclick="window.location.href='JSP内置对象/testRedirect.jsp'">
    <br>
    <br>
    <input type="button" value="session" onclick="window.location.href='JSP内置对象/getName.jsp'">
    <p>
        应用初始化信息 author 的值：<%=application.getInitParameter("author")%>
    </p>
    <input type="button" value="out" onclick="window.location.href='JSP内置对象/outTest.jsp'">
    <br>
    <br>
    <input type="button" value="page" onclick="window.location.href='JSP其他内置对象/pageTest.jsp'">
    <br>
    <br>
    <input type="button" value="异常处理" onclick="window.location.href='JSP其他内置对象/errorPage.jsp'">
    <br>
    <br>
    <input type="button" value="JavaBean尝试" onclick="window.location.href='JavaBeanSet/JavaBeanTest/EmailCheck.jsp'">
    <br>
    <br>
    <input type="button" value="JavaBean属性获取" onclick="window.location.href='JavaBeanSet/JavaBeanUse/getJavaBeanParameter.jsp'">
    <br>
    <input type="button" value="JavaBean属性设置" onclick="window.location.href='JavaBeanSet/JavaBeanUse/setJavaBeanParameter.jsp'">
  <%--测试--%>
  <!--<%=new Date()%>-->
    <%@include file="test.jsp" %>
</center>
</body>
</html>
