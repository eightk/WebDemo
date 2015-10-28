<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Request Get Header Names Demo </title>		
	</head>
	
	<body>	
	<h1>Request Get Header Names</h1>
	<h5></h5>
		<%
			Enumeration names = request.getHeaderNames();			
		%>
		<table border="1">
		<%while(names.hasMoreElements()) {%>
			<%String paramName = (String)names.nextElement();%>
			<tr>
				<td><%=paramName%></td>
				<td>
					 <%=request.getHeader(paramName)%>
				</td>
		<%}%>
		</table>
	</body>
</html>