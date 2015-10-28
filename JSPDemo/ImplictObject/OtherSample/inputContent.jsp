<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>

<html>
	<head>
		<title> input content Demo </title>		
	</head>
	
	<body>	
		<h1>input content </h1>
		
		<%
			String name = request.getParameter("filename");
			String content = request.getParameter("filecontent");
			String filename = this.getServletContext().getRealPath("/") + "note" + File.separator + name +".txt";
			
			File file = new File(filename);
			if (!file.getParentFile().exists()) {
				if (file.getParentFile().mkdirs()) {
					%>Directory is created!<%
				} else {
					%>Failed to create directory!<%
				}
			}
			
			if(!file.exists()) {
				file.createNewFile();
			}
			if(file.exists()) {
				%>file content: <br/><%
				PrintStream ps = null;
				ps = new PrintStream(new FileOutputStream(file));
				ps.println(content);
				ps.close();
				
				Scanner scan = new Scanner(new FileInputStream(file));
				scan.useDelimiter("\n");
				StringBuffer buf = new StringBuffer();
				while(scan.hasNext()) {
					buf.append(scan.next()).append("<br/>");
				}%><%=buf%><%
				scan.close();
			}
		%>
		
		
		
	</body>
</html>