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
String uid="";
String fname="";
String lname="";
String pass="";
long cnt=0;
String email="";


HttpSession ss11=request.getSession();
String usname=(String)ss11.getAttribute("userid");
System.out.println("Welcome::"+usname);
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
String s12="select user_id,password,first_name,last_name,contact,email from user where user_id='"+usname+"'";
//String s1="select contact1,reference_name1,contact2,reference_name2 from traveller where travellerid='"+usname+"'";
Statement stmt=conn.createStatement();
ResultSet rstt=stmt.executeQuery(s12);
//ResultSet rs1=stmt.executeQuery(s1);

while(rstt.next()) {
	uid=rstt.getString(1);
	
pass=rstt.getString(2);
fname=rstt.getString(3);
lname=rstt.getString(4);
cnt=rstt.getLong(5);
email=rstt.getString(6);



}

Statement stmt1=conn.createStatement();
/* ResultSet rs2=stmt1.executeQuery(s1);
while(rs2.next())
{
cnt=rs2.getInt(1);
email=rs2.getString(2);
}*/
%>

<body>
	<center>
	
		<h2> User Update Form</h2>
		<form action="manageraction.do" >
			 <table>
                        	<tr>
                        		<td>User ID </td>
                        		<td><input type="text" name="userId" value="<%=uid %>" readonly="readonly"/>	</td></tr>
                        	<tr>
                        		<td>Password </td>
                        		<td><input type="text" name="password" value="<%=pass%>"/></td>
                        		
                        		</tr>
                        	<tr>
                        		<td>First Name </td>
                        		<td><input type="text" name="firstName" value="<%=fname %>" /></td>
                        		</tr>
                        	<tr>
                        		<td>Last Name</td>
                        		<td><input type="text" name="lastName" value="<%=lname %>"/></td>
                        		</tr>
           
			            	<tr>
                        		<td>Contact Number  </td>
                        		<td><input type="text" name="contact" value="<%=cnt %>" /></td></tr>
                        	<tr>
                        		<td>Email </td>
                        		<td><input type="text" name="email" value="<%=email %>" /></td>	</tr>
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
       