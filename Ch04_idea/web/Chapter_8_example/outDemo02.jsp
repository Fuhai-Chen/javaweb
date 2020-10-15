<%@ taglib prefix="c" uri="myJstl" %>
<%--这里使用自定义uri引入标签库--%>
<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/15
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>out标签的使用实例</title>
    </head>
    <body>
    <c:out value="111"></c:out>
    <%
        //存放值
        pageContext.setAttribute("username", "1111");
        request.setAttribute("username", "222");
        session.setAttribute("username", "333");
        application.setAttribute("username", "444");
    %>
    <%--取出值显示到浏览器端--%>
<c:out value="${pageScope.username}"></c:out>
<c:out value="${requestScope.username}"></c:out>
<c:out value="${sessionScope.username}"></c:out>
<c:out value="${applicationScope.username}"></c:out>


</body>
</html>
