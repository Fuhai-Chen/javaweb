<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/9
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL实现比较两个自定义的整数值</title>
</head>
<body>
<%--    <form action="Homework_2.jsp" method="post">--%>
<%--        请输入第一个数：<input type="text" name="num1"><br>--%>
<%--        请输入第二个数：<input type="text" name="num2"><br>--%>
<%--        <button type="submit">进行比较</button> &nbsp;&nbsp; <button type="reset">重置</button>--%>
<%--    </form>--%>
    <%


        double num1 = 123;
        double num2 = 456;

//        double num1 = Double.parseDouble(request.getParameter("num1"));
//        double num2 = Double.parseDouble(request.getParameter("num2"));
        String flag = "";
        session.setAttribute("num1",num1);
        session.setAttribute("num2",num2);
        if (num1 > num2){
            flag = ">";
        }else if (num1 == num2){
            flag = "=";
        }else {
            flag = "<";
        }
        session.setAttribute("flag",flag);
    %>
    比较结果为：<br>
    <h1> ${num1} ${flag} ${num2} <h1>
</body>
</html>
