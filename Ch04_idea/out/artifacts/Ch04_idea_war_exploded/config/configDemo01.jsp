<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/28
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>config对象方法运用</title>
</head>
<body bgcolor="#FFFF99">
    <%=config.getServletName()%><br>
<%--    输出该JSP中名为name的参数配置信息--%>
        name配置参数的值：<%=config.getInitParameter("name")%><br>
<%--    输出该JSP中名为age的参数配置信息--%>
        age配置参数的值：<%=config.getInitParameter("age")%>
</body>
</html>
