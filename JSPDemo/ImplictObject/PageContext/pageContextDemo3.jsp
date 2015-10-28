<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Page Context Demo </title>		
	</head>
	
	<body>	
	<h1>Page Context Set to Session</h1>
		<%
			pageContext.setAttribute("name", "Richard", PageContext.SESSION_SCOPE);
			pageContext.setAttribute("age", 28, PageContext.SESSION_SCOPE);
		%>
		
		<a href="../Session/sessionScope.jsp"> Through link </a>
	
	</body>
</html>