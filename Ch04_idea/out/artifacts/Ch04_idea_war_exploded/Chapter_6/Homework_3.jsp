<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/9
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通过EL实现页面相应属性的修改</title>
</head>
<%
    if (session.getAttribute("bgcolor") == null){
        session.setAttribute("bgcolor","white");
    }else{
        String bgcolor = request.getParameter("bgcolor");
        session.setAttribute("bgcolor",bgcolor);
    }
    if (session.getAttribute("fontsize") == null){
        session.setAttribute("fontsize","10");
    }else {
        String fontsize = request.getParameter("fontsize");
        session.setAttribute("fontsize",fontsize);
    }

    if (session.getAttribute("tablewidth") == null){
        session.setAttribute("tablewidth","200");
    }else {
        String tablewidth = request.getParameter("tablewidth");
        session.setAttribute("tablewidth",tablewidth);
    }

    if (session.getAttribute("border") == null){
        session.setAttribute("border","deepskyblue");
    }else {
        String border = request.getParameter("border");
        session.setAttribute("border",border);
    }
%>
<body style="background: ${bgcolor} ">
    <form action="Homework_3.jsp" method="post">
        <table style="width: ${tablewidth}px; border: ${border}; border-width: medium;font-size: ${fontsize}px">
            <tr>
                <td>背景颜色：<input type="text" name="bgcolor"></td>
            </tr>
            <tr>
                <td>字号大小：<input type="text" name="fontsize"></td>
            </tr>
            <tr>
                <td>表格宽度：<input type="text" name="tablewidth"></td>
            </tr>
            <tr>
                <td>边框：<input type="text" name="border"></td>
            </tr>
            <tr>
                <td>
                    <button type="submit">修改属性</button>
                    <button type="reset">重置</button>
                </td>
            </tr>
        </table>
    </form>


</body>
</html>
