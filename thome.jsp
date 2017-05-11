<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 								<%  HttpSession ss=request.getSession();
								String uname=(String)ss.getAttribute("userid");
								%>
								<h1>Welcome <%=uname %></h1>
								<%System.out.println("Welcome::"+uname);%>

								<form method="post" action="viewlocation.jsp">
  								Search Location:
 								<input type="search" name="locationsearch" id="search">
 								 <input type="submit">
								</form>


</body>
</html>