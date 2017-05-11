

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Women Safety</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
String s="select * from complaint";

Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s); %>
<table border="4">
<th colspan="8">View Complaints</th>
<tr><td><b>Complaint Id</b></td><td><b>Description</b></td><td><b>UserId</b></td></tr>

<% while(rs.next()){%>
<tr><td><%=rs.getString(1)%></td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td></tr>
<%} %>

</table>
</body>
</html>