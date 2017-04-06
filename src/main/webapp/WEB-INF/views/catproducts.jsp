<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

  <title>category list</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <style>
body  {
   
    background-color: #ffe6e6  ;
}
</style>
<style type="text/css">
#product
{
display: none;
}
<script type="text/javascript">
$(document).ready(function(){
    $("#mycategory").click(function(){
        $("#myproduct").hide();
    });
});
 </script>
</head>
<body>
<h1> Welcome to NKART</h1>


/*  /* <div class="container">
<c:forEach items="${navproducts}" var="product">
		<!--  <div class="row"> -->
     <div class="col-xs-3 w3-animated-zoom" class="thumbnail">
 	 	<div class="img">
 	 	<a href="${IndividualProduct}"><img height="192px"
						width="192px" alt="${product.id}"
						src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
					</a>		 
	<a href="ShowProduct/${product.id}" > <img height="200px" width="200px" alt="${product.id }"
	src="<c:url value="/resources/images/${product.id}.jpg"></c:url>"></a>
  <div class="desc">
         Product Id : <c:out value="${product.id}" /><br>
         Product Name : <c:out value="${product.name }"/>
   <c:url var="action" value="addtoCart/{userid}/{id}"></c:url>
   <form:form action="${action}" commandName="Cart">
   <input type="submit" class="btn btn-primary" value="Add To Cart" />
   </form:form>
							</div>
							</div>	
							</c:forEach>
							</div>
	<c:choose>
		<c:when test="${UserClickedCart}">
			<c:import url="/WEB-INF/views/Cart.jsp"></c:import>
		</c:when>
	</c:choose> */


<div class="container">
		<c:forEach items="${navproducts}" var="product">
			<div class="col-xs-3 w3-animate-zoom">
				<div class="img">
					<a href="${IndividualProduct}"> <img height="192px"
						width="192px" alt="${product.id}"
						src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
					</a>

					<img height="192px" width="192px"  alt="${product.id}"
						src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>"></a>
					<div class="desc">
						<p>

							${product.name}<br> <i class="fa fa-inr" aria-hidden="true"></i>
							${product.price}
							<c:choose>
								<c:when test="${LoggedIn}">
									<form action="addtoCart/${userid}/${product.id}">
										<input type="submit" value="Add to Cart"
											class="btn btn-xs btn-success btn-block">

									</form>
								</c:when>
							</c:choose>
						</p>

					</div>
				</div>
			</div>
		</c:forEach>
	</div>
		<c:choose>
		<c:when test="${isUserClickedCart}">
			<c:import url="/WEB-INF/Views/Cart.jsp"></c:import>
		</c:when>
	</c:choose> */
	
	
	<div class="container">
		<c:forEach items="${navproducts}" var="product">
			<div class="col-xs-3 w3-animate-zoom">
				<div class="img">
					<a href="${IndividualProduct}"> <img height="192px"
						width="192px" alt="${product.id}"
						src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
					</a>

					<img height="192px" width="192px"  alt="${product.id}"
						src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>"></a>
					<div class="desc">
						<p>

							${product.name}<br> <i class="fa fa-inr" aria-hidden="true"></i>
							${product.price}
							<c:choose>
								<c:when test="${LoggedIn}">
									<form action="addtoCart/${userid}/${product.id}">
										<input type="submit" value="Add to Cart"
											class="btn btn-xs btn-success btn-block">

									</form>
								</c:when>
							</c:choose>
						</p>

					</div>
				</div>
			</div>
		</c:forEach>
	</div>
		<c:choose>
		<c:when test="${isUserClickedCart}">
			<c:import url="/WEB-INF/Views/Cart.jsp"></c:import>
		</c:when>
	</c:choose>


</body>
</html> --%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/itempage.css" />"
	rel="stylesheet">
	
<style type="text/css">
#product
{
display: none;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
    $("#mycategory").click(function(){
        $("#myproduct").hide();
    });
});
 </script>

</head>
<body style="padding-top: 60px">
<script>
document.body.style.backgroundImage = "url('resources/images/BackgroundImage.jpg')";
</script>
		<div class="container">
		<c:forEach items="${navproducts}" var="product">
			<div class="col-xs-3 w3-animate-zoom">
				<div class="img">
					<a href="ShowProduct/${product.id}"> <img height="192px"
						width="192px" alt="${product.id}"
						src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
					</a>

					<%-- <img height="192px" width="192px"  alt="${product.id}"
						src="<c:url value="/resources/images/product/${product.id}.jpg"></c:url>"></a> --%>
					<div class="desc">
						<p>

							${product.name}<br> <i class="fa fa-inr" aria-hidden="true"></i>
							${product.price}
							<%-- <c:choose>
								<c:when test="${LoggedIn}"> --%>
									<form action="addtoCart/${userid}/${product.id}">
										<input type="submit" value="Add to Cart"
											class="btn btn-xs btn-success btn-block">

									</form>
								<%-- </c:when>
							</c:choose> --%>
						</p>

					</div>
				</div>
			</div>
		</c:forEach>
	</div>
		<c:choose>
		<c:when test="${isUserClickedCart}">
			<c:import url="/WEB-INF/Views/Cart.jsp"></c:import>
		</c:when>
	</c:choose>
</body>