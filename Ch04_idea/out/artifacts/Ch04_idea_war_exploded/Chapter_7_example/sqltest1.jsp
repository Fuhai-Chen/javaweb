<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %><%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/8
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Chapter_7_example" %>
<%@ page import="Chapter_7_example.DriverManagerDemo" %>
<html>
<head>
    <title>JDBC连接测试</title>
</head>
<body>
<%
    // MySQL 8.0 以上版本 - JDBC 驱动名及数据库 URL
    final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    final String DB_URL = "jdbc:mysql://localhost:3306/RUNOOB?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";

    // 数据库的用户名与密码，需要根据自己的设置
    static final String USER = "root";
    static final String PASS = "1234";
%>
<%
    DriverManagerDemo dm1 = new DriverManagerDemo();
%>

</body>
</html>
