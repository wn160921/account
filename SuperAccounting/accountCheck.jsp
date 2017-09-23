<%@ page import="java.sql.Date" %><%--
  Created by IntelliJ IDEA.
  User: 25564
  Date: 2017/9/23
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="savebean" class="JavaBean.SaveBean"></jsp:useBean>
<jsp:setProperty name="savebean" property="*"></jsp:setProperty>
<%
    savebean.setUsername((String) session.getAttribute("username"));
    savebean.setData(new java.sql.Timestamp(new java.util.Date().getTime()));
    boolean b=savebean.savedatas();
    if(b){
        request.getRequestDispatcher("Welcome.jsp").forward(request,response);
    }else {
        out.print("未知错误");
    }

%>
</body>
</html>
