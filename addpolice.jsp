<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
	
		<h2>Police Registration Form</h2>
		<form method="post" action="policeregister.do" >
			 <table>
                        	<tr>
                        		<td>DepartmentID </td>
                        		<td><input type="text" name="deptid" /></td>
                        	</tr>
                        	<tr>
                        		<td>Name</td>
                        		<td><input type="text" name="username" /></td>
                        	</tr>
                        	<tr>
                        		<td>Password </td>
                        		<td><input type="text" name="password" /></td>
                        	</tr>
                        	<tr>
                        		<td>Station Contact </td>
                        		<td><input type="text" name="station_contact" /></td>
                        	</tr>
                        	<tr>
                        		<td>Station Name </td>
                        		<td><input type="text" name="station_name" /></td>
                        	</tr>
                        	<tr>
                        		<td>Location </td>
                        		<td><input type="text" name="location" /></td>
                        	</tr>
                        	<tr>
                        		<td>Contact Number  </td>
                        		<td><input type="text" name="contact" /></td>
                        	</tr>
                        	<tr>
                        		<td>Email </td>
                        		<td><input type="text" name="email" /></td>
                        	</tr>
                        	<tr>
                        		<td></td>
                        		<td></td>
                        	</tr>
                        	
                        	<tr>
                        		<td><input type="submit" value="Register" /></td>
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