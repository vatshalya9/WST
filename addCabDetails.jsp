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
	
		<h2>Add Cab Details Form</h2>
		<form method="post" action="addcab.do" >
			 <table>
			 <th colspan="2"></th>
                        	<!--  <tr>
                        		<td>Cab ID </td>
                        		<td><input type="text" name="cabid" /></td>
                        	</tr>-->
                        	<tr>
                        		<td>Type</td>
                        		<td><input type="text" name="type" /></td>
                        	</tr>
                        	<tr>
                        		<td>Driver </td>
                        		<td><input type="text" name="driver" /></td>
                        	</tr>
                        	<tr>
                        		<td>Driver Address </td>
                        		<td><input type="text" name="dAddr" /></td>
                        	</tr>
                        	<tr>
                        		<td>Contact</td>
                        		<td><input type="text" name="contact" /></td>
                        	</tr>
                        	<tr>
                        		<td>Identity </td>
                        		<td><input type="text" name="identity" /></td>
                        	</tr>
                        	
                        	
                        	
                        	
                        	<tr>
                        		<td><input type="submit" value="Add Cab" /></td>
                        		<td><input type="reset" value="clear" /></td>
                        	</tr>
                 </table>
		</form>
	</center>

</body>
</html>