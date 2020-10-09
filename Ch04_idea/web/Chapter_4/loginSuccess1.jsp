<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/29
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息显示页面</title>
</head>
<body>
<h1>您的登录信息是</h1>
    <%
        String username = session.getAttribute("username").toString();
        String password = (String)session.getAttribute("password");
    %>
用户名： <%=username%><br>
密码： <%=password%>
</body>
</html>
