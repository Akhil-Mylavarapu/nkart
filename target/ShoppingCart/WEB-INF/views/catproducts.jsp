
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
<c:url var="back" value="resources/images/game.jpg"></c:url>
<body style=" background-image: url(${back});background-repeat: no-repeat;
    background-attachment: fixed">
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
						<p style="color: white">

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