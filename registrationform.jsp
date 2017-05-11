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
	
		<h2>Cab Manager Registration Form</h2>
		<form action="register.do" >
			 <table>
                        	<tr>
                        		<td>Manager ID </td>
                        		<td><input type="text" name="userId" value="" /></td>
                        	</tr>
                        	<tr>
                        		<td>Password </td>
                        		<td><input type="text" name="password" /></td>
                        	</tr>
                        	<tr>
                        		<td>Manager First Name </td>
                        		<td><input type="text" name="firstName" /></td>
                        	</tr>
                        	<tr>
                        		<td>Manager Last Name</td>
                        		<td><input type="text" name="lastName" /></td>
                        	</tr>
                        	<tr>
                        		<td>Contact Number  </td>
                        		<td><input type="text" name="contact" /></td>
                        	</tr>
                        	<tr>
                        		<td>Manager Email </td>
                        		<td><input type="text" name="email" /></td>
                        	</tr>
                        	<tr>
                        		<td>Gender  </td>
                        		<td><input type="text" name="gender" /></td>
                        	</tr>
                        	<tr>
                        		<td>Personal Identity </td>
                        		<td><input type="text" name="identity" /></td>
                        	</tr>
                        	
                        	<tr>
                        		<td>Company Name </td>
                        		<td><input type="text" name="company" /></td>
                        	</tr>
                        	<tr>
                        		<td>Company Address </td>
                        		<td><input type="text" name="companyaddress" /></td>
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