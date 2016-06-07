<%--
  Created by IntelliJ IDEA.
  User: liqi
  Date: 2016/6/5
  Time: 23:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="person" class="main.liqi.Person"></jsp:useBean>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:out value="this is first jstl demo"></c:out>


    <form action="firstDemo.jsp" method="post">
        <input type="text" name="role">
        <input type="submit" name="登录">
    </form>
    <c:if test="${param.role=='admin'}">
        <c:out value="欢迎管理员"></c:out>
    </c:if>
    <br>




    <!-- 使用out标签输出常量 -->
    <c:out value="This is our first JSTL demo"></c:out><br>
    <c:out value="${username}" default="fff"></c:out><br>
    <c:out value="${1+2}"></c:out><br>
    <%String username = "zhangsan"; request.setAttribute("username", username);%>
    <c:out value="${empty username1}"></c:out><br>
    <c:out value="${username1}" default="aaa"></c:out><br>
    <c:out value="&ltdffgg标签&gt" escapeXml="false"></c:out><br>

    <!-- 存值到scope中 -->
    <c:set value="today" var="day" scope="session"></c:set>
    <c:out value="${day}"></c:out><br>

    <c:set var="age" scope="application">eleven</c:set>
    <c:out value="${age}"></c:out><br>

    <!-- 通过set标签向person中赋值 -->
    <c:set target="${person}" property="name2" value="zhangsan"></c:set>
    <c:out value="${person.name2}"></c:out>&nbsp;&nbsp;
    <c:set target="${person}" property="age2" value="26"></c:set>
    <c:out value="${person.age2}"></c:out>&nbsp;&nbsp;
    <c:set target="${person}" property="address" value="北京市 朝阳区"></c:set>
    <c:out value="${person.address}"></c:out>&nbsp;&nbsp;<br>

    <c:set target="${person}" property="name2">zhangsan</c:set>
    <c:out value="${person.name2}"></c:out>&nbsp;&nbsp;
    <c:set target="${person}" property="age2">26</c:set>
    <c:out value="${person.age2}"></c:out>&nbsp;&nbsp;
    <c:set target="${person}" property="address">北京市 朝阳区</c:set>
    <c:out value="${person.address}"></c:out>&nbsp;&nbsp;<br>

    <!-- remove标签的用法 -->
    <c:set var="lastName" value="Lily"></c:set>
    <c:out value="${lastName}"></c:out>
    <c:set var="firstName" value="Wang"></c:set>
    <c:remove var="firstName"/>
    <c:out value="${firstName}"></c:out><br>

    <!-- catch标签的用法 -->
    <c:catch var="error">
        <c:set target="aa" property="bb">asasa</c:set>
    </c:catch>
    <c:out value="${error}"></c:out><br>

    <!-- if标签的用法 -->
    <form action="firstDemo.jsp" method="post">
        <input type="text" name="score" value="${param.score}"/>
        <input type="submit"/>
    </form>

    <%--<c:if test="${param.score>=90}" var="result" scope="session">
        <c:out value="恭喜，您的成绩是优秀！"></c:out>
    </c:if>
    <c:out value="${applicationScope.result}"></c:out>--%>

    <c:choose>
        <c:when test="${param.score>=90 && param.score<=100}">
            <c:out value="优秀"></c:out>
        </c:when>
        <c:when test="${param.score>=80 && param.score<90}">
            <c:out value="良好"></c:out>
        </c:when>
        <c:when test="${param.score>=70 && param.score<80}">
            <c:out value="中等"></c:out>
        </c:when>
        <c:when test="${param.score>=60 && param.score<70}">
            <c:out value="及格"></c:out>
        </c:when>
        <c:when test="${param.score<60 && param.score>=0}">
            <c:out value="不及格"></c:out>
        </c:when>
        <c:otherwise>
            <c:out value="您的输入有问题"></c:out>
        </c:otherwise>
    </c:choose>
    <br>
    <c:choose>
        <c:when test="${param.score==100}">
            <c:out value="太棒了，你是第一名！"></c:out>
        </c:when>
    </c:choose>
    <br>
</body>
</html>
