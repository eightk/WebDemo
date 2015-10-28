<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.util.*"%>

<html>
	<head>
		<title> security Demo </title>		
	</head>
	
	<body>	
		
		<h1>Config Demo </h1>
		
		<%
			Enumeration enu = config.getInitParameterNames();
			
			while(enu.hasMoreElements()) {
				String name = (String)enu.nextElement();
				%><h3> <%=name%> -> </h3>
				<h3> <%=config.getInitParameter(name)%> </h3>
				<%
			}
		%>	
	</body>
</html>