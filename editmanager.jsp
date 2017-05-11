<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Women Safety</title>
</head>
<%
String mid="";
String cmny="";
String cad="";
String pass="";
long cnt=0;
String email="";

HttpSession ss1=request.getSession();
String usrname=(String)ss1.getAttribute("userid");
System.out.println("Welcome::"+usrname);
Class.forName("com.mysql.jdbc.Driver");
Connection cone=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
String str="select managerid,company,company_address,password from manager where managerid='"+usrname+"'";
String s1="select contact,email from user where user_id='"+usrname+"'";
Statement stmt=cone.createStatement();
ResultSet rss=stmt.executeQuery(str);


while(rss.next()) {
mid=rss.getString(1);
cmny=rss.getString(2);
cad=rss.getString(3);
pass=rss.getString(4);
//rss.close();
}

Statement stmt1=cone.createStatement();
ResultSet rs1=stmt1.executeQuery(s1);
while(rs1.next())
{
cnt=rs1.getLong(1);
email=rs1.getString(2);
}
%>

<body>
	<center>
	
		<h2>Cab Manager Registration Form</h2>
		<form action="editaction.do" >
			 <table>
                        	<tr>
                        		<td>Manager ID </td>
                        		<td><input type="text" name="userId" value="<%=mid %>" readonly="readonly"/></td>
                        	</tr>
                        	<tr>
                        		<td>Password </td>
                        		<td><input type="text" name="password" value="<%=pass%>" /></td>
                        	</tr>
                        	<tr>
                        		<td>Company Name </td>
                        		<td><input type="text" name="company" value="<%=cmny %>"/></td>
                        	</tr>
                        	<tr>
                        		<td>Company Address </td>
                        		<td><input type="text" name="companyAddress" value="<%=cad %>" /></td>
                        	</tr>
           
			            	<tr>
                        		<td>Contact Number  </td>
                        		<td><input type="text" name="contact" value="<%= cnt %>" /></td>
                        	</tr>
                        	<tr>
                        		<td>Manager Email </td>
                        		<td><input type="text" name="email" value="<%= email %>" /></td>
                        	</tr>
                        	
                        	<tr>
                        		<td></td>
                        		<td></td>
                        	</tr>
                        	
                        	<tr>
                        		<td><input type="submit" value="Update" /></td>
                        		<td><input type="reset" value="clear" /></td>
                        	</tr>
                        	<tr>
                        		<td></td>
                        		<td></td>
                        	</tr>
     </table>
		</form>
	</center>




</body>
</html>
       