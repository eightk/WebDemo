<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> 3 second jump Demo </title>		
	</head>
	
	<body>	
	<h1>Reponse 3 second jump Demo</h1>
	<h5>Jump to Hello in 3 seconds.</h5>
		<%!
			int count = 0;
		%>
		<%
			response.setHeader("refresh", "3, hello.htm");
		%>
		Jump to Hello in 3 seconds.
	</body>
</html>