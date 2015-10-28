<%@page language="java" contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<title> Dynamic Include Demo 2 </title>		
	</head>
	
	<body>
		<%!
			String name = "Minions";
		%>
	
		<h2>Dynamic Include with value pass</h2>
		
		<jsp:include page="receive_param.jsp">
			<jsp:param name="name" value="<%=name%>"/>
			<jsp:param name="info" value="I love BANANA!!"/>
		</jsp:include>
	</body>
</html>

