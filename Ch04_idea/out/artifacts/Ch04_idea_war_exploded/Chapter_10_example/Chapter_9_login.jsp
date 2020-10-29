<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/19
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆界面</title>
</head>
<body>
<%--显示错误信息--%>
${message}
<form action="/Ch04_idea_war_exploded/logincheckServlet" method="post">
    用户名：
    <input type="text" name="username"><br>
    密码：
    <input type="password" name="password"><br>
    <button type="submit">登录</button>

</form>

</body>
</html>
