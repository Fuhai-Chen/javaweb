<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JSP的声明</title>
    
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
   	<%!
   		public String getHello(String name){
   		
   			return "Hello,"+name+"!";
   		}
   	
   	
   	 %>
   
   	<%=getHello("朋友") %>
   	
   	<!-- JSP声明的变量是全局的 ,一直被各线程共享，再整个页面都有效-->
   	<%!
   		int count1=1;
   	 %>
   	 <!-- count2 可理解为只在Scriptlet中起作用 -->
   	 <%
   	 	int count2=1;
   	  %>
   	  
   	  count1:<%=count1++ %>
   	  count2:<%=count2++ %>
   	
  </body>
</html>
