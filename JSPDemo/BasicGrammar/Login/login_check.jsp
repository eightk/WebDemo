<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.sql.*"%>


<html>
	<head>
		<title> login check </title>		
	</head>
	
	<body>		
		<%!
			public static final String DBDRIVER = "org.gjt.mm.mysql.Driver";
			public static final String DBURL = "jdbc:mysql://localhost:3306/testdb";
			public static final String DBUSER = "sa";
			public static final String DBPASS = "Treviso1";
		%>
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String usr = request.getParameter("usr");
			String psw = request.getParameter("psw");
			boolean hasUser = false;
			String firstname = "";
			String lastname = "";
		%>
		<table border = "1">
		<tr>	
				<td>user name</td>
				<td>email</td>	
				<td>first name</td>
				<td>last name</td>
				<td>age</td>
				<td>create date</td>
				<td>level</td>
			</tr>
		<%
			try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
            String sql = "SELECT username, password, firstname, lastname from user ";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                String username = rs.getString(1);
                String password = rs.getString(2);
				if(username.equals(usr)&&password.equals(psw)) {
					hasUser = true;
					firstname = rs.getString(3);
					lastname = rs.getString(4);
				}
			}
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            rs.close();
            pstmt.close();
            conn.close();
        }%>
		<%if(hasUser) {%>
			<jsp:forward page="login_success.jsp">
				<jsp:param name="firstname" value="<%=firstname%>"/>
				<jsp:param name="lastname" value="<%=lastname%>"/>
			</jsp:forward>
		<%} else {%>
			<jsp:forward page="login_failed.htm"/>
		<%}%>
		
		</table>
	</body>
</html>
