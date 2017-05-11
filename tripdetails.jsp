<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trip Details </title>
</head>
<body>
<center>
<%
String usid="";
HttpSession sess=request.getSession();
String usrname=(String)sess.getAttribute("userid");
System.out.println("Welcome::"+usrname);
Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
String trip="select travellerid from traveller where travellerid='"+usrname+"'";
Statement stm=con1.createStatement();
ResultSet rest=stm.executeQuery(trip);
while(rest.next()) {
	usid=rest.getString(1);
	System.out.println(";;;;;;;;;;;;;;;;;;;;;;;;;;;;TRAVELLERID"+usid);
}
%>

	
		<h2>Trip Details Form</h2>
		<form method="post" action="tripdetailsaction.do" >
			 <table>
			 <th colspan="2"></th>
			 				<tr>
			 				<td>Traveller Id</td>
			 					<td><input type="text" name="travellerid" value="<%=usid %>" readonly="readonly"/></td>
                        	</tr>
                        	
                        	  <tr>
                        		<td>Cab ID </td>
                        		<td><input type="text" name="cabid" /></td>
                        	</tr>
                        	<tr>
                        	<td>Status</td>
                        		<td><input type="text" name="status" /></td>
                        	</tr>
                        	<tr>
                        		<td><input type="submit" value="Submit" /></td>
                        		<td><input type="reset" value="clear" /></td>
                        	</tr>
                 </table>
		</form>
	</center>

</body>
</html>