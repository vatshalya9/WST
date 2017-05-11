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
	<h2>Login Form</h2>
	<form method="post" action="loginvalidation.do" >	 <table>
                        	<tr>
                        		<td>User ID </td>
                        		<td><input type="text" name="userId" /></td>
                        	</tr>
                        	<tr>
                        		<td>Password </td>
                        		<td><input type="password" name="password" /></td>
                        	</tr>
                        	<tr>
                        		<td><input type="submit" value="login" /></td>
                        		<td><input type="reset" value="clear" /></td>
                        	</tr>
                        	<tr>
                        		<td></td>
                        		<td></td>
                        	</tr>
     </table>
     </form>
     <a href="travellerregistration.jsp"><h4>New User</h4></a>
     
</center>
</body>
</html>