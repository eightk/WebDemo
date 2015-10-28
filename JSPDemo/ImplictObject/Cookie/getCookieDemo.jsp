<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Get Cookie Demo </title>		
	</head>
	
	<body>	
	<h1>Get Cookie Demo</h1>
	<h5></h5>
		<%
			Cookie[] c = request.getCookies();
			for(int i=0; i<c.length; i++) {
			%><h3><%=c[i].getName()%> --> <%=c[i].getValue()%></h3><br/><%
			}
		%>
	</body>
</html>