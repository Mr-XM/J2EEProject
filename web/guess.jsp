<%--
  Created by IntelliJ IDEA.
  User: zhangyinghao
  Date: 2018/11/29
  Time: 下午11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.Random" %>
<html>
<head>
    <title>猜数游戏</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
</head>
<body>
<h1 align="center">猜数游戏</h1>
<hr>
<%
    //int sessionNumber=Integer.parseInt(session.getAttribute("number").toString());
    int sessionNumber = (Integer) session.getAttribute("number");
    int number = Integer.parseInt(request.getParameter("number"));
    if (sessionNumber == number) {
        out.println("恭喜你猜对了 ！");
        //session.invalidate();
        session.setAttribute("number", new Random().nextInt(101));
        System.out.println("guess " + session.getAttribute("number"));
        session.setMaxInactiveInterval(60 * 30);
%>
<br>
<a href="InputNumber.jsp">开始新的一局</a>
<%
    } else if (sessionNumber < number) {
        out.println("大了");
%>
<br>
<a href="InputNumber.jsp">再试一次</a>
<%
} else {
    out.println("小了");
%>
<br>
<a href="InputNumber.jsp">再试一次</a>
<%
    }
%>
</body>
</html>
