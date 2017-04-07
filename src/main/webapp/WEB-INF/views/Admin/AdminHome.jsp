<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>This is Admin Page</title>
<style>
body {
	background-image: url("resources/images/AdminBack.jpg");
}
</style>
</head>
<c:url var="back" value="resources/images/callofduty.jpg"></c:url>
<body style="background-image: url(${back});background-repeat: no-repeat;
    background-attachment: fixed">
	<div>
		<h2 style="color: green; font-family: fantasy;">NKART</h2>
		<h3 style="color: red; font-family: cursive;">Shopping is an art</h3>

		<center>
			<img src="<c:url value="/resources/images/giphy.gif"></c:url>"
				alt="ShoppingCartPic" width="100px" height="100px" align="middle">
		</center>
	</div>
	<center>
		<c:if test="${isClickedAdminHome==true}">

			<jsp:include page="../menu/AdminCategoryMenu.jsp"></jsp:include>
		</c:if>

		<%-- <c:if test="${isUserClickedCategories==true||isUserClickedProducts==true||isUserClickedSuppliers==true}">
<jsp:include page="../menu/AdminCategoryMenu.jsp"></jsp:include>
</c:if> --%>
		<c:if test="${isAdminClickedCategories==true}">
			<%-- 	<jsp:include page="../menu/AdminCategoryMenu.jsp"></jsp:include> --%>
			<jsp:include page="Category.jsp"></jsp:include>
		</c:if>

		<c:if test="${isAdminClickedProducts==true}">
			<%-- <jsp:include page="../menu/AdminCategoryMenu.jsp"></jsp:include> --%>
			<jsp:include page="Product.jsp"></jsp:include>
		</c:if>

		<c:if test="${isAdminClickedSuppliers==true}">
			<%-- 	<jsp:include page="../menu/AdminCategoryMenu.jsp"></jsp:include>
 --%>
			<jsp:include page="Supplier.jsp"></jsp:include>
		</c:if>
	</center>

</body>
</html>