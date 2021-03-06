<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查看是否保存了用户名</title>
   	<!-- 中间界面（处理cookie值，并添加超链接，跳转到查看登录信息的页面） -->
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
  <%request.setCharacterEncoding("UTF-8"); %><!-- 定义编码格式，防止乱码 -->
  <%
  //获取信息
  	String username = request.getParameter("username");
  	String password = request.getParameter("password");
  	String[] flag = request.getParameterValues("flag");
  	if(flag != null && flag.length > 0){//复选框选中记住用户名后，flag[]数组的长度应该大于0
  		//1、新建cookie
  		Cookie cookie1 = new Cookie("username",username);
  		Cookie cookie2 = new Cookie("password",password);
  		//2、设置时效（1天）
  		cookie1.setMaxAge(1*23*60*60);//这里的单位为秒！！
  		cookie2.setMaxAge(1*23*60*60);
  		//3、把cookie对象存放在response中
  		response.addCookie(cookie1);
  		response.addCookie(cookie2);
  	}else{
  		Cookie[] cookies = request.getCookies();
  		if(cookies != null && cookies.length > 0){
  			for(Cookie cookie:cookies){//foreach遍历
  				if(cookie.getName().equals("username")){
  					cookie.setMaxAge(0);
  				}
  				if(cookie.getName().equals("password")){
  					cookie.setMaxAge(0);
  				}
  				response.addCookie(cookie);//注意：addCookie方法的"c"要大写
  			}
  		
  		}
  	
  	}
  	
  	
   %>
  <a href = "<%=basePath %>/reponse_comprehensive/cookieQuery.jsp">查看是否保存用户名和密码</a>
  </body>
</html>
