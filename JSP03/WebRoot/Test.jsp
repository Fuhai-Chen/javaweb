<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>使用JSP表达式进行JSP编程</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
		<!-- 表达式：显示数据和进行数值的计算 -->
		<p>计算PI的值：</p><%=Math.PI %><br/>
		<p>100,99的最大值：</p><%=Math.max(100, 99) %><br/>
		<p>100,99的最小值：</p><%=Math.min(100, 99) %><br/>
		<p>4+5-9:</p><%=4+5-9 %><br/>
		<p>(4+5)-9==0</p><%=((4+5)-9)==0 %>
  </body>
</html>
