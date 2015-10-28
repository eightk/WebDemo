<%@page language="java"  contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Request Get param values Demo </title>		
	</head>
	
	<body>	
	<h1>Request Get Param Values</h1>
	<h5></h5>
		<%
			request.setCharacterEncoding("GB2312");
			String name = request.getParameter("name");
			String[] meat = request.getParameterValues("meat");
		%>
		<%=name%>
		<%if(meat!=null) {for(int i=0; i<meat.length; i++) {%>
			<%=meat[i]%>
		<%}}%>
	
	</body>
</html>