<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校验界面</title>
    
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
			String loginName=request.getParameter("loginName");
			String loginPass=request.getParameter("loginPass");
			if("张三".equals(loginName)&&"123".equals(loginPass)){
				//登陆成功
				
				//RequestDispatcher requestDispatcher=request.getRequestDispatcher("success.jsp");
				//requestDispatcher.forward(request, response);
				//请求转发：地址栏不发生变化，使用的同一个request对象;
				//request.setAttribute("loginname", loginName);
				//request.getRequestDispatcher("success.jsp").forward(request, response);
				
				//设置响应头
				//session.setAttribute("loginname", loginName);
				//out.print("2秒后跳转至成功页面！");
				//response.setHeader("refresh", "2;url=success.jsp");
				
				//请求重定向/响应转发：地址栏发生了变化。两个页面之间使用的不是同一个request对象
				session.setAttribute("loginname", loginName);
				response.sendRedirect("success.jsp");
				
			}else{
				//登录失败
				request.setAttribute("error", "loginName or loginPass is error");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			
			
			
		
		 %>


  </body>
</html>
