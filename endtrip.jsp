<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Wooden Wall CSS Template</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- templatemo 306 wooden wall -->
<!-- 
Wooden Wall Template 
http://www.templatemo.com/preview/templatemo_306_wooden_wall 
-->
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/coda-slider.css" type="text/css" media="screen" charset="utf-8" />

<script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>

</head>

<body style="background-image: images/templatemo_body.jpg">
	
    <div id="slider">
    <div id="templatemo_wrapper">
    	
        <div id="header">
            
            <h1><a href="#">Women Safety <span style="font-size: 18px; color: white;">best way to drive you home safe</span></a></h1>
        </div>
        
        <div id="menu">
            <ul class="navigation">
                <li><a href="#home" class="selected">Home<span class="ui_icon home"></span></a></li>
                <li><a href="#logout" class="selected">Logout<span class="ui_icon home"></span></a></li>
                </ul>
                </div>
                <div id="content">
         
            <div class="scroll">
                <div class="scrollContainer">
<div class="panel" id="home" style="min-height: 150px; min-width: 150px;">
               <h1>Trip ended succesfully...</h1>
<% try{
			HttpSession sessn=request.getSession();
			String tname=(String)sessn.getAttribute("userid");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wstdb","root","root");
			String ups="update trip set status='Reached' where travellerid='"+tname+"' ";
			PreparedStatement pst1=con.prepareStatement(ups);
			System.out.println("Updated trip table");
			int i=pst1.executeUpdate();
			 	if(i>0)
			{
				System.out.println("Updated Sucessfully");
			}
			 	else
			 	{
			 		System.out.println("Updation falied");
			 	}
		}
			
			catch(Exception e){
				e.printStackTrace();
			}
			
%>
</div>
  <div class="panel" id="login" style="min-height: 300px; min-width: 400px;">
                    <!--     <h1>LOGIN FORM</h1> -->
                        <div class="image_wrapper image_fl">
                        <!-- login form start -->
                       <%@ include file="logout.jsp" %>
                       
                        </div>
                  </div>
                 
                 </div>
                 </div>
</form>
</body>
</html>