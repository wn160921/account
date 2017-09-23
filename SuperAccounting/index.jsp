<%--
  Created by IntelliJ IDEA.
  User: 25564
  Date: 2017/9/23
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来到记账</title>
</head>
<body>
<form action="LoginCheck.jsp">
    用户名：<input type="text" name="username" value="${username}" ><br>
    密&nbsp; &nbsp;码：<input type="password" name="password"><br>
    <input type="submit" value="登录">
</form>
</body>
</html>
