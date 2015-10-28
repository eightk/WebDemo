<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>
<html>
	<head>
		<title> Request Scope 2  </title>		
	</head>
	
	<body>		
		<h1> request can not pass value through link </h1>
		<h4> link asks the server for the second request which replace the first one with attribute. </h4>
		<%
			String username = (String)request.getAttribute("name");
			Integer age = (Integer)request.getAttribute("age");
		%>
		
		<h1> user name: <%=username%> </h1>
		<h1> age: <%=age%> </h1>
		
	</body>
</html>
