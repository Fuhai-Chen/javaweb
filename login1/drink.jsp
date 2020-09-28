<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购买饮料的界面</title>
    
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
  	<form action="login1/result.jsp" method="post">
	   	<h1>欢迎进入购买饮料界面</h1>
	   	<%
	   		String fruit=request.getParameter("fruit");
	   		String jin=request.getParameter("jin");
	   		session.setAttribute("fruit", fruit);
	   		session.setAttribute("jin", jin);
	   	 %>  
	    	<h2>您之前已经购买了水果<%=fruit %> <%=jin %>  斤</h2>
	    	<h2>请选择你需要购买的饮料</h2>
	    	<select name="drink">
	    		<option value="果汁">
	    			果汁
	    		</option>
	    		<option value="可乐">
	    			可乐
	    		</option>
	    		<option value="雪碧">
	    			雪碧
	    		</option>
	    	</select>
	    	您购买饮料<input type="text" name="quantity">  瓶
	    	<input type="submit" value="购物结算">
    </form>
  </body>
</html>
