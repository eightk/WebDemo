<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Session Demo </title>		
	</head>
	
	<body>		
		<%
			session.setAttribute("name", "Richard");
			session.setAttribute("age", 28);
		%>
		<a href="sessionScope.jsp"> Through link </a>
	
	</body>
</html>
