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
			public static int currentPageNumber = 1;
			public static int maxPage = 0;
			public static int pageLength = 2;
		%>
		
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			
			try {
				currentPageNumber = Integer.parseInt(request.getParameter("currentPageNumber"));
			} catch (Exception ex) {}			
		%>
		<%!
			public void getCurrentPageNumber(int changeNumber) {
				if(changeNumber == 1) {
					currentPageNumber = ((currentPageNumber+1)>maxPage)?maxPage:(currentPageNumber+1);
				} else if (changeNumber == -1) {
					currentPageNumber = ((currentPageNumber-1)<1)?1:(currentPageNumber-1);
				} else if (changeNumber == -2) {
					currentPageNumber = 1;
				} else {
					currentPageNumber= maxPage;
				}				
			}
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
				<td>row number</td>
			</tr>
		<%
			try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
            sql = "select result.username, result.email, result.firstname, result.lastname, result.age, result.createdate, result.level, result.rownum, result.totalrow from (SELECT u.username, u.email, u.firstname, u.lastname, u.age, u.createdate, u.level, @i:=@i+1 as rownum, b.totalrow FROM testdb.user as u, (select @i:=0) as r, (select max(a.rownum) as totalrow from (SELECT @i:=@i+1 as rownum, u.* FROM testdb.user as u, (select @i:=0) as r where username like '%"+ request.getParameter("searchStr")+"%') as a) as b where username like '%"+ request.getParameter("searchStr")+"%') result where rownum >=(1+"+ (currentPageNumber-1)*pageLength +") and rownum < (1+"+ currentPageNumber*pageLength +")";

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
				int rownumber = rs.getInt(8);
				maxPage = rownumber/pageLength+1;
		%>
		
			<tr>	
				<td><%=username%></td>
				<td><%=email%></td>	
				<td><%=firstname%></td>
				<td><%=lastname%></td>
				<td><%=age%></td>
				<td><%=createdate%></td>
				<td><%=level%></td>
				<td><%=rownumber%></td>
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

		</table>
		</center>
	</body>
</html>
