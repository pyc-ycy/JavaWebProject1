<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/14
  Time: 21:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Arrays" %>
<%
    String[] userList={"御承扬","pyc","夜烬天","wyn"};			//创建一个一维数组
    String user= request.getParameter("user");	//获取用户名
    Arrays.sort(userList);									//对数组排序
    int result=Arrays.binarySearch(userList,user);				//搜索数组
    if(result>-1){
        out.println("Sorry, the username is already registered!");			//输出检测结果
    }else{
        out.println("Congratulations, the username has not been registered!");			//输出检测结果
    }
%>
