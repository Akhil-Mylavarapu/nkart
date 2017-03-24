<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NKART Home Page</title>


</head>
 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
	<link rel="stylesheet" href="<c:url value="/resources/Styles/Home.css"/>">
 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
<script>
document.body.style.backgroundImage="url('resources/Images/matrix4.jpg')"
</script>
<center>
<img class="img-circle"  src="<c:url value="/resources/Images/background-5.jpg"></c:url>" alt="ShoppingCartPic" width="100px" height="100px" align="left" > 
	</center>
	<div  style="background-color: white;">
	<center>
		<h2 style="color:green; font-family: fantasy;" >NKART</h2>
		<h3 style="color:red;font-family:cursive;">Shopping is an art</h3>
		 

		 ${successMessage}<br> 
		${role}<br> ${errorMessage}<br>
		
	</center>
	</div>
	<hr>
	<c:if test="${isAdmin!=true}">
		<jsp:include page="menu/CustomerCategoryMenu.jsp"></jsp:include>
	</c:if>

	<c:if test="${isAdmin==true}">
		<center>
			<h2>Hello Admin</h2>
		
		</center>
		<%-- <jsp:include page="Admin/AdminHome.jsp"></jsp:include> --%>
		<jsp:include page="menu/AdminCategoryMenu.jsp"></jsp:include>
	</c:if>

	<c:if test="${isUserClickedLogin}">
		<jsp:include page="Login.jsp"></jsp:include>
		<br>
	</c:if>

	<c:if test="${not empty errorMessage }">
		<jsp:include page="Login.jsp"></jsp:include>
		<br>
	</c:if>



	<c:if test="${isUserClickedRegister==true}">
		<jsp:include page="Registration.jsp"></jsp:include>
	</c:if>

	<c:if test="${isUserClickedCart == true}">
	<jsp:include page="Cart.jsp"></jsp:include>
	</c:if>



</body>
</html>