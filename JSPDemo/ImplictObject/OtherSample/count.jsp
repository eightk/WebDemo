<%@page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="java.math.*"%>
<html>
	<head>
		<title> visit counter Demo </title>		
	</head>
	
	<body>	
		<h1>visit counter path </h1>
		<%!
			BigInteger count = null;
		%>
		
		<%!
			public BigInteger load(File file) {
				try {
					if(file.exists()) {
						Scanner scan = new Scanner(new FileInputStream(file));
						if(scan.hasNext()) {
							count = new BigInteger(scan.next());
						}
						scan.close();
					} else {
						count = new BigInteger("0");
						save(file, count);
					}
				} catch (Exception ex) {
					
				}
				return count;
			}
			
			public void save(File file, BigInteger count) {
				try {
					PrintStream ps = null;
					ps = new PrintStream(new FileOutputStream(file));
					ps.println(count);
					ps.close();
				} catch (Exception ex) {
					
				}
			}
		%>
		
		<%		
			String filename = this.getServletContext().getRealPath("/")+ "note" +File.separator+"count.txt";
			File file = new File(filename);
			synchronized(this) {
				count = load(file);
				count = count.add(new BigInteger("1"));
				save(file,count);
			}
		%>
		
		<h3> You are the #<%=count%> visitor.</h3>
		
	</body>
</html>