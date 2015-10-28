<%@page contentType="text/html" pageEncoding="utf-8"%>

<html>
	<head>
		<title> char encoding Demo </title>		
	</head>
	
	<body>	
	<h1>char encoding</h1>
	<h5>seems for tomcat-6.0 the original encoding filter will override the encoding by the end...</h5>
		<%
			request.setCharacterEncoding("GB2312");
			String name = request.getParameter("name");
			String age = request.getParameter("age");
		%>
		<%=request.getCharacterEncoding()%>
		<%=name%>
		<%=age%>
	
	</body>
</html>