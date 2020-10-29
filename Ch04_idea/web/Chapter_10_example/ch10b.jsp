<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/19
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cookie测试登录页面</title>
</head>
<body>
<%
    //获取COOKIE
    Cookie[] cookies = request.getCookies();
    String cookiecontent = "";
    //遍历cookie
    for (int i = 0; i < cookies.length; i ++){
        if (cookies[i].getName().equals("chkbox")){
            cookiecontent = cookies[i].getValue();

        }
    }
%>
<form action="/cookieServlet">
<%--    利用表达式和三元运算符根据cookie中是否记录上次选中该复选框，从而实现记录复选框复选的功能--%>
    <input type="checkbox" name="chkbox" value="option1" <%=cookiecontent.indexOf("option1") == -1 ? "" : "checked"%>>option1
    <input type="checkbox" name="chkbox" value="option2" <%=cookiecontent.indexOf("option2") == -1 ? "" : "checked"%>>option2
    <input type="checkbox" name="chkbox" value="option3" <%=cookiecontent.indexOf("option3") == -1 ? "" : "checked"%>>option3<br>
    <input type="submit" name="提交">
</form>
</body>
</html>
