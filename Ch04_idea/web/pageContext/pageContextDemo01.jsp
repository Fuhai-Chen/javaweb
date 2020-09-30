<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/28
  Time: 8:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <title>pageContext对象方法运用</title>
</head>
<body>
 <%
     //可以访问其他的隐式对象
     ServletRequest request1 =  pageContext.getRequest();//获取request
     pageContext.getResponse();//获取response
     HttpSession session1 = pageContext.getSession();//获取session
     pageContext.getOut();//获取session
     ServletContext application1 = pageContext.getServletContext();

     //可以在当前JSP页面范围中存放信息
     pageContext.setAttribute("username","Merry");
     //和request进行对比
     request.setAttribute("username","Jack");

 %>
    request:<br>
    <%= request%><br>
    <%= request1%><br>
    session:<br>
    <%= session%><br>
    <%= session1%><br>
<%
    //演示把请求跳转到另一个页面，在另一个页面是否还能获取page范围中的信息
    request.getRequestDispatcher().forward(request,response);
%>

</body>
</html>
