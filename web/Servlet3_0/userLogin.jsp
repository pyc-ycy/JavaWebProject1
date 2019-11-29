<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/28
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.lyq.Servlet3_0CodeSet.SaveServlet" %>
<html>
<head>
    <title>用户注册</title>
    <link href="./Servlet3_0/css/style.css" type="text/css">
    <style type="text/css">
        body{
            margin: 0px;font-size: 12px;
        }
        .box{
            border: 1px solid #D1DEB2; width: 150px; height: 20px;
        }
        .div1{
            background-image: url(images/bg.jpg);
            height: 600px;
            width: 803px;
            padding-left:20px;
            padding-top:220px;
            text-align:left;
        }
    </style>
    <script type="text/javascript">
        function reg(form){
            if(form.username.value === ""){
                alert("用户不能为空！");
                return false;
            }
            if(form.password.value === ""){
                alert("密码不能为空！");
                return false;
            }
            if(form.repassword.value === ""){
                alert("确认密码不能为空！");
                return false;
            }
            if(form.password.value !== form.repassword.value){
                alert("两次密码输入不一致！");
                return false;
            }
            if(form.question.value === ""){
                alert("密码找回问题不能为空！");
                return false;
            }
            if(form.answer.value === ""){
                alert("密码找回答案不能为空！");
                return false;
            }
            if(form.email.value === ""){
                alert("电子邮箱不能为空！");
                return false;
            }
        }
    </script>
</head>
<body>
<div align="center">
    <div class="div1">
        <form action="${pageContext.request.contextPath}/SaveServlet" method="post" onsubmit="return reg(this);">
            <table align="center" border="0" width="500">
                <tr>
                    <td align="right" width="30%" size ="9pt">用户名：</td>
                    <td><label>
                        <input type="text" name="username" class="box">
                    </label></td>
                </tr>
                <tr>
                    <td align="right">密 码：</td>
                    <td><label>
                        <input type="password" name="password" class="box">
                    </label></td>
                </tr>
                <tr>
                    <td align="right">确认密码：</td>
                    <td><label>
                        <input type="password" name="repassword" class="box">
                    </label></td>
                </tr>
                <tr>
                    <td align="right">性 别：</td>
                    <td>
                        <label>
                            <input type="radio" name="sex" value="男" checked="checked">
                        </label>男
                        <label>
                            <input type="radio" name="sex" value="女">
                        </label>女
                    </td>
                </tr>
                <tr>
                    <td align="right">密码找回问题：</td>
                    <td><label>
                        <input type="text" name="question" class="box">
                    </label></td>
                </tr>
                <tr>
                    <td align="right">密码找回答案：</td>
                    <td><label>
                        <input type="text" name="answer" class="box">
                    </label></td>
                </tr>
                <tr>
                    <td align="right">邮 箱：</td>
                    <td><label>
                        <input type="text" name="email" class="box">
                    </label></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" height="40">
                        <input type="submit" value="注 册">
                        <input type="reset" value="重 置">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
</body>
</html>