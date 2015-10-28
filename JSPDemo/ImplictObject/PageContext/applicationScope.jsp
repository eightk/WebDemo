<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Application Scope  </title>		
	</head>
	
	<body>		
		<h1> Application can pass attribute through link </h1>
		<h4>  </h4>
		<%
			String username = (String)application.getAttribute("name");
			Integer age = (Integer)application.getAttribute("age");
		%>
		
		<h1> user name: <%=username%> </h1>
		<h1> age: <%=age%> </h1>
		
	</body>
</html>
