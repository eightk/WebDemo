<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> get real path Demo </title>		
	</head>
	
	<body>	
		<h1>get real path </h1>
		
		<%
			String path = application.getRealPath("/");
			String path2 = this.getServletContext().getRealPath("/");
		%>
		
		<h3> The real path is <%=path%> </h3>
		<h3> Using servlet context to get the real path is <%=path%> </h3>
		
	</body>
</html>