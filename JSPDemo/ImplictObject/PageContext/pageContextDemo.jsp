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
		
		<%
			String username = (String)pageContext.getAttribute("name");
			Integer age = (Integer)pageContext.getAttribute("age");
		%>
		
		<h1> user name: <%=username%> </h1>
		<h1> age: <%=age%> </h1>
		
	</body>
</html>
