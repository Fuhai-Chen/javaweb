<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/15
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>set标签用法实例</title>
</head>
<body>
    <ul>
<%--        用法一设置一个变量到page范围中 --%>
        <li>
            <c:set var="username" value="123"></c:set>
            <c:out value="${pageScope.username}"></c:out>
        </li>
        <li>
            向session范围中存放一个变量anme1，变量的值为hello：
            <c:set var="name1" scope="session" value="hello"></c:set>
        </li>
<%--        和下面的写法等价--%>
        <li>
            向session范围中存放一个变量anme1，变量的值为hello：
            <c:set var="name1" scope="session">hello</c:set>
        </li>
        <li>
            从session中获取name1信息：
            ${sessionScope.name1}
        </li>
<%--       给target指定的JavaBean赋值--%>
        <jsp:useBean id="person" class="Chapter_8_example.person"></jsp:useBean>
        <c:set target="${person}" property="name">张三</c:set>
        <c:set target="${person}" property="age">20</c:set>
        <c:set target="${person}" property="sex">男</c:set>
        <%
            //上面的代码与下面的代码等价
            person.setName("张三");
            person.setAge(20);
            person.setSex("男");
        %>
        <li>
            人的姓名：<c:out value="${person.name}">姓名为空</c:out>
        </li>
        <li>
            人的年龄：<c:out value="${person.age}">年龄为空</c:out>
        </li>
        <li>
            人的性别：<c:out value="${person.sex}">性别为空</c:out>
        </li>

    </ul>

</body>
</html>
