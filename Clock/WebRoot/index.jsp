<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JSP 手表页面</title>
    <!-- 实现手表的功能 显示并自动刷新时间 每秒刷新一次 -->
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta http-equiv="refresh" content="1">
	<!-- HTML <meta> http-equiv 属性 指定间隔时间刷新文档 content为参数，单位为秒
	菜鸟教程链接： https://www.runoob.com/tags/att-meta-http-equiv.html
	 -->
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <%
  Date dt1 = new Date();
  SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm:ss");
  String time = sdf1.format(dt1);
   %>
  <!-- 为什么不能用toString？
  		toString()方法是返回此对象本身（即该对象已经是一个字符串）
  		toString()方法介绍：https://www.runoob.com/java/java-string-tostring.html

		SimpleDateFormat继承关系：(text类型，采用格式化输出)
			java.lang.Object
   			|
   			+----java.text.Format
           		|
           		+----java.text.DateFormat
                   		|
                   		+----java.text.SimpleDateFormat
        SimpleDateFormat使用详解：	https://blog.csdn.net/gubaohua/article/details/575488
		
		String.format()函数 创建格式化的字符串以及连接多个字符串对象
		具体用法： https://segmentfault.com/a/1190000019350486?utm_source=tag-newest
   -->
    <%= time %> <br>
  </body>
</html>
