<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Request Get param Names Demo </title>		
	</head>
	
	<body>	
	<h1>Request Get Param Names</h1>
	<h5></h5>
		<%
			Enumeration names = request.getParameterNames();			
		%>
		<table border="1">
		<%while(names.hasMoreElements()) {%>
			<%String paramName = (String)names.nextElement();%>
			<tr>
				<td><%=paramName%></td>
				<td>
					<%if(paramName.startsWith("**")) {
						String paramValues[] = request.getParameterValues(paramName);
						for(int i=0; i<paramValues.length; i++) {
							%> <%=paramValues[i]%> <%
						}
					} else {
						%> <%=request.getParameter(paramName)%> <%
					}%>
				</td>
		<%}%>
		</table>
	</body>
</html>