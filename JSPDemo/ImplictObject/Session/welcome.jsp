<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Login Demo </title>		
	</head>
	
	<body>	
		<h1>Welcome</h1>
		
		<%
			if(session.isNew()) {
				%>Welcome New User!<%
			}
			if(session.getAttribute("userid")!=null) {
			%><h3>Welcome <%=session.getAttribute("userid")%>!</h3><br/>
			<a href="logout.jsp">Log out</a><%
			} else {
				%><h3>Illegal User, please go to the <a href="login.jsp">login</a> page and login first.</h3><%
			}
		%>
		
		
	</body>
</html>