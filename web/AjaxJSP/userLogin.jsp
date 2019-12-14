<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/14
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户名检查</title>
    <script language="javascript">
        function createRequest(url) {
            http_request = false;
            if (window.XMLHttpRequest) {    							   // 非IE浏览器
                http_request = new XMLHttpRequest();	                      //创建XMLHttpRequest对象
            } else if (window.ActiveXObject) {     						   // IE浏览器
                try {
                    http_request = new ActiveXObject("Msxml2.XMLHTTP");	   //创建XMLHttpRequest对象
                } catch (e) {
                    try {
                        http_request = new ActiveXObject("Microsoft.XMLHTTP");  //创建XMLHttpRequest对象
                    } catch (e) {}
                }
            }
            if (!http_request) {
                alert("Cannot create XMLHttpRequest object instance!");
                return false;
            }
            http_request.onreadystatechange = getResult;					   //调用返回结果处理函数
            http_request.open('GET', url, true);							   //创建与服务器的连接
            http_request.send(null);									   //向服务器发送请求
        }
        function getResult() {
            if (http_request.readyState === 4) {     		// 判断请求状态
                if (http_request.status === 200) {     		// 请求成功，开始处理返回结果
                    document.getElementById("toolTip").innerHTML=http_request.responseText;	//设置提示内容
                    document.getElementById("toolTip").style.display="block";	//显示提示框
                } else {     						// 请求页面有错误
                    alert("The page you requested has errors!");
                }
            }
        }
        function checkUser(userName){
            if(userName.value===""){
                alert("please enter user name!");userName.focus();return;
            }else{
                createRequest('checkUser.jsp?user='+userName.value);
            }
        }
    </script>
    <style type="text/css">
        <!--
        #toolTip {
            position:absolute;
            left:331px;
            top:39px;
            width:98px;
            height:48px;
            padding-top:45px;
            padding-left:25px;
            padding-right:25px;
            z-index:1;
            display:none;
            color:red;
            background-image: url(images/tooltip.jpg);
        }
        -->
    </style>
</head>
<body>
<form method="post" action="" name="form">
    <table width="509" height="352" border="0" align="center" cellpadding="0" cellspacing="0" background="images/bg.gif">
        <tr>
            <td height="54">&nbsp;</td>
        </tr>
        <tr>
            <td height="253" valign="top">
                <div style="position:absolute;">


                    <table width="100%" height="250" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="18%" height="54" align="right" style="color:#8e6723 "><b>用户名：</b></td>
                            <td width="49%"><label for="username"></label><input name="username" type="text" id="username" size="32"></td>
                            <td width="33%"><input type="button" value="Checking username！" onclick="checkUser(form.username)"> </td>
                        </tr>
                        <tr>
                            <td height="51" align="right" style="color:#8e6723 "><b>密码：</b></td>
                            <td><label for="pwd1"></label><input name="pwd1" type="password" id="pwd1" size="35"></td>
                            <td rowspan="2">&nbsp;    <div id="toolTip"></div></td>
                        </tr>
                        <tr>
                            <td height="56" align="right" style="color:#8e6723 "><b>确认密码：</b></td>
                            <td><label for="pwd2"></label><input name="pwd2" type="password" id="pwd2" size="35"></td>
                        </tr>
                        <tr>
                            <td height="55" align="right" style="color:#8e6723 "><b>E-mail：</b></td>
                            <td colspan="2"><label for="email"></label><input name="email" type="text" id="email" size="45"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td colspan="2"><input type="button" value="Login"></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</body>
</html>
