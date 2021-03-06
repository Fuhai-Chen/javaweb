<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'setCEncoding.jsp' starting page</title>
    
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
    <h1>两种设置字符串编码的方法，用来解决中文乱码问题，但无法解决URL传递中文出现的乱码问题</h1> <br>
    注意区别以下几种：<br>
1、pageEncoding="UTF-8"的作用是设置JSP编译成Servlet时使用的编码。 <br>
2、contentType="text/html;charset=UTF-8"的作用是指定对服务器响应进行重新编码的编码。 <br>
3、request.setCharacterEncoding("UTF-8")的作用是设置对客户端请求进行重新编码的编码。<br>
4、response.setCharacterEncoding("UTF-8")的作用是指定对服务器响应进行重新编码的编码。 <br>
response.setCharacterEncoding("UTF-8")的作用是指定对服务器响应进行重新编码的编码。<br>
同时，浏览器也是根据这个 参数来对其接收到的数据进行重新编码（或者称为解码）。<br>
所以在无论你在JSP中设置response.setCharacterEncoding ("UTF-8")或者response.setCharacterEncoding("GBK")，<br>
浏览器均能正确显示中文（前提是你发送到浏览器的数 据编码是正确的，比如正确设置了pageEncoding参数等）。<br>
<br>
<h1>第一种方法(推荐使用！！)</h1><br>
在所有的set。。和get。。之前使用request.setCharacterEncoding("utf-8");方法，优点是写一次就好<br>
<%
	request.setCharacterEncoding("UTF-8");
	//有问题！！！！这里设置成ISO-8859-1还是可以？？？是因为没涉及到action、等提交动作？没涉及到服务器？？？(周四问老师！)
	//解释：在同一个页面中，使用的是同一个request对象，故不需要转换编码类型，（类型已经由页面代码顶部的page指令中的pageEncoding指定了！！）
	request.setAttribute("username","张三");
	request.setAttribute("password","123456");
 %>
 <!-- 先set再用表达式直接输出get -->
用户名：<%=request.getAttribute("username") %><br>
密码：<%=request.getAttribute("password") %><br>
<h1>第二种方法(不推荐使用)</h1><br>使用表达式String（）方法来规定字符串编码类型<br>

 <%=request.getAttribute("username") %>
<!-- 显示为问号？？？ -->
<!-- --> 
<!-- 对getAttribute和getParameter理解有问题，周四问杜老师 -->
<!-- getAttribute和setAttribute搭配使用，post/get提交和getParameter搭配使用
getAttribute和SetAttribute使用详解： https://blog.csdn.net/GarfieldEr007/article/details/86027012
	可以先setAttribute再getParamrter吗？
	今晚回去看！
 -->

  </body>
</html>
