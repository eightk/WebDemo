<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Page Context Demo </title>		
	</head>
	
	<body>	
	<h1>Page Context Set to Request</h1>
		<%
			pageContext.setAttribute("name", "Richard", PageContext.REQUEST_SCOPE);
			pageContext.setAttribute("age", 28, PageContext.REQUEST_SCOPE);
		%>
		
		<jsp:forward page="../Request/requestScope.jsp"/>
	
	</body>
</html>