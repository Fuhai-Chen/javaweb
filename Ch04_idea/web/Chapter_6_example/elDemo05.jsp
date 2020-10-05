<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/5
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>检查是否是空值的运算符empty</title>
</head>
<body>
    <%
        Map key6 = new HashMap();
        //即使指定Map中的键值对类型，empty 仍为 ture，因为Map中还是没有元素。
        Map<String ,String> key6_1 = new HashMap<String, String>();
        Map key7 = null;
        ArrayList key8 = new ArrayList();
        ArrayList key9 = null;
    %>

    \${empty key6} = ${empty key6}<br>
    \${empty key6_1} = ${empty key6_1}<br>
    \${empty key7} = ${empty key7}<br>
    \${empty key8} = ${empty key8}<br>
    \${empty key9} = ${empty key9}<br>


</body>
</html>
