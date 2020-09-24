<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>reponse方法综合实例</title>
    
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
  	<%
  		String username = "";//初始化
  		String password = "";
  		Cookie[] cookies = request.getCookies();
  		if(cookies != null && cookies.length > 0){
  			for(Cookie cookie : cookies){
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
  	 <!-- 这里的acton路径怎么写？???，绝对路径和相对路径区别 -->
  	<form action = "<%=basePath %>/cookieSave.jsp" method="post">
  		<h1>这是登陆页面</h1>
  		<table border = "1" align = "center">
  			<tr>
  				<td>
  					用户名：
  				</td>
  				<td>
  					<input type = "text" name = "username" value = "<%= username %>"> 
  				</td>
  			</tr>
  			<tr>
  				<td>
  					密码：
  				</td>
  				<td>
  					<input type = "password" name = "password" value = "<%= username %>">
  				</td>
  			</tr>
  			<tr>
  				<td colspan = "2">
  				<!-- <td colspan="value"> 用法：
  					number： 设置单元格可横跨的列数。
					注释：colspan="0" 指示浏览器横跨到列组的最后一列。
  				 -->
  					<input type = "checkbox" name = "flag"> &nbsp; 记住用户名
  				</td>
  			</tr>
  			<tr align = "center">
  				<td colspan = "2">
  					<input type = "submit" value = "登录" >
  				</td>
  			</tr>
  		<!-- 若显示Processing instruction not closed. ，且检查发现所有元素标签均已闭合，重启IDE或检查index.jsp -->
  		
  		</table>
  	</form> 
  </body>
</html>
