<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/28
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" errorPage="error1.jsp" language="java" import="java.util.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
    //        参数初始化
    int num1 = 0, num2 = 0, result = 0;
    %>
    <%

//        获取数值
        String firstnum = request.getParameter("firstnum");
        String secnum = request.getParameter("secnum");
        String flag = request.getParameter("flag");
//        运算数格式转换
        num1 = Integer.parseInt(firstnum);
        num2 = Integer.parseInt(secnum);
//        运算阶段
        if (flag.equals("add")){
            result = num1 + num2;
        }else if (flag.equals("minus")){
            result = num1 - num2;
        }else if (flag.equals("multi")){
            result = num1 * num2;
        }else {
            result = num1 / num2;
        }
    %>
<h1>计算结果为：<%=result%></h1>
<a href="Computer.jsp">返回计算器主页</a>


</body>
</html>
