<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!</h2>
<form action="<%=request.getContextPath() %>/viewAll.form" method="post">
    用户名:<input type="text" name="name">
    密码:<input type="password" name="pwd">
    <input type="submit" value="提交">
</form>
</body>
</html>
