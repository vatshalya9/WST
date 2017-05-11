<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Update Page</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
Statement st1=con1.createStatement();
String sc="select complaintid,description,travellerid,policeid,status from complaint";
ResultSet rs1=st1.executeQuery(sc);%>
<table border="10">
<th colspan="14">Update Complaints</th>
<tr><td><b>Complaint Id</b></td><td><b>Description</b></td><td><b>Traveller Id</b></td><td><b>Police Id</b></td><td><b>Status</b></td><td><b>Modify</b></td>
<% while(rs1.next()){%>
<tr><td><%=rs1.getString(1)%></td><td><%= rs1.getString(2)%></td><td><%= rs1.getString(3)%></td><td><%=rs1.getString(4) %></td>
<td><%= rs1.getString(5) %></td><td><a href="updatestatus.jsp?cid=<%= rs1.getString(1) %>">Update</a></td></tr>
<%} %>

</table>
</body>
</html>
