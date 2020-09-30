<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/29
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第三题请求数据显示页面</title>
</head>
<%
    request.setCharacterEncoding("UTF-8");
%>
<body>
    用户名：<%=request.getParameter("username")%><br>
    密码：<%=request.getParameter("password")%><br>
    请求使用的协议：<%=request.getProtocol()%><br>
    请求的URL：<%=request.getServletPath()%><br>
    请求方法：<%=request.getMethod()%>
    远程地址：<%=request.getRemoteAddr()%>

</body>
</html>
