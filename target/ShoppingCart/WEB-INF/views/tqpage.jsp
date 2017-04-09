<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thankyou</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  footer {
    
    margin-top: 100px;
    
} 
body {
width:100%;
}
.glyphicon-ok { color:green; }
  </style>
</head>
<body  style="background-color:#ffffff;">

<center>
		<img src="<c:url value="resources/images/Autobot.gif"></c:url>"
			alt="logo" width="100px" height="80px" align="left">
	</center>
	<div>
		<center>
			<h2 style="color:cyan ;font-family: fantasy;">NKART</h2>
			<h3 style="color: red; font-family: cursive;">Shopping is an art</h3>


		</center>
	</div>
     <nav class="navbar navbar-inverse">
  <div class="container-fluid"> 
  <div class="navbar-header" class=" pull-left">
  
    <sec:authorize access="isAuthenticated()">
     <a class="navbar-brand" style="font-size:15px;"><span class="glyphicon glyphicon-user"></span> WELCOME <sec:authentication property="principal.username"/> </a>
     
  	
</sec:authorize>
    </div>
     <ul class="nav navbar-nav navbar-right" style="margin-bottom:-2px;">    
      <li><a href="Home">HOME</a></li>
       <sec:authorize access="!isAuthenticated()">
     <li><a href="<c:url value="/perform_logout" />">Logout</a></li>
      <li><a href="Login">LOGIN</a></li>
      </sec:authorize>
	  <li><a href="#">CONTACT US</a></li>
   <sec:authorize access="isAuthenticated()">
   <li ><a href="Cart" ><p>CART <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>LOGOUT<span class="glyphicon glyphicon-log-out"></span></p></a></li>
</sec:authorize>
					  
   </ul>
   </div>
  </nav>
  <br>
  <br>
  <br>
  <div style="text-align:center;padding-top:40px;padding-bottom:40px">
  <h1> Thank You!!</h1>
  <h3>your payment has been received <span class="glyphicon glyphicon-ok"></span></h3>
  <img src="resources/images/tqpage.jpg" class="img-rounded" alt="tq" width="304" height="236"> 
  </div>
   
</body>
</html>