<%--
  Created by IntelliJ IDEA.
  User: 25564
  Date: 2017/9/23
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据处理页面</title>
</head>
<body>
<jsp:useBean id="loginbean" class="JavaBean.LoginBean" scope="session"></jsp:useBean>
<jsp:setProperty name="loginbean" property="*"></jsp:setProperty>
<%
    boolean result=loginbean.Check();
    if(result){
        session.setAttribute("username",loginbean.getUsername());
        response.sendRedirect("Welcome.jsp");
    }else {
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
%>
</body>
</html>
