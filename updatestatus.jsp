<%@page import="java.sql.*"%>
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

String complaint=request.getParameter("cid");
System.out.println("+++++++++++++++++++++++"+complaint);
String s="update complaint set status=? where complaintid='"+complaint+"'";
PreparedStatement pst=con.prepareStatement(s);
pst.setString(1,complaint);


int i=pst.executeUpdate(s);
if(i>0)
	out.println("Updated Successfully");
else
	out.println("please try again");

%>
</body>
</html>