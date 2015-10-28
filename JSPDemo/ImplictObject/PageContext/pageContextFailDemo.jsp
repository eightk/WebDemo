<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Page Context Demo </title>		
	</head>
	
	<body>		
		<%
			pageContext.setAttribute("name", "Richard");
			pageContext.setAttribute("age", 28);
		%>
		
		<jsp:forward page="scope3.jsp"/>
		
	</body>
</html>
