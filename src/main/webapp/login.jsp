<%--
  Created by IntelliJ IDEA.
  User: 18626
  Date: 2020/4/20
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>登录</title>
</head>
<body>
	<form action="./check.jsp" method="get">
		<label for="loginname">账户</label>
		<input type="text" id="loginname" name="loginname" required>
		<label for="password">密码</label>
		<input type="text" id="password" name="password" required>
		<button>提交</button>
	</form>
</body>
</html>
