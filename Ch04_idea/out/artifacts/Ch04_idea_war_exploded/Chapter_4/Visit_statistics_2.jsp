<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/30
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>利用hashmap做计数器</title>
</head>
<body>
    <%!
        int count1 = 0;
        HashMap <String,String> map = new HashMap <String,String>();
    %>

    <%
        map.put(session.getId(),session.getId());
    %>


</body>
</html>
