<%@ page import="java.util.*" %>
<%--
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
<%--数值不能超过100，如何实现
random.nextdouble() 取0-1double数，再乘100得
--%>
<%
    Random rm1 = new Random();
    results.put("English",rm1.nextDouble()*100);
    results.put("Math",rm1.nextDouble()*100);
    results.put("MIS",rm1.nextDouble()*100);
    results.put("JSP",rm1.nextDouble()*100);
    results.put("Java",rm1.nextDouble()*100);
    session.setAttribute("resluts1",results);
%>
<h1>成绩信息如下：</h1>
<%
    Set<String> mapSet = results.keySet();
    Iterator<String> itor = mapSet.iterator();
    while (itor.hasNext()){ //存在下一个值
        String key = itor.next();
        Double value = results.get(key);
        session.setAttribute("key", key);
        session.setAttribute("value", value);

%>
    ${key} score: ${value};<br>
<%
    }
%>

<hr>
该学生的总成绩是：${resluts1.English + resluts1.Math + resluts1.MIS + resluts1.JSP + resluts1.Java}<br>
该学生的平均成绩是：${(resluts1.English + resluts1.Math + resluts1.MIS + resluts1.JSP + resluts1.Java) / resluts1.size()}

</body>
</html>
