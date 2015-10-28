<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Application Demo </title>		
	</head>
	
	<body>		
		<%
			application.setAttribute("name", "Richard");
			application.setAttribute("age", 28);
		%>
		<a href="applicationScope.jsp"> Through link </a>
	
	</body>
</html>
