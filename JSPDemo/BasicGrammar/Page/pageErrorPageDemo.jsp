<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page errorPage="error.jsp"%>


<html>
	<head>
		<title> Page Demo contentType </title>		
	</head>
	
	<body>
		<h2>Saved as doc..</h2>
		<%!
			public int multiply(int x, int y) {
				return x*y;
			}
		%>
		<table border = "1">
			<%
			int result = 10/0;
			for(int i=1; i<=9; i++) {
				%><tr><%
				for(int j=1; j<=9; j++) {
					%>
					<td>
					<%=multiply(i,j)%>
					</td><%
				}%>
				</tr><%
			}%>
			<tr>
		</table>
	</body>
</html>
