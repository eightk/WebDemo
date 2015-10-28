<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Request Demo </title>		
	</head>
	
	<body>		
		<%
			request.setAttribute("name", "Richard");
			request.setAttribute("age", 28);
		%>
		<jsp:forward page="requestScope.jsp"/>
	
	</body>
</html>
