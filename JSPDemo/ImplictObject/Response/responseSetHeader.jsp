<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Reponse set Header Demo </title>		
	</head>
	
	<body>	
	<h1>Reponse set Header Demo</h1>
	<h5></h5>
		<%!
			int count = 0;
		%>
		<%
			response.setHeader("refresh", "2");
		%>
		count: <%=count++%>
	</body>
</html>