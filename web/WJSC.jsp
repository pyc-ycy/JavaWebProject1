<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/11/29
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传功能测试页面</title>
    <style type="text/css">
        body{
            background: #bdd4e9;
            align-items: center;
        }
    </style>
    <script type="text/javascript">
        function reg(form){
            if("" === form.rename.value){
                alert("必须重命名！！！");
                return false;
            }
        }
    </script>
</head>
<body>
<center>
    <form action="UploadServlet" enctype="multipart/form-data" method="post" onsubmit=" return reg(this)">
        <label for="file1">选择文件：</label><input type="file" name="file1" id="file1"/>
        <label for="rename">重命名：</label><input type="text" name="rename" id="rename">
        <input type="submit" name="upload" value="上传"/>
    </form>
</center>
</body>
</html>
