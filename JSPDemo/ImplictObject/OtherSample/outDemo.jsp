<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> out Demo </title>		
	</head>
	
	<body>	
		<h1>out Demo </h1>
		
		<%
			int buffer = out.getBufferSize();
			int available = out.getRemaining();
			int use = buffer - available;
		%>
		
		
		
		<h2>buffer size: <%=buffer%> </h2>
		<h2>used size: <%=use%> </h2>
		<h2>available size: <%=available%> </h2>
		
		
	</body>
</html>