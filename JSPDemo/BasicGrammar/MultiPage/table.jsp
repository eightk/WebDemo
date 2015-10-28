<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import= "java.sql.*"%>


<html>
	<head>
		<title> multi page Demo </title>		
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
			String sql = null;
			

		%>

		<center>
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
            sql = "select username, email, firstname, lastname, age, createdate, level from user";

            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                String username = rs.getString(1);
                String email = rs.getString(2);
                String firstname = rs.getString(3);
                String lastname = rs.getString(4);
                int age = rs.getInt(5);
                Date createdate = rs.getDate(6);
                int level = rs.getInt(7);
		%>
		
			<tr>	
				<td><%=username%></td>
				<td><%=email%></td>	
				<td><%=firstname%></td>
				<td><%=lastname%></td>
				<td><%=age%></td>
				<td><%=createdate%></td>
				<td><%=level%></td>
			</tr>
		
		<%}

        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
			if(rs !=null) {
				rs.close();
				pstmt.close();
				conn.close();
			}
        }%>
		<%=sql%>

		</table>
		</center>
	</body>
</html>
