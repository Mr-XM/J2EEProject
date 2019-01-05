<%--
  Created by IntelliJ IDEA.
  User: zhangyinghao
  Date: 2018/11/21
  Time: 下午11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>乘法口诀表</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
</head>
<body>
<h1 align="center">九九乘法口诀表</h1>
<hr>
<table align="center" width="100%">
    <%
        for(int i=1;i<=9;i++){
            %>
    <tr>
    <%
            for(int j=1;j<=i;j++){
                %>
        <td align="left">
            <%
                out.print(j+"*"+i+"="+j*i);
            %>
        </td>
        <%
            }
            %>
    </tr>
            <%
        }
    %>
</table>
</body>
</html>
