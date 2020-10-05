<%@ page import="sun.applet.Main" %><%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/29
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>统计网站的访问次数</title>
</head>
<body>
<%--
    分析：
    按客户（浏览器）进行统计 --> 使用session对象（周期开始于用户访问应用程序，终止于用户关闭浏览器）
    按页面刷新进行统计 --> 使用pageContext对象（开始于页面的调用，终止于页面的关闭）
--%>
<%--<%!--%>
<%--    public void sum1(){--%>

<%--    }--%>
<%--%>--%>
<%!

%>
<%--<%--%>
<%--    if (pageContext.getAttribute("page_count") == null){ //计数为空--%>
<%--        pageContext.setAttribute("page_count",new Integer(0));--%>
<%--    }--%>
<%--    if (session.getAttribute("session_count") == null){--%>
<%--        session.setAttribute("session_count",new Integer(0));--%>
<%--    }--%>
<%--//    功能未实现。。。思路不对？--%>


<%--    Integer count1 = (Integer) pageContext.getAttribute("page_count");--%>
<%--    pageContext.setAttribute("page_count", new Integer(count1.intValue() + 1));--%>
<%--    Integer count2 = (Integer) session.getAttribute("session_count");--%>
<%--    session.setAttribute("session_count", new Integer(count2.intValue() + 1));--%>
<%--//    Integer count3 = (Integer) application.getAttribute("app_count");--%>
<%--//    application.setAttribute("app_count", new Integer(count3.intValue() + 1));--%>

<%--%>--%>
<%--    <h1>按照用户（浏览器）统计的页面访问次数:<%=pageContext.getAttribute("page_count")%>次。</h1><br>--%>
<%--    <h1>按照网页刷新次数统计的页面访问次数:<%=session.getAttribute("session_count")%>次。</h1><br>--%>
<%--    <h1>测试次数:<%=application.getAttribute("app_count")%>次。</h1><br>--%>


<%
    if(application.getAttribute("counter1")==null){
        String counter1="1";
        application.setAttribute("counter1",counter1);
    }
    else{
        int count1=Integer.valueOf((String)application.getAttribute("counter1")).intValue();
        count1 ++;
        application.setAttribute("counter1",Integer.toString(count1));
    }

    if(application.getAttribute("counter2")==null){
        String counter2="1";    //注意这里初始化为1
        application.setAttribute("counter2",counter2);
    }
    else{
        int count2=Integer.valueOf((String)application.getAttribute("counter2")).intValue();
        if (session.isNew()) {
            count2 ++;
            application.setAttribute("counter2",Integer.toString(count2));
        }

    }
%>

该网站共被访问：<%=application.getAttribute("counter1") %>次。
该网站共被访问：<%=application.getAttribute("counter2") %>次。

</body>
</html>
