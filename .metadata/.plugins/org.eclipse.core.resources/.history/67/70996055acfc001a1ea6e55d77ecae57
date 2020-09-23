<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 这里使用page指令指定错误跳转页面  -->
<%@ page errorPage = "error.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Compute.jsp' starting page</title>
    <!-- 
    	编写思路：
    	1、定义page指令里的errorPage属性，指定错误跳转页面。
    	2、利用Scriptlet执行除法操作
     -->
    
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
  	<% 
  	int a = 8 / 0;
  	out.print(a);
  	 %>
    This is my JSP page. <br>
  </body>
</html>
