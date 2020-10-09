<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/5
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="Chapter_5.User" %>
<html>
<head>
<%--    第五章课后作业第一题--%>
    <title>利用JavaBean显示用户姓名</title>
</head>
<body>
    <jsp:useBean id="user1" class="Chapter_5.User" scope="page"></jsp:useBean>

    <jsp:setProperty name="user1" property="userName" value="anne"></jsp:setProperty>
    <h1>用户姓名为：<jsp:getProperty name="user1" property="userName"/></h1>
</body>
</html>
