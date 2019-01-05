<%--
  Created by IntelliJ IDEA.
  User: zhangyinghao
  Date: 2018/11/15
  Time: 下午9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
    <title>注册信息</title>
</head>
<body>
<%
    String loginName = request.getParameter("loginName");
    String loginPassword = request.getParameter("loginPassword");
    String passwordProtect = new String(request.getParameter("passwordProtect").getBytes("ISO-8859-1"), "utf-8");
    String programAnswer = new String(request.getParameter("programAnswer").getBytes("ISO-8859-1"), "utf-8");
    String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"), "utf-8");
%>
<h1 align="center">注册信息如下</h1>
<table align="center" border="1" width="80%">
    <tr>
        <td align="right">登录名称：</td>
        <td align="center"><%=loginName%>
        </td>
    </tr>
    <tr>
        <td align="right">登录密码：</td>
        <td align="center"><%=loginPassword%>
        </td>
    </tr>
    <tr>
        <td align="right">密码保护问题：</td>
        <td align="center"><%=passwordProtect%>
        </td>

        </td>
    </tr>
    <tr>
        <td align="right">问题答案：</td>
        <td align="center"><%=programAnswer%>
        </td>
    </tr>
    <tr>
        <td align="right">性别：</td>
        <td align="center"><%=sex%>
        </td>
    </tr>
</table>
</body>
</html>
