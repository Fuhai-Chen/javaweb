<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/9
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL实现输入一个数字，输出该数字的九九乘法表</title>
<%--    结果页见Homework_4_result--%>
</head>
<body>
    <form method="post" action="Homework_4_result.jsp">
        请输入一个数字：<input type="text" name="number"><br>
        <button type="submit">生成乘法表</button>
        <button type="reset">重置</button>
    </form>
</body>
</html>
