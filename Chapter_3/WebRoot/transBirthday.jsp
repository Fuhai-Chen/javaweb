<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <style type="text/css">
    	.tb1{
    		border-width: medium;
    		border-color: chocolate;
    		background:deepskyblue;
    	 	left:30%;
    	 	top:50%;
    	 	width:300px;
    	 	height:200px;
    	}
    	.tb2{
    		border-width: medium;
    		border-color: chocolate;
    		background:pink;
    		left:50%;
    		top:50%;
    		width:300px;
    	 	height:200px;
    	}
    </style>
    
    <title>身份证转生日页面</title>
    
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
  第一种算法<br>
  	<!-- 编写思路：
  			1、使用String数组存储id数据。
  			2、分别对数据调用substring()方法。
  			3、利用<tabel>表单构建表格显示文字。
  	 -->
  	 <!-- 这里调用了Scriptlet（脚本代码段） -->
  	 <% String id [] = {"010020199601026929","010020199711126928"}; %>
  	 <table class = "tb1">
  	 	<tr>
  	 		<td>身份证</td>
  	 		<td>生日</td>
  	 	</tr>
  	 	
  	 	<tr>
  	 		<td>
  	 			<%= id[0] %>
  	 		</td>
  	 		<!-- 
  	 			substring()方法: 返回字符串的子字符串
  	 			(可理解为python的数组切片，但只能用于单个字符串类型数据)注意S是小写
  	 			语法：
  	 			
  	 			public String substring (int beginIndex)
  	 			or
  	 			public String substring (int beginIndex, int endIndex)
  	 			beginIndex起始索引，从0开始；endIndex结束索引，不包括该值。
  	 		 -->
			<td>
				<!-- 这里调用了表达式 -->
				<%= id[0].substring(6,10)  %> - <%= id[0].substring(10,12) %> - <%= id[0].substring(12,14) %>
			</td>  	 	
  	 	</tr>
  	 	
  	 	<tr>
  	 		<td>
  	 			<%= id[1] %>
  	 		</td>
  	 		<td>
  	 			<%= id[1].substring(6,10)  %> - <%= id[1].substring(10,12) %> - <%= id[1].substring(12,14) %>
  	 		</td>
  	 	</tr>
  	 </table>
  	 
  	 <br>	
  	 	第二种算法<br>
  	 	<!-- 使用for循环来遍历数组执行显示操作，更适合实际应用(修订日期：9.20) -->
  	 <table class = "tb2">
  	 	<tr>
  	 		<td>身份证</td>
  	 		<td>生日</td>
  	 	</tr>
  	 	<!-- For loop call -->
  	 <% for(int i = 0; i < id.length; i ++){ %>
  	 	<tr>
  	 		<td>
  	 			<%= id[i] %>
  	 		</td>
  	 		<td>
  	 			<%= id[i].substring(6,10)  %> - <%= id[i].substring(10,12) %> - <%= id[i].substring(12,14) %>
  	 		</td>
  	 		
  	 	</tr>
  	 	<%} %>
  	 
  	 </table>	
  </body>
</html>
