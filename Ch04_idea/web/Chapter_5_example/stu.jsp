<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/5
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <jsp:useBean id="stu1" class="Chapter_5_example.Student" scope="page"></jsp:useBean>
    <jsp:useBean id="stu2" class="Chapter_5_example.Student" scope="session"></jsp:useBean>

    <%
        stu1.setStuNo(2);
        stu1.setStuName("李四");
        stu1.setStuAge(25);
        stu2.setStuNo(3);
        stu2.setStuName("王五");
        stu2.setStuAge(30);
    %>
c
    编号
</body>
</html>
