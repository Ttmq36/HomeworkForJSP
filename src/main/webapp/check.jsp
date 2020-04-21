<%--
  Created by IntelliJ IDEA.
  User: 18626
  Date: 2020/4/20
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Properties" %>
<%
	//获取查询中的参数：账户account和密码password
	String loginname = request.getParameter("loginname");
	String password = request.getParameter("password");
	//连接数据库
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}
	Properties properties = new Properties();
	properties.put("user", "root");
	properties.put("password", "NJmq020206");
	String url = "jdbc:mysql://localhost:3306/books?serverTimezone=UTC&characterEncoding=utf-8";

	boolean canLogin = false;
	Statement sta = null;
	try{
		Connection con = DriverManager.getConnection(url, properties);
		sta = con.createStatement();

		String sql = String.format("SELECT * FROM userinfo WHERE loginname = '%s' AND password = '%s'",loginname, password);

		ResultSet rs = sta.executeQuery(sql);
		if(rs.next()){
			canLogin = true;
		}
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		if(sta != null){
			sta.close();
		}
	}
%>
<html>
<head>
	<title>登录验证</title>
</head>
<body>
	<% if(!canLogin){ %>
		<h1>登入失败</h1>
		<h1>用户不在数据库中</h1>
	<% }else{ %>
		<h1>登入成功</h1>
	<% } %>
</body>
</html>
