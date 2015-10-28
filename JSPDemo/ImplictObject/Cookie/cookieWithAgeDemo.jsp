<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Cookie with age Demo </title>		
	</head>
	
	<body>	
	<h1>Cookie with age Demo</h1>
	<h5></h5>
		<%
			Cookie c1 = new Cookie("cookie1", "kuki jiang~~~");
			Cookie c2 = new Cookie("cookie2", "oni jiang~~~");
			c1.setMaxAge(30);
			c2.setMaxAge(30);
			response.addCookie(c1);
			response.addCookie(c2);
		%>
	</body>
</html>