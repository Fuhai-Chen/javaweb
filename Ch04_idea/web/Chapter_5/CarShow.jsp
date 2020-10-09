<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/5
  Time: 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>汽车信息显示界面</title>
</head>
<body>
    <jsp:useBean id="car1" class="Chapter_5.Car" scope="session"></jsp:useBean>
    汽车的颜色是：<jsp:getProperty name="car1" property="carColor"/><br>
    汽车是否安装了空调：

<%
    Boolean a = car1.getAirconditioner();
    if (a){
        out.print("是");
    }
    else {
        out.print("否");
    }
%>
</body>
</html>
