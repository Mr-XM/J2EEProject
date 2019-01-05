<%--
  Created by IntelliJ IDEA.
  User: zhangyinghao
  Date: 2018/11/15
  Time: 下午7:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
    <title>注册界面</title>
</head>
<body>
<br>
<h1 align="center">用户注册表</h1>
<hr>
<br>
<br>
<br>
<form name="registerFrom" action="showInformation.jsp" method="post" onsubmit="return check_login()">
    <table align="center" border="1" width="80%">
        <tr>
            <td align="right">登录名称：</td>
            <td align="center" width="70%"><input type="text" name="loginName" style="width: 90%"></td>
        </tr>
        <tr>
            <td align="right">登录密码：</td>
            <td align="center" width="70%"><input type="password" name="loginPassword" style="width: 90%"/></td>
        </tr>
        <tr>
            <td align="right">密码确认：</td>
            <td align="center" width="70%"><input type="password" name="confirmPassword" style="width: 90%"/></td>
        </tr>
        <tr>
            <td align="right">密码保护问题：</td>
            <td align="center" width="70%">
                <select name="passwordProtect" style="width: 90%">
                    <option value="你的宠物叫什么名？">你的宠物叫什么名？</option>
                    <option value="你最喜欢的电影？">你最喜欢的电影？</option>
                    <option value="你最好的朋友叫什么名？">你最好的朋友叫什么名？</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="right">问题答案</td>
            <td align="center" width="70%"><input type="text" name="programAnswer" style="width: 90%"/></td>
        </tr>
        <tr>
            <td align="right">性别：</td>
            <td align="center">
                <input type="radio" name="sex" value="男">男</input>
                <input type="radio" name="sex" value="女">女</input>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <div>
                    <input type="submit" value="注册"/>
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <input type="reset" value="重置"/>
                </div>
            </td>
        </tr>
    </table>
</form>
<br>
<br>
<br>
<hr>
<br>
<br>
<div align="center">@作者20164704 张英豪</div>
</body>
<script language="JavaScript">
    function check_login() {
        if (document.registerFrom.loginName.value == "") {
            alert("用户名不能为空，请输入用户名！");
            return false;
        }
        if (document.registerFrom.loginName.value.length < 4) {
            alert("用户名字符不能小于四位！请重新输入用户名");
            return false;
        }
        if (document.registerFrom.loginPassword.value == "") {
            alert("密码不能为空，请输入用密码！");
            return false;
        }
        if (document.registerFrom.loginPassword.value < 6) {
            alert("密码长度不能小于六位请重新输入密码！");
            return false;
        }
        if (document.registerFrom.loginPassword.value != document.registerFrom.confirmPassword.value) {
            alert("两次密码不一致，请重新输入");
            return false;
        }
        if (document.registerFrom.sex.value == "") {
            alert("请选择性别");
            return false;
        }
        if (document.registerFrom.programAnswer.value == "") {
            alert("请输入问题答案");
        }
        return true;

    }
</script>
</html>
