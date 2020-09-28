<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购买水果的界面</title>
    
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
	<h1>欢迎<%=session.getAttribute("loginname") %>进入购买水果的界面</h1>
	<form action="login1/drink.jsp" method="post">
		<h1>请选择你需要的水果</h1>
		<select name="fruit">
			<option value="00">
			苹果
			</option>
			<option value="香蕉">
			香蕉
			</option>
			<option value="橘子">
			橘子
			</option>
		</select>
	
		您购买水果<input type="text" name="jin">  斤
		<input type="submit" value="继续购买">
	</form>


  </body>
</html>
