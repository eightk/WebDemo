<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> page context forward Demo </title>		
	</head>
	
	<body>	
		<h1>page context forward Demo </h1>
		
		<%
			pageContext.forward("forwardDemo2.jsp?info=kukijiang");
		%>		
	</body>
</html>