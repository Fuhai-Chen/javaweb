<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/29
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>第三题登陆页面</title>
</head>
<body>
    <h1>这是登录页面，输入用户名和密码后，会提交到另一个JSP页面并显示</h1>
    <form action="loginSuccess2.jsp" method="post">
        用户名：<input type="text" name="username"><br><br>
        密码：<input type="password" name="password"><br><br>
        <input type="submit" value="确认登录··1"><input type="reset" value="重置">
    </form>

</body>
</html>
