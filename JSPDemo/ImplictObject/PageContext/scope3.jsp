<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> scope3 </title>		
	</head>
	
	<body>		
	<h1> should not be able to load the pageContext from other page: </h1>
		<%
			String username = (String)pageContext.getAttribute("name");
			Integer age = (Integer)pageContext.getAttribute("age");
		%>
		<h1> user name: <%=username%> </h1>
		<h1> age: <%=age%> </h1>
		
	</body>
</html>
