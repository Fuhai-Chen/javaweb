<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/15
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>out标签的使用实例</title>
</head>
<body>
    <c:out value="Hello JSP 2.0 !!"></c:out><br>
<%--    和下面的代码等价--%>
    <%
        out.print("Hello JSP 2.0 !!");
    %>
<%--    使用JSTL标签可以尽可能少的在JSP中暴露Java逻辑代码--%>
    <c:out value="${3 + 5}"></c:out><br>
<%--    和下面的代码等价--%>
    ${3+5}
<%--
    为什么还要使用out标签呢？
    out标签可以完成一定的结果处理，当value值为空的时候，可以重新设定一个值default。而EL表达式没有这个功能
--%>
    <c:out value="${param.data}" default="No data"></c:out><br>
    <c:out value="<B>有特殊字符</B>"></c:out><br>
    <c:out value="<B>有特殊字符</B>" escapeXml="false"></c:out><br>

</body>
</html>
