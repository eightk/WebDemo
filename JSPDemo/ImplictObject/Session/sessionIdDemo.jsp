<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Session ID Demo </title>		
	</head>
	
	<body>	
	<h1>Session ID Demo</h1>
	<h5></h5>
		SESSION ID: <%=session.getId()%><br/>
		SESSION ID LENGTH: <%=session.getId().length()%>
	</body>
</html>