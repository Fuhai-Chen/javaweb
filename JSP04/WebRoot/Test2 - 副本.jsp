<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Scriptlet脚本代码段</title>
    
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
    	String name="Jack";
    	System.out.print(name);
    	out.print(name);
     %>
       <h1>以直角三角形的形式显示数字</h1>
       
       <%
       		for(int i=1;i<10;i++){
       			for(int j=1;j<=i;j++){
       				out.print(j+" ");
       			}
       			out.print("<br/>");
       		}       
       
        %>
       
       
  </body>
</html>
