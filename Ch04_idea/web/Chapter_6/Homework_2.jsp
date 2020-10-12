<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/9
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL实现比较两个自定义的整数值</title>
    <script type="text/javascript">
        function onClickCheck() {
            if (document.form1.num1.value == "" || document.form1.num2.value == ""){
                window.alert("请将运算数字完整填写");
                return false;
            }

            if (isNaN(document.form1.num1.value) || isNaN(document.form1.num2.value)){
                window.alert("运算数框内请填写纯数字");
                return false;
            }
        }

    </script>
</head>
<body>
    <form name="form1" action="Homework_2.jsp" method="post">
        请输入第一个数：<input type="text" name="num1" value=""><br>
        请输入第二个数：<input type="text" name="num2" value=""><br>
        <button type="submit" onclick="onClickCheck()">进行比较</button> &nbsp;&nbsp; <button type="reset">重置</button>
    </form>

    <%
        //第一次编译不传值，故加个判断，先清空session
        if (request.getParameter("num1") != null && request.getParameter("num2") != null) {
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
            //        String num11 = Integer.toString(num1);
            //        String num22 = Integer.toString(num2);

            //        double num1 = Double.parseDouble(request.getParameter("num1"));
            //        double num2 = Double.parseDuble(request.getParameter("num2"));
            String flag = "";
            session.setAttribute("num1", num1);
            session.setAttribute("num2", num2);
            if (num1 > num2) {
                flag = ">";
            } else if (num1 == num2) {
                flag = "=";
            } else {
                flag = "<";
            }
            session.setAttribute("flag", flag);
        } else {
            session.invalidate();
        }
    %>
    比较结果为：<br>
    <h1> ${num1} ${flag} ${num2} </h1>
</body>
</html>
