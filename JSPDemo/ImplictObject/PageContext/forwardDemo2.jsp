<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> page context forward Demo 2 </title>		
	</head>
	
	<body>	
		<h1>page context forward Demo 2 </h1>
		
		<%
			String info = pageContext.getRequest().getParameter("info");
		%>		
		
		<h3>Info = <%=info%> </h3>
		<h3>real path = <%=pageContext.getServletContext().getRealPath("/")%> </h3>
	</body>
</html>