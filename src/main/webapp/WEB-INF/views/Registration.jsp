<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Registration Page</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/Styles/Home.css"/>">
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
		<h2>Please Register</h2>
	</center>
	

	<c:url var="action" value="Registration"></c:url>
	<center>
		<form:form action="${action}" method="post" commandName="user">



			<div class="input-group margin-bottom-sm">
				<table>
					<tr>
						<td><form:label path="name">
								<spring:message text="Name" />
							</form:label></td>
						<td><form:input path="name" required="true" /></td>
					</tr>




					<tr>
						<td><form:label path="password">
								<spring:message text="Password" />
							</form:label></td>
						<td><form:input path="password" required="true" /></td>
					</tr>



					<tr>
						<td><form:label path="contact">
								<spring:message text="Contact" />
							</form:label></td>
						<td><form:input path="contact" required="true" /></td>
					</tr>



					<tr>
						<td><form:label path="email">
								<spring:message text="E-mail" />
							</form:label></td>
						<td><form:input path="email" required="true" /></td>
					</tr>
				</table>
			</div>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<input type="submit" class="btn btn-default" value="Register">
		</form:form>
	</center>
	<jsp:include page="Menu/Footer.jsp"></jsp:include>

</body>
</html> --%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<title>Registration Page</title>
      <link rel="stylesheet" href="resources/registration/css/style.css">
</head>
<body>

<c:url var="back" value="resources/images/Login.jpg"></c:url>
<body style=" background-image: url(${back});background-repeat: no-repeat;
    background-attachment: fixed">

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
	<%-- ${errorMessage}
	${regsuccess} --%>
	
		<div>
			<h2 style="font-size: 40px; color: cyan">Sign up to Enjoy our Services</h2>

   <c:url var="action" value="Registration"></c:url>

	<form:form action="${action}" method="post" commandName="user">

	<hgroup>
  <h1>Registration</h1>
</hgroup>
<br><br>
<form>
  <div class="group">
    <form:label path="name"><spring:message var="name" /></form:label>
	<h4 align="left">NAME:</h4><form:input path="name" required="true" /><span class="highlight"></span><span class="bar"></span>
  </div>
    <div class="group">
   <form:label path="password"><spring:message var="password" /></form:label>
	<h4 align="left">PASSWORD:</h4><form:input path="password" required="true" />
  </div>
    <div class="group">
    <form:label path="contact"><spring:message var="contact" /></form:label>
	<h4 align="left">MOBILE:</h4><form:input path="contact" required="true" />
  </div>
  <div class="group">
   <form:label path="email"><spring:message var="email" /></form:label>
	<h4 align="left">EMAIL:</h4><form:input path="email" required="true" />
  </div>
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
   <input type="submit" class="btn btn-default" value="Register">
</form>
<footer><a href="http://www.polymer-project.org/" target="_blank"><img src="https://www.polymer-project.org/images/logos/p-logo.svg"></a>
  <p><a href="http://www.polymer-project.org/" target="_blank"></a></p>
</footer>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="resources/registration/js/index.js"></script>
    
	</form:form>
	
	<%-- <jsp:include page="Menu/Footer.jsp"></jsp:include> --%>
	
</body>
</html>