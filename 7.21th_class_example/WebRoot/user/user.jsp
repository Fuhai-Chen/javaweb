<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息的注册</title>
    
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
		<form action="user/userConfirm.jsp" method="post"><!--action为动作提交页面，method是提交方法，一般用post，安全性高-->
			<table>
				<tr>
					<td>用户名：</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="password"></td>
				</tr>			
				<tr>
					<td>性别：</td>
					<td>
						男：<input type="radio" name="sex" value="0">
						女：<input type="radio" name="sex" value="1">
					</td>
				</tr>
				<tr>
					<td>爱好：</td>
					<td>
						学习：<input type="checkbox" name="likes" value="0">
						游泳：<input type="checkbox" name="likes" value="1">
						游戏：<input type="checkbox" name="likes" value="2">
					</td>
				</tr>
				<tr>
					<td>掌握的语言：</td>
					<td>
						Java语言：<input type="checkbox" name="langauges" value="Java语言">
						C语言：<input type="checkbox" name="langauges" value="C语言">
						C++：<input type="checkbox" name="langauges" value="C++">
					</td>
				</tr>			
				<tr>
					<td><input type="submit" value="注册"></td>
				</tr>
						
			</table>
		
		
		
		</form>

  </body>
</html>
