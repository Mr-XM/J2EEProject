<%--
  Created by IntelliJ IDEA.
  User: zhangyinghao
  Date: 2018/12/6
  Time: 下午7:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录验证界面</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset = UTF-8");
    String userName = request.getParameter("userName");
    String userPassword = request.getParameter("userPassword");
    String[] mySelectValue = request.getParameterValues("mySelect");
    if (userName.equals("abc") && userPassword.equals("123")) {
        if (mySelectValue != null) {
            for (int i = 0; i < mySelectValue.length; i++) {
                if (mySelectValue.length == 2) {
                    if (mySelectValue[i].equals("自动记录名称")) {

                        Cookie cookie = new Cookie("userName", userName);
                        cookie.setMaxAge(60 * 60);
                        response.addCookie(cookie);
                    }
                    if (mySelectValue[i].equals("自动记录密码")) {
                        Cookie cookie = new Cookie("userPassword", userPassword);
                        cookie.setMaxAge(60 * 60);
                        response.addCookie(cookie);
                    }
                }
                if (mySelectValue.length == 1) {
                    Cookie[] cookies = request.getCookies();
                    for (int j = 0; j < cookies.length; j++) {
                        cookies[j].setMaxAge(0);
                        response.addCookie(cookies[j]);
                    }
                    if (mySelectValue[i].equals("自动记录名称")) {
                        Cookie cookie = new Cookie("userName", userName);
                        cookie.setMaxAge(60 * 60);
                        response.addCookie(cookie);
                    }
                    if (mySelectValue[i].equals("自动记录密码")) {
                        Cookie cookie = new Cookie("userPassword", userPassword);
                        cookie.setMaxAge(60 * 60);
                        response.addCookie(cookie);
                    }
                }
            }
        } else {
            Cookie[] cookies = request.getCookies();
            for (int i = 0; i < cookies.length; i++) {
                cookies[i].setMaxAge(0);
                response.addCookie(cookies[i]);
            }
        }
%>
<br>
<br>
<h4 align="center">登录成功。。</h4>
<br>
<h4 align="center"><a href="LoginCookie.jsp">重新登录.....</a></h4>
<%
} else {
%>
<br>
<br>
<h4 align="center">登录失败。。</h4>
<br>
<h4 align="center"><a href="LoginCookie.jsp">重新登录....</a></h4>
<%
    }
%>

</body>
</html>
