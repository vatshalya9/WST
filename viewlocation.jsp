

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
String loc=request.getParameter("locationsearch");
System.out.println("location is;;;;;"+loc);
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
String s="select type,driver,driver_contact from cab where driver_address='"+loc+"' ";

Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s); %>
<table border="2">
<th colspan="8">View Details</th>
<tr><td><b>Cab Type</b></td><td><b>DriverName</b></td><td>Contact<b></b></td></tr>

<% if(rs.next()){%>
<tr><td><%=rs.getString(1)%></td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td></tr>
<%} %>
<a href="travellerhome.jsp">Back</a>
</table>
</body>
</html>