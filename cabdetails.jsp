<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
String s="select cabid,type,driver,driver_address,driver_contact,driver_identity from cab";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s);%>
<table border="6">
<th colspan="10">Cab Details</th>
<tr><td><b>CabId</b></td><td><b>Type</b></td><td><b>Cab Driver</b></td><td><b>Driver Address</b></td><td><b>Driver Contact No</b></td><td><b>Driver Identity</b></td>

<% while(rs.next()){%>
<tr><td><%=rs.getString(1)%></td><td><%= rs.getString(2)%></td><td><%= rs.getString(3)%></td><td><%=rs.getString(4) %></td><td><%= rs.getString(5) %></td><td><%=rs.getString(6) %></td><td></tr>
<%} %>

</table>
</body>
</html>