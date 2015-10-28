<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Request Scope  </title>		
	</head>
	
	<body>		
		<h1> request can pass value to the forward page </h1>
		<%
			String username = (String)request.getAttribute("name");
			Integer age = (Integer)request.getAttribute("age");
		%>
		
		<h1> user name: <%=username%> </h1>
		<h1> age: <%=age%> </h1>
		
	</body>
</html>
