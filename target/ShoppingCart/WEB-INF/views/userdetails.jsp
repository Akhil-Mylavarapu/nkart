<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form action="done" commandName="user">
<table class="tg" border="2">
				<thead>
					<tr>
						<td style="color: red">NAME</td>
						<td style="color: red">CONTACT</td>
						<td style="color: red">EMAIL</td>
						<td style="color: red">Action</td>
					</tr>
				</thead>

<c:set var="name"></c:set>

				<%-- <c:forEach var="name" items="${userList}"> --%>
				<%-- <c:if test="${ not empty userList}"> --%>
				
									<tr>
						<td style="color: red">${user.name}</td>
						<td style="color: red">${user.contact}</td>
						<td style="color: red">${user.email}</td>
						
						</tr>
						<%-- </c:param> --%>
						<%-- </c:if> --%>
						<%-- </c:forEach> --%>
						</table>
						</form:form>

</body>
</html>