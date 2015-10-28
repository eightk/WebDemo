<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>

<html>
	<head>
		<title> Login Demo </title>		
	</head>
	
	<body>	
		<h1>Login Demo</h1>
		<form action="login.jsp" method = "post">
			User Name: <input type="text" name="usr"/><br/>
			Password: <input type="password" name="psw"/><br/>
			<input type="submit" value="submit"/>			
		</form>
		<%
			String name = request.getParameter("usr");
			String psw = request.getParameter("psw");
			
			if("sa".equals(name)&&"Treviso1".equals(psw)) {
				response.setHeader("refresh", "2; welcome.jsp");
				session.setAttribute("userid", name);
				%>
				<h3>Login Successful, will turn to welcome page in 2 seconds.</h3></br>
				<h3>If it doesn't work, please click <a href="welcome.jsp">here</a>.</h3></br>				
				<%
			} else {
				%><h3>Login failed.</h3></br><%
			}
		%>
	</body>
</html>