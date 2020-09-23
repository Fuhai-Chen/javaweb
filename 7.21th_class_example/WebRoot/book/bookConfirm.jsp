<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>图书信息的确认界面（使用String方法来避免汉字乱码）</title>
    
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
    <table>
    		<tr>
    			<td>图书名：</td>	
    			<td>
					<%
						//form表单提交，使用getParameter()方法
    					String bookName=request.getParameter("bookName");
    				 %>
					<!--（这里String的get和形式转换分开进行，使用表达式输出）
					getByte的形参可理解为以什么编码方式将数据读进来，而String()方法的第二个形参则是表示转化为字符串时如何编码输出。
					
					-->
					
    				 <%=new String(bookName.getBytes("iso-8859-1"),"UTF-8") %>
    				
    			</td>
    		</tr>
    		<tr>
    			<td>作者：</td>	
    			<td>
    				<%
    					String author=request.getParameter("author");
    				 %>
    				 <%=new String(author.getBytes("iso-8859-1"),"UTF-8") %>
    			
    			</td>
    		</tr>
    		<tr>
    			<td>价格：</td>	
    			<td>
					<!--这里不再定义中间字符串，直接通过一个表达式转换并输出-->

    				<%=new String(request.getParameter("bookPrice").getBytes("iso-8859-1"),"UTF-8") %>
    			
    			</td>
    		</tr>    	
     		<tr>
    			<td>出版社：</td>	
    			<td>
    				<%=new String(request.getParameter("publisher").getBytes("iso-8859-1"),"UTF-8") %>
    			</td>
    		</tr>   
   		 </table>
  </body>
</html>
