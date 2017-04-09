<!DOCTYPE html>
<html >
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <meta charset="UTF-8">
  <title>Material Login Form</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="resources/material-login-form/css/style.css">

  
</head>

<body>
	<c:url var="back" value="resources/images/Login.jpg"></c:url>
<body style=" background-image: url(${back});background-repeat: no-repeat;
    background-attachment: fixed">

	
		<img src="<c:url value="/resources/images/Autobot.gif"></c:url>"
			alt="ShoppingCartPic" width="100px" height="80px" align="left">
	
	<div>
		
			<h2 align="center" style="color: cyan; font-family: fantasy;">NKART</h2>
			<h3 align="center" style="color: red; font-family: cursive;">Shopping is an art</h3>
		
	</div>
	<jsp:include page="menu/CustomerCategoryMenu.jsp"></jsp:include>
	<center>
	${errorMessage}
	${regsuccess}
	
		<div>
			<h2 style="font-size: 40px; color: cyan">Login to the Gaming
				World</h2>
  <div class="container">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Login</h1>
    
    <form action="perform_login" method="post" id="login">
      <div class="input-container">
        <input type="text" id="#{label}" name="j_username" required="required"/>
        <label for="#{label}">Username</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="password" id="#{label}" name="j_password" required="required"/>
        <label for="#{label}">Password</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Go</span></button>
      </div>
      <div class="footer"><a href="Registration">New User?</a></div>
    </form>
  </div>
  <div class="card alt">
    <div  class="toggle"></div>
    <h1  class="title"><a href="Registration">Register</a>
      <div class="close"></div>
    </h1>
</div>
  </div>
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="resources/material-login-form/js/index.js"></script>
    
   
</body>
</html>
 