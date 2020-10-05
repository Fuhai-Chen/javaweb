<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/5
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL隐式对象的案例演示</title>
</head>
<body>
<%--    3. param paramVlaues
    共同点：封装的是请求参数信息map类型
    区别：paramValues对于某一个请求参数信息，返回的是一个String[]（字符串类型数组）
         而param是返回值String
         传递参数可使用以下地址使用（含查询字符串）：
http://localhost:8080/Ch04_idea_war_exploded/Chapter_6_example/elObjectDemo01.jsp?username=zhaoyuan&password=123&like=sleep&like=eat
--%>
    ${param.username} &nbsp; ${param.password}<br>
    ${paramValues.username[0]} &nbsp; ${paramValues.password[0]}<br>
    ${paramValues.like[0]} &nbsp; ${paramValues.like[1]}

</body>
</html>
