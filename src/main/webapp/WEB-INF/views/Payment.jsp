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
<title>payment</title>
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
  </style>
  <c:url var="back" value="resources/images/try.jpg"></c:url>
<body style=" background-image: url(${back});background-repeat: no-repeat;
    background-attachment: fixed">
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
 <img  src="https://egybikers.com/images/dealershowroom/facebook%20profile%20pic.jpg" alt="logo" width="60px" height="60px" align="left"" >
<!--  <div class="text-left" >
  <h1 style="font-family:Georgia; font-size:30px;"><i>SHOPIN </i>
    <img  src="https://www.sitewelder.com/art2012/logo-big-shopping.png" alt="logo" width="40px" height="40px" align="left" >
  <img  src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" alt="fb" width="25px" height="25px" align="right" >
  <img  src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" alt="twitter" width="25px" height="25px" align="right" >
  <img  src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" alt="linkedin" width="25px" height="25px" align="right" >
  </h1>
  
  </div> -->
  
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
      <li><a href="Registration">REGISTER</a></li>
      <li><a href="Login">LOGIN</a></li>
      </sec:authorize>
	  <li><a href="#">CONTACT US</a></li>
   <sec:authorize access="isAuthenticated()">
   <li ><a href="Cart" >CART <span class="glyphicon glyphicon-shopping-cart"></span></a></li>
	<li><a href="<c:url value="/perform_logout" />">LOGOUT<span class="glyphicon glyphicon-log-out"></span></a></li>
</sec:authorize>
					  
   </ul>
   </div>
  </nav>
  <br><br>
  <br><br>
  <br>
  <br>
   <div class="container">
  <div class="row col-xs-4"></div>
  <div class="col-xs-4">
  <div class="panel panel-primary">
     <div class="panel-heading">
   
      <div class="row">
       <h3 class="panel-title " style="padding-left: 20px">Select Payment type</h3>
       
      </div>
     </div>
     <div class="panel-body">
<form method="post" action="${flowExecutionUrl}">
        <input type="hidden" name="_eventId" value="method">
        <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
      <input type="radio" name="method" value="cod">  Cash On Delivery<br><br>
     <input type="radio" name="method" value="card">  Credit Card <br><br>
         <button class="btn btn-success btn-sm btn-block" type="submit">proceed</button>  
        </form>
        </div>
        </div>
        </div>
        </div>
        <br><br><br><br><br><br>
        
</body>
</html>