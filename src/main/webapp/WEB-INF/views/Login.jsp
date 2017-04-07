<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" href="../../resources/Login/css/style.css">

<link>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
	<c:url var="back" value="resources/images/Login.jpg"></c:url>
<body style=" background-image: url(${back})">

	<center>
		<img src="<c:url value="/resources/images/giphy.gif"></c:url>"
			alt="ShoppingCartPic" width="100px" height="80px" align="left">
	</center>
	<div>
		<center>
			<h2 style="color: green; font-family: fantasy;">NKART</h2>
			<h3 style="color: red; font-family: cursive;">Shopping is an art</h3>
		</center>
	</div>
	<jsp:include page="menu/CustomerCategoryMenu.jsp"></jsp:include>
	<center>
	${errorMessage}
	${regsuccess}
	
		<div>
			<h2 style="font-size: 40px; color: cyan">Login to the Gaming
				World</h2>

			<form action="perform_login" method="post" id="login">
				<table height="100px">
					<tr>
						<td>USER NAME:</td>
						<td><input type="text" name="j_username"
							placeholder="User Name"></td>
					</tr>
					<tr>
						<td>PASSWORD:</td>
						<td><input type="password" name="j_password"
							placeholder="Password"></td>
					</tr>
					<tr>
						<td>LOGIN:<input type="submit" value="Login"></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;RESET:<input type="Reset"
							value="reset"></td>
					</tr>

				</table>
			</form>
			<p>
				New User?Register Here<a href="Registration" method="post">Register</a>
			</p>

			<div class="container">
	<section id="content">
		<form action="perform_login" method="post" id="login">
			<h1>Login Form</h1>
			<div>
				<input type="text"  name="j_username" placeholder="Username" required="true" id="username" />
			</div>
			<div>
				<input type="password" name=""placeholder="Password" required="true" id="password" />
			</div>
			<div>
				<input type="submit" value="Log in" />
				<a href="#">Lost your password?</a>
				<a href="Registration">Register</a>
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">Download source file</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->

  
    <script src="resources/Login/js/index.js"></script>


		</div>
	</center>
</body>


</html>

 --%>
 
 
 
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
<body style=" background-image: url(${back})">

	<center>
		<img src="<c:url value="/resources/images/giphy.gif"></c:url>"
			alt="ShoppingCartPic" width="100px" height="80px" align="left">
	</center>
	<div>
		<center>
			<h2 style="color: green; font-family: fantasy;">NKART</h2>
			<h3 style="color: red; font-family: cursive;">Shopping is an art</h3>
		</center>
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
    <div class="toggle"></div>
    <h1 class="title">Register
      <div class="close"></div>
    </h1>
   <%--  <form action="Registration" method="post" id="registratin">
     
      <div class="input-container">
        <input type="#{type}" id="#{label}" required="required"/>
        <label for="#{label}">Username</label>
        <div class="bar"></div>
      </div>
      
       <div class="input-container">
    <form:label path="name" for="#{label}">Username><spring:message text="name" /></form:label>
	<form:input  type="text" id="" required="required" path="name" required="true" /><span class="highlight"></span><span class="bar"></span>
  	</div>
  	<div class="input-container">
    <form:label path="password" for="#{label}">Password><spring:message text="password" /></form:label>
	<form:input  type="password" id="" required="required" path="password" required="true" /><span class="highlight"></span><span class="bar"></span>
  	</div>
  	<div class="input-container">
    <form:label path="contact" for="#{label}">contact><spring:message text="contact" /></form:label>
	<form:input  type="text" id="" required="required" path="contact" required="true" /><span class="highlight"></span><span class="bar"></span>
  	</div>
  	<div class="input-container">
    <form:label path="email" for="#{label}">email><spring:message text="email" /></form:label>
	<form:input  type="text" id="" required="required" path="email" required="true" /><span class="highlight"></span><span class="bar"></span>
  	</div>
  	
     
      <div class="input-container">
        <input type="#{type}" id="#{label}" required="required"/>
        <label for="#{label}">Password</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="#{type}" id="#{label}" required="required"/>
        <label for="#{label}">Repeat Password</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="#{type}" id="#{label}" required="required"/>
        <label for="#{label}">email</label>
        <div class="bar"></div>
      </div>
      <div class="input-container">
        <input type="#{type}" id="#{label}" required="required"/>
        <label for="#{label}">contact</label>
        <div class="bar"></div>
      </div>
      <div class="button-container">
        <button><span>Next</span></button>
      </div>
    </form> --%>
  </div>
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="resources/material-login-form/js/index.js"></script>

</body>
</html>
 