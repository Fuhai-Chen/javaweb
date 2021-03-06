<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>application对象方法获取web配置信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
  	//从配置参数中获取驱动
  	String driver = application.getInitParameter("driver");
  	//从配置参数中获取数据库URL
  	String url = application.getInitParameter("url");
  	//从配置参数中获取用户名
  	String user = application.getInitParameter("user");
  	//从配置参数中获取密码
  	String pass = application.getInitParameter("pass");
  	//注册驱动
  	Class.forName(driver);
  	/*
  	 forName()方法：1、装载一个类并且对其进行实例化的操作（装载过程中的使用到的类加载器是当前类）
  	*/
  	
  	//以下是JDBC相关语句,注意在顶部page指令中import = "java.sql.*"
  	Connection conn = DriverManager.getConnection(url,user,pass);
  	//创建Statement对象
  	Statement stmt = conn.createStatement();
  	//执行查询
  	ResultSet rs = stmt.executeQuery("Select * from student");
  
   %>
  
  <body>
    <h1>此页面为测试还原源代码，因文件配置不同与数据库环境等原因，暂时无法运行。</h1>
    <h2>查询学生信息</h2>
    <table bgcolor = "#99CCFF" border = "1">
    	<tr>
    		<th>
    			姓名
    		</th>
    		<!-- 
    			th与td区别，<th>标签在单元格中居中和加粗显示（多用于表格头使用）
    		 -->
    		<th>
    			年龄
    		</th>
    		<th>
    			家庭住址
    		</th>
    	</tr>
    	<%
    		//遍历结果集rs
    		while(rs.next()){
    	%>
    	<tr>
    		<td><%=rs.getString(1)%></td>
    		<td><%=rs.getInt(1)%></td>
    		<td><%=rs.getString(1)%></td>
    	</tr>
    	<%	
    		}
    	 %>
    
    </table>
  </body>
</html>
