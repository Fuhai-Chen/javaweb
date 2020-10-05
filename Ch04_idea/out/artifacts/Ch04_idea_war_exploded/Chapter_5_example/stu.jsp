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

    编号2：<%=stu1.getStuNo() %>
    姓名2：<%=stu1.getStuName() %>
    年龄2：<%=stu1.getStuAge() %>
    <br/>
    编号3：<%=stu2.getStuNo() %>
    姓名3：<%=stu2.getStuName() %>
    年龄3：<%=stu2.getStuAge() %>
<%--    等同于用 new 新建一个实例化对象--%>
    <%-- 	<%
            Student stu=new Student();
            stu.setStuNo(1);
            stu.setStuName("张三");
            stu.setStuAge(23);

         %>

        编号：<%=stu.getStuNo() %>
        姓名：<%=stu.getStuName() %>
        年龄：<%=stu.getStuAge() %>
    --%>
</body>
</html>
