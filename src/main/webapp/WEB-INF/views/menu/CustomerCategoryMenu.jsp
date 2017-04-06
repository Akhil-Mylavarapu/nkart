
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
		

			<ul class="nav navbar-nav dropdown ">
				<li><a href="Home"> <span class="glyphicon glyphicon-home"></span>Home
				</a></li>
			</ul>
<ul class="nav navbar-nav" role="tablist">
<c:forEach items="${categoryList}" var="category">
<li class="dropdown"><a class="dropdown-toggle" href="navproducts/${category.id}">${category.name}</a>
</li>
</c:forEach>

</ul>



			

			


			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">${LoginMessage}</a></li>
			</ul>




			<form class="navbar-form navbar-nav">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search">
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</form>

			<div>
				<p style="color: white">${loginMessage}</p>
			</div>
			<div>



				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="!isAuthenticated()">

						<li><a href="Login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
						<li><a href="Registration"><span
								class="glyphicon glyphicon-user"></span> Register</a></li>
					</sec:authorize>
				</ul>




				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="isAuthenticated()">
						<li><a href="perform_logout"><span
								class="glyphicon glyphicon-log-out"></span> Logout</a></li>


						<li><a href="userdetails"> <span
								class="glyphicon glyphicon-user"></span>Hi <sec:authentication
									property="principal.username" /></a></li>
						<li class="nav navbar-nav">
						<li><a href="Cart"><span
								class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>

					</sec:authorize>
				</ul>





			</div>
		</div>
		</div>

	</nav>

	<script>
		$(document).ready(function() {
			$('.dropdown-submenu a.test').on("click", function(e) {
				$(this).next('ul').toggle();
				e.stopPropagation();
				e.preventDefault();
			});
		});
	</script>

</body>
</html>