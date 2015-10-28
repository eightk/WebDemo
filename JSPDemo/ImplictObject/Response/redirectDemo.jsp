<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> redirect Demo </title>		
	</head>
	
	<body>	
	<h1>Reponse redirect Demo</h1>
	<h5>Redirect to hello.htm</h5>
		<%
			response.sendRedirect("hello.htm");
		%>
	</body>
</html>