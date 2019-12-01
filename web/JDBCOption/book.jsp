<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/1
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书信息登记</title>
    <style type="text/css">
        body{
            background: #d7c7e9;
            align-items: center;
            text-align: center;
        }
    </style>
    <script type="text/javascript">
        function check(form){
            with(form){
                if(name.value === ""){
                    alert("图书名称不能为空");
                    return false;
                }
                if(price.value === ""){
                    alert("价格不能为空");
                    return false;
                }
                if(bookCount.value === ""){
                    alert("图书数量不能为空");
                    return false;
                }
                if(author.value === ""){
                    alert("作者不能为空");
                    return false;
                }
                return true;
            }
        }
    </script>
</head>
<body>
<form action="AddBook.jsp" method="post" onsubmit="return check(this);">
    <table align="center" width="450">
        <tr>
            <td align="center" colspan="2">
                <h2>添加图书信息</h2>
                <hr>
            </td>
        </tr>
        <tr>
            <td align="right">图书名称：</td>
            <td>
                <label>
                    <input type="text" name="name"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">价格：</td>
            <td>
                <label>
                    <input type="text" name="price"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">数量：</td>
            <td>
                <label>
                    <input type="text" name="bookCount"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="right">作者：</td>
            <td>
                <label>
                    <input type="text" name="author"/>
                </label>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
