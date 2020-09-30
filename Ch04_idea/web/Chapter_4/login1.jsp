<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/29
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第二题JSP登录页面</title>
</head>
<body>
    <%
        session.setAttribute("username","独孤求败");
        session.setAttribute("password","123456");
        response.sendRedirect("loginSuccess1.jsp");
    %>


</body>
</html>
