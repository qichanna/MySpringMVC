<%--
  Created by IntelliJ IDEA.
  User: liqi
  Date: 2016/6/5
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:out value="this is first jstl demo"></c:out>
    <!-- 使用out标签输出常量 -->
    <c:out value="This is our first JSTL demo"></c:out><br>
    <c:out value="${username}" default="fff"></c:out><br>
    <c:out value="${1+2}"></c:out><br>
    <%String username = "zhangsan"; request.setAttribute("username", username);%>
    <c:out value="${empty username1}"></c:out><br>
    <c:out value="${username1}" default="aaa"></c:out><br>
    <c:out value="&ltdffgg标签&gt" escapeXml="false"></c:out><br>
</body>
</html>
