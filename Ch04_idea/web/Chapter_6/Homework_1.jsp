<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/9
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL实现学生成绩统计并显示</title>
</head>
<body>
<%!
    Map<String,Double> results = new HashMap<String, Double>();
%>
<%--数值不能超过100，如何实现--%>
<%
    Random rm1 = new Random();
    results.put("English",rm1.nextDouble()*100);
    results.put("Math",rm1.nextDouble()*100);
    results.put("MIS",rm1.nextDouble()*100);
    results.put("JSP",rm1.nextDouble()*100);
    results.put("Java",rm1.nextDouble()*100);
    session.setAttribute("resluts",results);

%>

成绩信息如下：

<hr>
该学生的总成绩是：${resluts.English + resluts.Math + resluts.MIS + resluts.JSP + resluts.Java}<br>
该学生的平均成绩是：${(resluts.English + resluts.Math + resluts.MIS + resluts.JSP + resluts.Java) / resluts.size()}

</body>
</html>
