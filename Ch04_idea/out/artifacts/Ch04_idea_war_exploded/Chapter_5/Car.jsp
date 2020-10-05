<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/5
  Time: 10:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    第五章课后作业第二题--%>
    <title>利用JavaBean显示汽车颜色及空调安装情况</title>
</head>
<body>
    <jsp:useBean id="car1" class="Chapter_5.Car" scope="session"></jsp:useBean>

    <jsp:setProperty name="car1" property="carColor" value="红色"></jsp:setProperty>
    <jsp:setProperty name="car1" property="airconditioner" value="true"></jsp:setProperty>
    <a href="CarShow.jsp">显示结果</a>
</body>
</html>
