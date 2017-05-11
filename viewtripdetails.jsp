

<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="100">
<title>Women Safety</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
String td="select * from trip where now()-time > 1800 and status='started'";

Statement smts=cn.createStatement();
ResultSet res=smts.executeQuery(td); %>
<table border="4">
<th colspan="8">Trip Details</th>
<tr><td><b>CabId</b></td><td><b>TravellerId</b></td><td><b>Time</b></td><td><b>Status</b></td>
 </tr>

<% while(res.next()){%>
<tr><td><%=res.getString(1)%></td><td><%= res.getString(2)%></td><td><%= res.getString(3)%></td><td><%= res.getString(4)%></td></tr>
<%} %>

</table>
</body>
</html>