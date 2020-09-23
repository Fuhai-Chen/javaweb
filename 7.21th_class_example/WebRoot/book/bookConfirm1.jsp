<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>图书信息的确认界面</title>
    
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
		  request.setCharacterEncoding("UTF-8");
		  //在所有的set、get方法之前先执行setCharacterEncoding("UTF-8");（推荐此方法！！！）
		  //优点：执行一次就可，减少代码量
  	 %>
    <table>
    		<tr>
    			<td>图书名：</td>	
    			<td>
    				<%
    					String bookName=request.getParameter("bookName");
    				 %>
    				 
    				 <%=bookName %>
    				
    			</td>
    		</tr>
    		<tr>
    			<td>作者：</td>	
    			<td>
    				<%
    					String author=request.getParameter("author");
    				 %>
    				 <%=author%>
    			
    			</td>
    		</tr>
    		<tr>
    			<td>价格：</td>	
    			<td>
    				<%=request.getParameter("bookPrice") %>
    			
    			</td>
    		</tr>    	
     		<tr>
    			<td>出版社：</td>	
    			<td>
    				<%=request.getParameter("publisher") %>
    			</td>
    		</tr>   
   		 </table>
  </body>
</html>
