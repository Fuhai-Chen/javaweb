<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物结算的页面</title>
    
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
  	<%request.setCharacterEncoding("UTF-8"); %>
	<h1>欢迎<%=session.getAttribute("loginname") %>进入购物结算页面</h1>
	您已经购买了水果<%=session.getAttribute("fruit") %><%=session.getAttribute("jin") %>   斤
	购买饮料 <%=request.getParameter("drink") %><%=request.getParameter("quantity") %>   瓶
	
	购物结束！欢迎下次光临
  </body>
</html>
