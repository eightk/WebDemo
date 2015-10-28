<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@page import="java.security.*"%>

<html>
	<head>
		<title> Security Demo </title>		
	</head>
	
	<body>	
	<h1>Security</h1>
	<h5></h5>
	<%
	request.login("sa", "Treviso1");
	String usrname = null;
	if(request.getUserPrincipal()!=null){
		usrname = request.getUserPrincipal().getName();
	}%>
	<%=usrname%>
		<%
			if(request.isUserInRole("admin")) {
			%><h1> Welome! </h1><%
			}		
		%>
		
	</body>
</html>