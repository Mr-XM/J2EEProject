<%--
  Created by IntelliJ IDEA.
  User: zhangyinghao
  Date: 2018/11/29
  Time: 下午10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Random" %>
<html>
<head>
    <title>输入数字</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
</head>
<body>
<h1 align="center">猜数游戏</h1>
<hr>
<br>
<br>
<%
    if(session.getAttribute("number")==null){
        int number=new Random().nextInt(101);
        session.setAttribute("number",number);
        System.out.println("FirstGuess "+session.getAttribute("number"));
        session.setMaxInactiveInterval(60*30);
    }
%>
<form name="InputNumberForm" action="guess.jsp"  method="post" onsubmit="return InputCheck()">
    <table>
        <tr>
            <td><input type="text" name="number"></td>
            <td><input type="submit" value="猜数"></td>
            <td><input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
<script language="JavaScript">
    function InputCheck() {
            if (document.InputNumberForm.number.value == "") {
                alert("不能为空,请输入数字 ！");
                return false;
            }
            var getNumber =/^\d+$/;
            if(!getNumber.test(document.InputNumberForm.number.value)){
                alert("请输入类型是数值型");
                return false;
            }
            var number=document.InputNumberForm.number.value;
            if(number<0||number>100){
                alert("请输入0-100之间的数字");
                return false;
            }
            return true;
    }
</script>
</body>
</html>
