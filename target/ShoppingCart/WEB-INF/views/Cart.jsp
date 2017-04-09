<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
 <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"> 
<link rel="stylesheet" href="<c:url value="/resources/css/cart.css"/>">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CartPage</title>
<style>#myCarousel{display:none;}
#myproduct{display:none;}
.thumbnail
{display:none;}
</style>
</head>
<body>
<h1 align="center" style="margin-top:60px; color: white">Your Cart</h1>
<h4 align="left" style="color: white">${emptycart}</h4>
<div class="container">
	<table id="cart" class="table table-condensed">
    				<thead>
						<tr>
							<th style="width:50%;color: white">Product</th>
							<th style="width:10%;color: white">Price</th>
							<th style="width:8%;color: white">Quantity</th>
							<!-- <th style="width:10%">Date Added</th> -->
							<th style="width:22%;color: white" class="text-center">Update</th>
							<th style="width:10%;color: white"></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${CartList}" var="cart">
						<tr>
							<td style="color: white" data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="<c:url value="/resources/images/${cart.productid}.jpg"></c:url>" alt="" class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin"><c:out value="${cart.productname }"/></h4>
									</div>
								</div>
							</td>
							<td style="color: white" data-th="Price"><c:out value="${cart.price }"/></td>
							<%-- <td data-th="Date Added"><c:out value="${cart.addedDate}"/></td> --%>
							<td style="color: white" data-th="Quantity"><c:out value="${cart.quantity}"/></td>
							<td style="color: white" data-th="Quantity">
							 <c:url var="action" value="editorder/${cart.id}"></c:url>
		                       <form:form action="${action}" name="formID" modelAttribute="cart" method="post">
								<form:input type="number" min="1" class="form-control text-center" path="quantity" id="sel1" name="quantity" onchange="checkAndSubmit()" />
								</form:form>
							</td>
							<%-- <td data-th="Subtotal" class="text-center"><c:out value="${cart.subtotal}"/></td> --%>
							<td style="color: white" class="actions" data-th="">
								<a href="delete/${cart.id}"><button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button></a>								
							</td>
						</tr>
						
						</c:forEach>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total </strong></td>
						</tr>
						<tr>
							<td><a href="Home" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td style="color: white" class="hidden-xs text-center"><strong>Total:Rs <c:out value="${cartprice}"></c:out> /-</strong></td>
							<c:if test="${cartprice>0}">
							<td><a href="checkoutFlow" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
							</c:if>
						</tr>
					</tfoot>
				</table>
</div>
 
<script type="text/javascript">
function checkAndSubmit()
{
  if (document.getElementById('sel1').selectedIndex > -1)
  {
      document.formID.submit();
     // alert('both have been selected!');
  }
}
</script>
</body>
</html>