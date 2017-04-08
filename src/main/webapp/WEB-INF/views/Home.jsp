<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NKART Home Page</title>


</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/footer.css"/>">
	

<body>
	
	<c:url var="back" value="resources/images/game.jpg"></c:url>
<body style=" background-image: url(${back});background-repeat: no-repeat;
    background-attachment: fixed">
	<center>
		<img src="<c:url value="resources/images/giphy.gif"></c:url>"
			alt="ShoppingCartPic" width="100px" height="80px" align="left">
	</center>
	<div>
		<center>
			<h2 style="color:white ;font-family: fantasy;">NKART</h2>
			<h3 style="color: red; font-family: cursive;">Shopping is an art</h3>


		</center>
	</div>
	
	<c:if test="${isAdmin!=true}">
		<jsp:include page="menu/CustomerCategoryMenu.jsp"></jsp:include>
		<jsp:include page="menu/Carousel.jsp"></jsp:include>
	</c:if>
	
	

	<c:if test="${isAdmin==true}">
		<center>
			<h2>Hello Admin</h2>

		</center>
		<%-- <jsp:include page="Admin/AdminHome.jsp"></jsp:include> --%>
		<jsp:include page="menu/AdminCategoryMenu.jsp"></jsp:include>
	</c:if>
	<c:if test="${isUserClickedRegistration==true}">
		<jsp:forward page="Registration.jsp"></jsp:forward>
	</c:if>
	<%-- <c:if test="${isUserClickedLogin}">
		<jsp:include page="Login.jsp"></jsp:include>
		<br>
	</c:if> --%>

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
	<c:choose>
		<c:when test="${UserClickedshowproduct}">
			<c:import url="/WEB-INF/views/ShowProduct.jsp"></c:import>
		</c:when>
	</c:choose>
	<c:choose>
	 <c:when test="${Clickedcatproduct}">
			<c:import url="/WEB-INF/views/catproducts.jsp"></c:import>
		</c:when>
	</c:choose> 
	
	
	<%-- <c:if test="${isUserClickedUserdetails== true}">
	<jsp:include page="userdetails.jsp"></jsp:include>
	</c:if> --%>
	
	<!-- *************************************************************************************** -->
	<div>
	<c:if test="${UserClickednavproduct!=true}">
	<c:if test="${empty LoggedIn}">

		 <c:choose>
			<c:when test="${isAdmin!=true}">
				<c:if test="${!empty ProductList}"> 
				<c:if test="${isUserClickedCart!=true}">
				
				
	<c:forEach items="${productList}" var="product">
		<tr>


			<td>
				<!-- <div class="thumbnail"> -->
				<div class="col-md-4">
					<a href="ShowProduct/${product.id}"> <img height="150px"
						width="150px" alt="${product.id }"
						src="<c:url value="/resources/images/${product.id }.jpg"></c:url>"></a>

					<td><c:url var="action" value="addtoCart/${userid}/${product.id}"></c:url>
						<form:form action="${action}" modelAttribute="cart">
							<td id="td1"><c:out value="${product.name}" /><br>
							<td id="td1"><c:out value="${product.price}" /> <input
								type="submit" class="btn btn-primary" value="Add To Cart" /><br>
						</form:form></td> <br>

				</div>
				<!-- </div> -->

			</td>
		</tr>
	</c:forEach>
	</c:if>
	 </c:if>
	 
	
	</c:when>
	</c:choose>
	</c:if>
	</c:if>
	</div>
	
	<!--******************************************************************************************  -->
<br>
<br>
<br>
	
					
					
					<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3>COMPANY</h3>
                    <ul>
                        <li> <a href="#">About Us </a> </li>
                        <li> <a href="#">Terms & Conditions </a> </li>
                        <li> <a href="#">Privacy Policy </a> </li>
                        <li> <a href="#">Updates & Releases </a> </li>
                        
                    </ul>
                </div>
                
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Contact Us </h3>
                    <ul>
                       <li> <a href="#">Contact Us </a> </li>
                        <li> <a href="#">FAQ's </a> </li>
                        <li> <a href="#">Cookie Policy</a> </li>
                        <li> <a href="#">Design</a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> NKART </h3>
                    <ul>
                        <li> <a href="#">Get Started </a> </li>
                        <li> <a href="#">Security </a> </li>
                        <li> <a href="#">Buy </a> </li>
                        <li> <a href="#">Address</a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 ">
                    <h3>Queries?Mail us</h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <input type="text" class="full text-center" placeholder="Email ">
                                <button class="btn  bg-gray" type="button"> GO <i class="fa fa-long-arrow-right"> </i> </button>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <li> <a href="#"> <i class=" fa fa-facebook">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-twitter">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-google-plus">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-pinterest">   </i> </a> </li>
                        <li> <a href="#"> <i class="fa fa-youtube">   </i> </a> </li>
                    </ul>
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
    
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left"> Copyright © 2017 nkart.com. All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                    <li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>
</body>
</html>