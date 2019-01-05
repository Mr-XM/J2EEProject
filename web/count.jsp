<%@ page import="Untils.FileUntils" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: zhangyinghao
  Date: 2018/11/21
  Time: 下午11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta name="viewport"
      content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
<html>
<head>
    <title>网站计数器</title>
</head>
<body>
<h1 align="center">网站计数器</h1>
<hr>
<%
    String oldCount= FileUntils.getDataFromFile("count");
    String nowCount="";
    if(oldCount.isEmpty()){
        nowCount="1";
        File file=new File(FileUntils.filePath + "count" + ".txt");
        FileUntils.writeInToFile(file,nowCount);
    }else {
        int k=Integer.parseInt(oldCount)+1;
        nowCount=Integer.toString(k);
        File file=new File(FileUntils.filePath + "count" + ".txt");
        FileUntils.writeInToFile(file,nowCount);
    }

%>
<h3>你好，你是本站第个
    <%
      for(int i=0;i<nowCount.length();i++){
          %><image src="Images/<%=nowCount.charAt(i)%>.gif"><%
      }
    %>
    访问者</h3>
</body>
</html>