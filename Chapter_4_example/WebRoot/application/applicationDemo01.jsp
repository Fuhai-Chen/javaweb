<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'applicationDemo01.jsp' starting page</title>
    
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
    <h2>测试application对象方法，统计页面访问次数</h2>
    <%
    	if(application.getAttribute("counter") == null){	//没有访问次数时，则表示此次访问是第一次访问，定义counter为1。
    		application.setAttribute("counter","1");
    	}
    	else{
    		String strnum = null;
    		strnum = application.getAttribute("counter").toString();
    		int icount = 0;
    		icount = Integer.valueOf(strnum).intValue();
    		icount ++;
    		application.setAttribute("counter",Integer.toString(icount));
    		
    	
    	}
    
     %>
     您是第<%=application.getAttribute("counter") %>访问者！
  </body>
</html>
