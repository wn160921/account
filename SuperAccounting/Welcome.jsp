<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 25564
  Date: 2017/9/23
  Time: 13:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎</title>
</head>
<body>
<a href="accounting.jsp">接着记账</a><br><hr>
<table border="1">
    <tr>
        <td><h3>日期</h3></td>
        <td><h3>消费内容</h3></td>
        <td><h3>金额</h3></td>
    </tr>
    <jsp:useBean id="querybean" class="JavaBean.QueryBean" scope="request"></jsp:useBean>
    <%
        querybean.setUsername((String) session.getAttribute("username"));
        ResultSet rs=querybean.getBill();
        while (rs.next()){
    %>
    <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(3)%></td>
    </tr>
    <%
        }
        rs.close();
    %>
</table>
</body>
</html>
