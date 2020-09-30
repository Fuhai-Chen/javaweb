<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
  	session.setAttribute("username","sunny");
	session.setAttribute("password","123456");
	//先设定默认值
   %>
  
  <body bgcolor = "#fffddd">
  	<!-- action的提交地址应该从该文件的所在文件夹(包含)开始写！
  		例如：login.jsp所在文件夹为session，故从session开始写，包含session但前面不加斜线。
  	
  	 -->
  	<form action = "session/loginSuccess.jsp" method = "post">
  		<h1>山东财政信息发布平台</h1>
  		<table border = "1" align = "center">
  			<tr>
  				<td>
  					用户名：
  				</td>
  				<td>
  					<input type = "text" name = "username" value = <%=(String)session.getAttribute("username") %> /><!-- 这里取值时没有调用getParameter，表单输入的信息无意义 -->
  				</td>
  			</tr>
  			<tr>
  				<td>
  					密码：
  				</td>
  				<td>
  					<input type = "password" name = "password" value = <%=(String)session.getAttribute("password") %> />
  				</td>
  			</tr>
  			<tr align = "center">
  				<td colspan = "2">
  					<input type = "submit" value = "登   录">
  				</td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
