<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/23
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>控制登录界面</title>
</head>
<body>
<%--创建数据对象，保存用户登录信息；调用方法进行验证；验证通过，转发至welcome.jsp，否则请求重新登录--%>
<%--创建JavaBean实例对象--%>
    <jsp:useBean id="user" class="Chapter_12_example.UserBean"></jsp:useBean>
<%--利用请求参数给user对象属性进行赋值--%>

<%--<jsp:setProperty name="user" property="*" value="xxxxxxx"/>--%> value是直接写值
<%--<jsp:setProperty name="user" property="*" param="xxxxxxx"/>--%> param是从指定参数中获取值，例如form表单（对应的元素name属性）


    <jsp:setProperty name="user" property="*"/>
    <jsp:useBean id="userCheckBean" class="Chapter_12_example.UserCheckBean"/>
    <%
        boolean flag = userCheckBean.checkUser(user);
        if (flag){  //登录校验通过,服务器请求转发到welcome.jsp页面
            request.getRequestDispatcher("welcome.jsp").forward(request,response);
        }else {     //校验未通过
            request.getRequestDispatcher("error.jsp").forward(request,response);
        }
    %>


</body>
</html>
