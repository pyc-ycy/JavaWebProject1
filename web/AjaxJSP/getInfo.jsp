<%--
  Created by IntelliJ IDEA.
  User: 御承扬
  Date: 2019/12/15
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="conn" class="com.lyq.DB.ConnDB" scope="page"></jsp:useBean>
<ul>
    <%
        ResultSet rs = conn.Query("select name from tb_books order by id DESC");
        try {
            if(rs.next()){
                do{
                    out.print("<li>"+rs.getString(1)+"</li>");
                }while(rs.next());
            }else{
                out.print("<li>暂无书籍信息！</li>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</ul>