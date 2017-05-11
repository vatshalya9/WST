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
String s="select policeid,statiion_name,location,station_contact,email,contact_no from police";

Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s); %>
<table border="2">
<th colspan="8">View Details</th>
<tr><td><b>PoliceId</b></td><td><b>StationName</b></td><td><b>Location</b></td><td><b>StationContact</b></td><td><b>Email</b></td><td><b>ContactNumber</b></td><td><b>Modify</b></td></tr>

<% while(rs.next()){%>
<tr><td><%=rs.getString(1)%></td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td><td><%=rs.getString(4) %></td><td><%= rs.getString(5) %></td><td><%=rs.getInt(6) %></td><td><a href="deletepolice.jsp?userd=<%= rs.getString(1) %>"> Delete</a></td></tr>
<%} %>

</table>
</body>
</html>