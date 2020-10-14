<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/10/11
  Time: 8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL实现学生成绩统计并显示(带前端获取数据)</title>
    <script type="text/javascript">
        function onClickCheck() {
            if (document.form1.java.value == "" || document.form1.math.value == "" || document.form1.jsp.value == "" || document.form1.english.value == "" || document.form1.accounting.value == ""){
                window.alert("请将各科成绩填写完整");
                return false;
            }

            if (isNaN(document.form1.java.value) || isNaN(document.form1.math.value) || isNaN(document.form1.jsp.value) || isNaN(document.form1.accounting.value) || isNaN(document.form1.english.value)){
                window.alert("成绩框内请填写纯数字");
                return false;
            }
        }

    </script>
</head>
<body>
<%--代码有问题！！！！--%>


<h1>请输入成绩</h1>
    <form action="Homework_1_1.jsp" method="post" name="form1">
    Java：<input type="text" name="java"><br>
    高等数学：<input type="text" name="math"><br>
    Jsp：<input type="text" name="jsp"><br>
    大学英语：<input type="text" name="english"><br>
    会计学：<input type="text" name="accounting"><br>
    <button type="submit" onmousedown="onClickCheck()">提交成绩</button>
</form>
总分为： ${sum}<br>
平均分为： ${avg}
    <script>
        var input = document.getElementsByTagName("input");
        for (var i = 0; i < 5; i++) {
            input[i].onblur = function() {
                if (parseInt(this.value) > 100) {
                    alert("对不起，您输入的数字过大!");
                    this.value = "";
                }
            };
        }

    </script>
<%--获取计算结果--%>
<%
    if (request.getParameter("java") != null || request.getParameter("math") != null || request.getParameter("jsp") != null || request.getParameter("english") != null || request.getParameter("accounting") != null){
        int java = Integer.parseInt(request.getParameter("java"));
        int math = Integer.parseInt(request.getParameter("math"));
        int jsp = Integer.parseInt(request.getParameter("jsp"));
        int english = Integer.parseInt(request.getParameter("english"));
        int accounting = Integer.parseInt(request.getParameter("accounting"));
        int sum = java + math + jsp + english + accounting;
        int avg = sum / 5;
        //注意这里跨页面，参数存到sesion里
        session.setAttribute("sum", sum);
        session.setAttribute("avg", avg);
        //重定向到原页面
        response.sendRedirect("Homework_1_1.jsp");
    } else {
        session.invalidate();
    }
%>

</body>
</html>
