<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
</head>
<body>
${Message}
	<center>
		<h2>Enter Product Details</h2>
		
	
	<c:if test="${empty product.id}">
		<c:url var="addAction" value="/manage_create_product"></c:url>
		</c:if>
		<c:if test="${!empty product.id}">
		<c:url var="addAction" value="/manage_Update_product"></c:url>
		</c:if>

	<form:form action="${addAction}" commandName="product" method="post">

<table border="7">
<thead>

<tr>

<td><form:label path="id"><spring:message text="Id" /></form:label></td>

	<c:choose>
	<c:when test="${not empty product.id} ">
	<td><form:input path="id"  readonly="true" /></td>
	</c:when>
	<c:otherwise>
	<td><form:input path="id" pattern=".{5,20}" required="true" title="id should contain 5 to 20 characters" /></td>
	</c:otherwise>
	</c:choose>

<tr>
<td><form:label path="name"><spring:message text="Name" /></form:label></td>
<td><form:input path="name" required="true" /></td>
</tr>

<tr>
<td><form:label path="price"><spring:message text="Price" /></form:label></td>
<td><form:input path="price" required="true" /></td>
</tr>

<tr>
<td><form:label path="description"> <spring:message text="Description"/></form:label></td>
<td><form:input path="description" required="true" /></td>
</tr>

<tr><td>Category ID:</td><td><form:select path="category_id" required="true"><spring:message text="Category_id"/>
				<c:forEach items="${categoryList}" var="category">
								<form:option class="form-control" value="${category.id}">${category.name}</form:option>
							</c:forEach>
								</form:select></td></tr>

<tr><td>Supplier ID:</td><td><form:select path="supplier_id" required="true"><spring:message text="Supplier_id"/>
				<c:forEach items="${supplierList}" var="supplier">
								<form:option class="form-control" value="${supplier.id}">${supplier.name}</form:option>
							</c:forEach>
								</form:select></td></tr>

<%-- <tr>
<td><form:label path="supplier_id"><spring:message text="Supplier_id" /></form:label></td>
<td><form:input path="supplier_id" required="true" /></td>
</tr> --%>
		 <tr>
					<td>Image:</td>
					<%-- <td><form:input type="file"
							class=" btn btn-default btn-block form-control" path="image"
							required="true" /></td> --%>
				</tr>  	
<tr>
<td colspan="2"><c:if test="${!empty product.name}"><input type="submit" value="<spring:message text="Update"/>" />
	</c:if>
	<c:if test="${empty product.name}">
	<input type="submit" value="<spring:message text="Create"/>" />
	</c:if>
	</td>
	</tr>

</table>
</form:form>
</center>

	<center>
		<h2>products</h2>
		<table border="2">
			<thead>
				<tr>
					<td>ID</td>
					<td>NAME</td>
					<td>PRICE</td>
					<td>DESCRIPTION</td>
					<td>CATEGORY_ID</td>
					<td>SUPPLIER_ID</td>
					<td>ACTION</td>
				</tr>
			</thead>
			<c:forEach var="product" items="${productList}">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.description}</td>
					<td>${product.category_id}</td>
					<td>${product.supplier_id}</td>
					<td><a href="<c:url value='/manage_Edit_Product/${product.id}' />">Edit </a>|| <a
						href="<c:url value='/manage_Delete_Product/${product.id}' />">Delete</a></td>
					<td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>