<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/9
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>九九乘法表显示界面</title>
</head>
<body>
    <%!
        int n = 0;
    %>
    <%
        n = Integer.parseInt(request.getParameter("number"));
        session.setAttribute("n1",n);
    %>
    <div>
        <%
            for (int i=1; i<=n; i++) {
                for (int j=1; j<=i; j++) {
                    out.println(i + " x " + j + " = " + (i*j));
                    //在第二列实现对齐
                    if (j==2 && i*j<10) {
                        out.print("&nbsp;&nbsp;&nbsp;&nbsp;");
                    }else {
                        out.print("&nbsp;&nbsp;");
                    }
                }
        %>
        <br>
        <%
            }
        %>
    </div>

<%--    此处Debug是可以传值的，EL为啥获取不到呢--%>
<%--    <%
        out.print(i);
    %>
%-->

<%--    自定义数组作为item？？？--%>
    <table>
<%--        这里怎么吧数据取进来,先set啊！！！！！--%>
        <c:forEach var="i" begin="1" end="${n1}">
            <tr>
                <c:forEach var="j" begin="1" end="${ i }">
                    <td style="border: 1px solid;">
                        <c:out value="${i}x${j}=${i*j}"></c:out>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
