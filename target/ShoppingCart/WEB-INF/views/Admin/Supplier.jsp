<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Page</title>
</head>
<body>
	<center>
		<h2>Enter Supplier Details</h2>
		
		
		<c:if test="${empty supplier.name}">
		<c:url var="addAction" value="/manage_create_supplier"></c:url>
		</c:if>
		<c:if test="${!empty supplier.name}">
		<c:url var="addAction" value="/manage_Update_supplier"></c:url>
		</c:if>
	<form:form action="${addAction}" commandName="supplier"  method="post">
	
<table border="7">
<thead>

<tr>

<td><form:label path="id"><spring:message text="Id" /></form:label></td>

	<c:choose>
	<c:when test="${not empty supplier.id} ">
	<td><form:hidden path="id"  readonly="true" /></td>
	</c:when>
	<c:otherwise>
	<td><form:hidden path="id" pattern=".{5,500}" required="true" title="id should contain 5 to 500 characters" /></td>
	</c:otherwise>
	</c:choose>

<tr>
<td><form:label path="name"><spring:message text="Name" /></form:label></td>
<td><form:input path="name" required="true" /></td>
</tr>

<tr>
<td><form:label path="address"> <spring:message text="Address"/></form:label></td>
<td><form:input path="address" required="true" /></td>
</tr>
			
<tr>
<td colspan="2"><c:if test="${!empty supplier.name}"><input type="submit" value="<spring:message text="Update"/>" />
	</c:if>
	<c:if test="${empty supplier.name}">
	<input type="submit" value="<spring:message text="Create"/>" />
	</c:if>
	</td>
	</tr>

</table>
</form:form>
	</center>

	<center>
		<h2>Suppliers</h2>
		<table border="2">
			<thead>
				<tr>
					<td>ID</td>
					<td>NAME</td>
					<td>ADDRESS</td>
					<td>ACTION</td>
				</tr>
			</thead>
			<c:forEach var="supplier" items="${supplierList}">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='/manage_Edit_Supplier/${supplier.id}' />">Edit </a>|| <a
						href="<c:url value='/manage_Delete_Supplier/${supplier.id}' />">Delete</a></td>
					<td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>