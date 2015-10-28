<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> All attribute Demo </title>		
	</head>
	
	<body>	
		<h1>All attribute </h1>
		
		<%
			Enumeration enu = this.getServletContext().getAttributeNames();
			while(enu.hasMoreElements()) {
				String name = (String)enu.nextElement();
				%><h3> <%=name%> -></h3>
		<h3> <%=this.getServletContext().getAttribute(name)%> </h3><%
			}
		%>
		
		
		
	</body>
</html>