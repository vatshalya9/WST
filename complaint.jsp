<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="postcomplaint.do">
<% HttpSession ss1=request.getSession();
String tid=(String)ss1.getAttribute("userid");
System.out.println("Welcome::"+tid);%>
<h2>Enter your Complaint:</h2>
<table>
<textarea rows="15" cols="15" name="complaint"></textarea>
                   <tr><td><input type="submit" value="Generate" />
                   <input type="reset" value="clear" /></td></tr>
</table>

</form>
</body>
</html>