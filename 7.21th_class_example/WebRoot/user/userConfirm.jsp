<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息的确认界面</title>
    
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
		  //提前设置字符编码
  	 %>
	<table>
				<tr>
					<td>用户名：</td>
					<td>
						<%
							//user界面中是通过form表单进行提交的，故这里获取数据时使用getParameter()方法。
							String username=request.getParameter("username");
						 %>
						 <%=username %>
					</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td>
						<%
							String password=request.getParameter("password");
						%>
						<%=password %>
					</td>
				</tr>			
				<tr>
					<td>性别：</td>
					<td>
						<%
							String sex=request.getParameter("sex");
							if("0".equals(sex)){
								out.print("男");
							}else{
								out.print("女");
							}
						 %>
					</td>
				</tr>
				<tr>
					<td>爱好：</td>
					<td>
						<%
							//语言表单为复选框，故这里使用getParameterValues()方法，且返回值为String数组！！！
							String[] likes=request.getParameterValues("likes");
							if(likes!=null&&likes.length>0){
								for(String like:likes){
									if("0".equals(like)){
										out.print("学习");
									}else if("1".equals(like)){
									
										out.print("游泳");
									}else{
										out.print("游戏");
									}		

								}
							
							}
						
						
						
						 %>
					
					</td>
				</tr>
				<tr>
					<td>掌握的语言：</td>
					<td>
						<%
							String[] langauges=request.getParameterValues("langauges");
							if(langauges!=null&&langauges.length>0){
								for(String lang:langauges){
									out.print(lang);
								}
							
							}
						 %>
					
					</td>
				</tr>			
				
						
			</table> 
	 </body>
</html>
