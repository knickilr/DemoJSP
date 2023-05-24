<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String url = "jdbc:postgresql://localhost:5432/practice";
		String useName = "postgres";
		String password = "PASSword@123";
		String sql= "select * from public.student where rn0=103";
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection(url, useName, password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		rs.next();
	%>
	
	Rollno : <%= rs.getString(1) %><br>
	Name : <%= rs.getString(2) %><br>
	Marks : <%= rs.getString(3) %>
	
</body>
</html>