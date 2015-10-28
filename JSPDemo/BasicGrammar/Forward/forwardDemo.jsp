<%@page language="java" contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<title> Forward Demo </title>		
	</head>
	
	<body>
		<%!
			String name = "Minions";
		%>
	
		<h2>before Forward</h2>
		
		<jsp:forward page="forwardDemo2.jsp">
			<jsp:param name="name" value="<%=name%>"/>
			<jsp:param name="info" value="I love BANANA!!"/>
		</jsp:forward>
	</body>
</html>

