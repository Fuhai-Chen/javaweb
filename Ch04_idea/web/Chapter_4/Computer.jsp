<%--
  Created by IntelliJ IDEA.
  User: 15662
  Date: 2020/9/28
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算器界面</title>
    <script type="text/javascript">
        function onClickCheck() {
            if (document.form1.firstnum.value == "" || document.form1.secnum.value == ""){
                window.alert("请将运算数字完整填写");
                return false;
            }
            if (document.form1.secnum.value == "0" && document.form1.flag.value == "divide"){
                window.alert("除数不能为0");
                return false;
            //    Boolean默认值是false！！！
            }
            //如果填的是是文字？？？怎么处理
            // isNaN()好像有些问题，null和字符会被判定为0
            //自定义errorpage页面，列出异常信息
            //错误实例
            // if (document.form1.firstnum.value.isNaN()){
            //     window.alert("请检查计算参数格式")
            // }
            // if (document.form1.secnum.value.isNaN()){
            //     window.alert("请检查计算参数格式")
            // }


            //人家是这样用的！！！
            if (isNaN(document.form1.firstnum.value)){
                window.alert("运算数框内请填写纯数字");
                return false;
            }
            if (isNaN(document.form1.secnum.value)){
                window.alert("运算数内请填写请填写纯数字");
                return false;
            }
        }

    </script>
</head>
<body>

<h1>我的计算器</h1><br>
<hr>
<form name="form1" action="result.jsp">
    请输入第一个数：<input type="text" name="firstnum"><br>
    请选择运算方式:
    <select name="flag">
        <option value = "add"> + </option>
        <option value = "minus"> - </option>
        <option value = "multi"> * </option>
        <option value = "divide"> / </option>
    </select><br>
    请输入第二个数：<input type="text" name="secnum"><br>
    <input type="submit" value="计算" onclick="return onClickCheck();">
<%--    该function定义在head中 --%>
    <input type="reset" value="重置">
</form>

</body>
</html>

