<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Request Other Info Demo </title>		
	</head>
	
	<body>	
	<h1>Request Get Other Info</h1>
	<h5></h5>
		<%
			String method = request.getMethod();
			String ip = request.getLocalAddr();
			String path = request.getServletPath();
			String contextPath = request.getContextPath();
			int port = request.getLocalPort();
		%>
		<table border="1">		
			<tr>
				<td>method</td>
				<td><%=method%></td>
			</tr>
			<tr>
				<td>ip</td>
				<td><%=ip%></td>
			</tr>
			<tr>
				<td>path</td>
				<td><%=path%></td>
			</tr>
			<tr>
				<td>port</td>
				<td><%=port%></td>
			</tr>
			<tr>
				<td>contextPath</td>
				<td><%=contextPath%></td>
			</tr>
		</table>
	</body>
</html>