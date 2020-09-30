<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginSuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor = "pink">
  	<%
  	/*
  		String username = (String)request.getParameter("username");
  		String password = (String)request.getParameter("password");
  		*/
  		
  		//这里两个页面使用了setAtrribute和getAttribute，故此页面显示的参数为login.jsp页面中提前set好的，并不是form表单中自定义的信息
  		String username = (String)session.getAttribute("username");
  		String password = (String)session.getAttribute("password");
  		session.setMaxInactiveInterval(5);//设置会话有效期为5秒
  		/*	session作用域开始于客户连接到程序的某个界面，结束语与服务器断开连接
  			在此页面调用setMaxInactiveInterval(5)语句设置会话有效期为5秒，5秒是基于此语句执行后进行运算的。
  			并不是自第一个login.jsp页面开始计时。
  		*/
  		//session.invalidate();
  		//中断当前的session对象
  	 %>
  	 用户登录成功！<br>
  	 您的用户名是：<%=username %>
  	 您的密码是：<%=password %>
  </body>
</html>
