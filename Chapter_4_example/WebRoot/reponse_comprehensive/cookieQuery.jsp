<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cookieQuery.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-color: deepskyblue">
  	<% request.setCharacterEncoding("UTF-8"); %>
  	<%
  		String username = "";
  		String password = "";
  		Cookie [] cookies = request.getCookies();
  		if(cookies != null && cookies.length > 0){
  			for(Cookie cookie:cookies){
  				if(cookie.getName().equals("username")){
  					username = cookie.getValue();
  				}
  				if(cookie.getName().equals("password")){
  					password = cookie.getValue();
  				}
  				response.addCookie(cookie);

  			}
  		 
  		}
  	 %>
  	 <h2>用户名为： &nbsp; <%= username %></h2>
  	 <h2>密码为： &nbsp; <%= password %></h2>
  </body>
</html>
