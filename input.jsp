<html>
	<head>
		<title> JSP Demo 2 input</title>		
	</head>
	
	<body>
		<%
			String str = request.getParameter("info");
			out.println("<h1>" + str + "</h1>");
		%>
	</body>
</html>