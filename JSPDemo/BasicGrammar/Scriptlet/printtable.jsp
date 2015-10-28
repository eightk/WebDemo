<html>
	<head>
		<title> print table jsp </title>		
	</head>
	
	<body>
		<jsp:scriptlet>
			int rows = 0;
			int cols = 0;
			try {
				rows = Integer.parseInt(request.getParameter("rows"));
				cols = Integer.parseInt(request.getParameter("cols"));
			} catch (Exception ex) {
			}
		</jsp:scriptlet>
		<table border = "1">
			<%for(int i=1; i<=rows; i++) {
				%><tr><%
				for(int j=1; j<=cols; j++) {
					%>
					<td>
					<%=i*j%>
					</td><%
				}%>
				</tr><%
			}%>
			<tr>
		</table>
		<FORM>
			<INPUT Type="button" VALUE="Back" onClick="history.go(-1);return true;">
		</FORM>
	</body>
</html>