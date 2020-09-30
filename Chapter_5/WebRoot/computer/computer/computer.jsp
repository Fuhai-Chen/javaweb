<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'computer.jsp' starting page</title>
    
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
	<form action="computer/result.jsp" method="post">
		<h1>计算器</h1>
		<p>
			选择运算符：
			除法：<input type="radio" name="flag" value="0">
			乘法：<input type="radio" name="flag" value="1">
		</p>
		<hr>
		<p>
			第一个运算数：<input type="text" name="num1">
			
			
		</p>
		<p>
			第二个运算数：<input type="text" name="num2">
		</p>
		<hr>
		<input type="submit" value="计算">
	</form>

  </body>
</html>
