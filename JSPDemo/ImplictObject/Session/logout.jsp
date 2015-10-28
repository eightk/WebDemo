<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Login Demo </title>		
	</head>
	
	<body>	
		<h1>Log out</h1>
		
		<%
			response.setHeader("refresh", "2;login.jsp");
			session.invalidate();
		%>
		
		<h3>You have logged out, turn to login page in 2 seconds.</h3><br/>
		<h3>If it doesn't work, please click <a href="login.jsp">here</a>!</h3>
	</body>
</html>