<%--
  Created by IntelliJ IDEA.
  User: liqi
  Date: 2016/6/8
  Time: 22:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:redirect url="firstDemo.jsp">
    <c:param name="username">liqi</c:param>
    <c:param name="password">aaaaa</c:param>
</c:redirect>
</body>
</html>
