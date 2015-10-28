<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> session time Demo </title>		
	</head>
	
	<body>	
		<h1>Session Time</h1>
		
		<%
			long start = session.getCreationTime();
			long end = session.getLastAccessedTime();
			long time = (end-start)/1000;
		%>
		
		<h3> You stay for <%=time%> seconds. </h3>
		
	</body>
</html>