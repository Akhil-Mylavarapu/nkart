<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShowProduct page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
footer {
	margin-top: 50px;
}

body {
	width: 100%;
}
</style>
</head>
<body>
	<center>
		<img src="<c:url value="../resources/images/Autobot.gif"></c:url>"
			alt="logo" width="100px" height="80px" align="left">
	</center>
	<div>
		<center>
			<h2 style="color: cyan ;font-family: fantasy;">NKART</h2>
			<h3 style="color: red; font-family: cursive;">Shopping is an art</h3>


		</center>
	</div>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">


		<ul class="nav navbar-nav dropdown ">
			<li><a href="../Home"> <span
					class="glyphicon glyphicon-home"></span>Home
			</a></li>
		</ul>
		<ul class="nav navbar-nav" role="tablist">
			<c:forEach items="${categoryList}" var="category">
				<li class="dropdown"><a class="dropdown-toggle"
					href="../navproducts/${category.id}">${category.name}</a></li>
			</c:forEach>

		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#">${LoginMessage}</a></li>
		</ul>

		<form class="navbar-form navbar-nav">
			<div class="input-group">
				<input type="text" class="form-control" placeholder="Search">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>

		<div>
			<p style="color: white">${loginMessage}</p>
		</div>
		<div>

			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="!isAuthenticated()">

					<li><a href="../Login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="../Registration"><span
							class="glyphicon glyphicon-user"></span> Register</a></li>
				</sec:authorize>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<sec:authorize access="isAuthenticated()">
					<li><a href="../perform_logout"><span
							class="glyphicon glyphicon-log-out"></span> Logout</a></li>


					<li><a href="userdetails"> <span
							class="glyphicon glyphicon-user"></span>Hi <sec:authentication
								property="principal.username" /></a></li>
					<li class="nav navbar-nav">
					<li><a href="../Cart"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>

				</sec:authorize>
			</ul>

		</div>
	</div>
	</div>

	</nav>
	<c:url var="back" value="../resources/images/game.jpg"></c:url>
<body
	style=" background-image: url(${back});background-repeat: no-repeat;
    background-attachment: fixed">
	<div class="container">
		<c:forEach items="${IndividualProduct}" var="product">
			<h2 style="color: red">
				<c:out value="${product.name }" />
			</h2>


			<div class="col-xs-6 w3-animate-left">
				<div class="img">
					<img height="300px" width="300px" alt="${product.id}"
						src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
					<div class="desc">
						<%-- 	<strong>${product.name}</strong> --%>

					</div>
				</div>
			</div>

			<div class="col-xs-4 ">
				<div class="img">
					<div class="desc">
						<p>
						<div class="form-group">
							<input type="text" class="form-control" value="${product.name}"
								readonly="readonly">
						</div>

						<div class="form-group">
							<input type="text" class="form-control"
								value="Rs. ${product.price}" readonly="readonly">
						</div>
						<div class="form-group">
							<input type="text" class="form-control"
								value="${product.description}" readonly="readonly">
						</div>
						<div class="col-xs-6 w3-animate-right">
							<p>${product.url}</p>
						</div>

						<div>
							<form action="../addtoCart/${userid}/${product.id}">
								<input type="submit" value="Add to Cart"
									class="btn btn-xs btn-success btn-block">

							</form>

						</div>

					</div>
				</div>
			</div>
		</c:forEach>
	</div>



</body>
</html>