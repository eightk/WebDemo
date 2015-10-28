<%@page language="java" contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<title> Dynamic Include Demo 3 </title>	
	</head>
	
	<body>
		<%String name = null;%>

		<h2>Dynamic Include 3</h2>
		<form action="dynamicIncludeDemo3.jsp">
			<input type="text" name="name"/>
			<input type="submit" value="submit"/>
		<%name = request.getParameter("name");%>
		<jsp:include page="receive_param.jsp">
			<jsp:param name="name" value="<%=name%>"/>
			<jsp:param name="info" value="I love BANANA!!"/>
		</jsp:include>
	</body>
</html>

