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
			public static int pageLength = 2;			
			public static int maxPage = 0;
		%>		
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;	
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
		<%
			try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASS);
            sql = "select result.totalrow from (SELECT u.username, u.email, u.firstname, u.lastname, u.age, u.createdate, u.level, @i:=@i+1 as rownum, b.totalrow FROM testdb.user as u, (select @i:=0) as r, (select max(a.rownum) as totalrow from (SELECT @i:=@i+1 as rownum, u.* FROM testdb.user as u, (select @i:=0) as r where username like '%"+ request.getParameter("searchStr")+"%') as a) as b where username like '%"+ request.getParameter("searchStr")+"%') result where rownum >=(1+"+ (currentPageNumber-1)*pageLength +") and rownum < (1+"+ currentPageNumber*pageLength +")";

            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
			
			

            if(rs.next()) {
				int rownumber = rs.getInt(1);
				maxPage = rownumber/pageLength+1;
		%>
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
		<center>
			<h1>Multi Page</h1> 
			current page #:<%=currentPageNumber%>
			max page #:<%=maxPage%>
			
			<form action="multiPage.jsp" method="post">
				<h4>Search by User Name: </h4> <input type="text" name="searchStr"/>
				<input type="submit" value="Submit"/> <input type="reset" value="Reset"/> 				
			</form>
		</center>
		<%String searchStr = request.getParameter("searchStr");%>
		<jsp:include page="table.jsp">
			<jsp:param name="currentPageNumber" value="<%=currentPageNumber%>"/>
			<jsp:param name="searchStr" value="<%=searchStr%>"/>
		</jsp:include>
	</body>
</html>
