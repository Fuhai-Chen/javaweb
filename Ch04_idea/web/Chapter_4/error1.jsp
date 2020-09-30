<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/28
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" import="java.util.*" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    页面发生了异常，以下是对异常的描述：<br>
    <%= exception.toString() %><br>
    <a href="Computer.jsp">返回计算器主页</a>
</body>
</html>
