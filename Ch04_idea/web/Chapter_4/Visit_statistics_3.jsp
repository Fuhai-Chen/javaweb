<%@ page import="java.util.HashSet" %><%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/4
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        int count1 = 0;
        HashSet<String> set = new HashSet<String>();
    %>

    <%
        set.add(session.getId());
    %>

    按照浏览器(客户): <%= set.size() %>
    <br>
    按照刷新页面: <%= ++count1 %>
</body>
</html>
