<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/26
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MVC计算器界面</title>
</head>
<body>
    计算的结果是：${calculator.num1}${calculator.operator}${calculator.num2} = ${calculator.result}
    <hr>
    <form action="/Ch04_idea_war_exploded/calculatorServlet">
        <h1>简单的计算器</h1>
        第一个参数：
        <input type="text" name="num1"><br>
        运算符：
        <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select><br>
        第二个参数：
        <input type="text" name="num2"><br>
        <input type="submit" value="计算">

    </form>
</body>
</html>
