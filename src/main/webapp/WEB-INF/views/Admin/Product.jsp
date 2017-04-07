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


		<c:if test="${empty product.name}">
			<c:url var="addAction" value="/manage_create_product"></c:url>
		</c:if>
		<c:if test="${!empty product.name}">
			<c:url var="addAction" value="/manage_Update_product"></c:url>
		</c:if>

		<form:form action="${addAction}" commandName="product" enctype="multipart/form-data" method="post">

			<table border="7">
				<thead>

					<tr>

						<td><form:label path="id">
								<spring:message text="Id" />
							</form:label></td>

						<c:choose>
							<c:when test="${not empty product.id} ">
								<td><form:hidden path="id" readonly="true" /></td>
							</c:when>
							<c:otherwise>
								<td><form:hidden path="id" pattern=".{5,20}"
										required="true" title="id should contain 5 to 20 characters" /></td>
							</c:otherwise>
						</c:choose>
					<tr>
						<td><form:label path="name">
								<spring:message text="Name" />
							</form:label></td>
						<td><form:input path="name" required="true" /></td>
					</tr>

					<tr>
						<td><form:label path="price">
								<spring:message text="Price" />
							</form:label></td>
						<td><form:input path="price" required="true" /></td>
					</tr>

					<tr>
						<td><form:label path="description">
								<spring:message text="Description" />
							</form:label></td>
						<td><form:input path="description" required="true" /></td>
					</tr>

					<tr>
						<td>Category ID:</td>
						<td><form:select path="category_id" required="true">
								<spring:message text="Category_id" />
								<c:forEach items="${categoryList}" var="category">
									<form:option class="form-control" value="${category.id}">${category.name}</form:option>
								</c:forEach>
							</form:select></td>
					</tr>

					<tr>
						<td>Supplier ID:</td>
						<td><form:select path="supplier_id" required="true">
								<spring:message text="Supplier_id" />
								<c:forEach items="${supplierList}" var="supplier">
									<form:option class="form-control" value="${supplier.id}">${supplier.name}</form:option>
								</c:forEach>
							</form:select></td>
					</tr>

					<tr>
						<td><form:label path="url">
								<spring:message text="URL" />
							</form:label></td>
						<td><form:input path="url" required="true" /></td>
					</tr>
					<tr>
						<td>Image:</td>
						<td><form:input type="file"
								class=" btn btn-default btn-block form-control" path="image"
								required="true" /></td>
					</tr>
					<tr>
						<td colspan="2"><c:if test="${!empty product.name}">
								<input type="submit" value="<spring:message text="Update"/>" />
							</c:if> <c:if test="${empty product.name}">
								<input type="submit" value="<spring:message text="Create"/>" />
							</c:if></td>
					</tr>
			</table>
		</form:form>
	</center>

	<center>
		<h2>products</h2>
		<table border="2">
			<thead>
				<tr>
					<th align="center">ID</th>
					<th align="center">NAME</th>
					<th align="center">PRICE</th>
					<th align="center">DESCRIPTION</th>
					<th align="center">CATEGORY_ID</th>
					<th align="center">SUPPLIER_ID</th>
					<th width="10" height="10">URL</th>
					<th>IMAGE</th>
					<th>ACTION</th>
				</tr>
			</thead>
			<c:forEach var="product" items="${productList}">
				<tr>
					<td align="center">${product.id}</td>
					<td align="center">${product.name}</td>
					<td align="center">${product.price}</td>
					<td align="center">${product.description}</td>
					<td align="center">${product.category_id}</td>
					<td align="center">${product.supplier_id}</td>
					<td width="10"height="10">${product.url}</td> 
					<td><div class="thumbnail">
								<img height="100px" width="100px" alt="${product.id}"
									src="<c:url value="/resources/images/${product.id}.jpg"></c:url>">
							</div></td>
					<td><a href="<c:url value='/manage_Edit_Product/${product.id}' />">Edit
					</a>|| <a href="<c:url value='/manage_Delete_Product/${product.id}' />">Delete</a></td>
					<td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>