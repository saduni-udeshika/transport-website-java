<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- CSS sheet -->
<link rel="stylesheet" href="style.css">
<!-- boostrap links -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<!-- nav bar -->
	<nav class="navbar navbar-expand-sm navbar-dark"
		style="background-color: #0f0f0f;">
		<div class="container-fluid">
			<a class="navbar-brand" style="color: white;">TUKTUK</a>
			<div>
				<ul class="navbar-nav d-flex">
					<li class="nav-item dropdown"><a
						class="nav-link active dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">SIGNIN </a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="#">Passenger</a> <a
								class="dropdown-item" href="#">Driver</a>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="insert_order.jsp">ORDER</a></li>
					<li class="nav-item"><a class="nav-link" href="#">VEHICLES</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">REVIEW</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">SIGNOUT</a></li>
				</ul>
			</div>
			<form class="d-flex" action="placeOrder.jsp" method="post"
				name="search">
				<input class="form-control me-3" placeholder="search order details"
					aria-label="Search" name="submit"> <img class="search"
					src="img/icons8-search-24.png">
				<!-- <button class="btn btn-outline-light" type="submit">Search</button> -->
			</form>
		</div>
	</nav>
	<!-- java script -->
	<script src="index.js"></script>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>