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
			public static final int pageSize = 2;			
		%>		
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;	
			int curPage = 1;	
			int pageCount = 0;
			String searchStr = request.getParameter("searchStr");
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
            sql = "select username, email, firstname, lastname, age, createdate, level from user where username like '%" + searchStr + "%'";

            pstmt = conn.prepareStatement(sql,ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
            rs = pstmt.executeQuery();
			
			rs.last();  			
			int size = rs.getRow();
			pageCount = (size%pageSize==0)?(size/pageSize):(size/pageSize+1);
			
			String tmp = request.getParameter("curPage");
			if(tmp==null) {
				tmp="1";
			}
			curPage = Integer.parseInt(tmp);
			if(curPage>=pageCount) curPage = pageCount;
			rs.absolute((curPage-1)*pageSize+1);
			
			int count=0;
			do {
				if(count>=pageSize)break;
					String username = rs.getString(1);
					String email = rs.getString(2);
					String firstname = rs.getString(3);
					String lastname = rs.getString(4);
					int age = rs.getInt(5);
					Date createdate = rs.getDate(6);
					int level = rs.getInt(7);
					count++;
			
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
		
		<%} while (rs.next());

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
		<center>
			<h1>Multi Page</h1> 
			<a href = "multiPage.jsp?curPage=1&searchStr=<%=searchStr%>" ><<</a>  
			<a href = "multiPage.jsp?curPage=<%=(curPage-1)<=0?1:(curPage-1)%>&searchStr=<%=searchStr%>" ><</a>  
			<a href = "multiPage.jsp?curPage=<%=(curPage+1)>pageCount?pageCount:(curPage+1)%>&searchStr=<%=searchStr%>" >></a>  
			<a href = "multiPage.jsp?curPage=<%=pageCount%>&searchStr=<%=searchStr%>" >>></a> <br/> 
			<%=curPage%> in <%=pageCount%></br>
		</center>

	</body>
</html>
