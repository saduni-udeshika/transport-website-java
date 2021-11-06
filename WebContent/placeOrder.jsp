<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>place order</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<div class="card text-center col-9 mx-auto" style="background-color:#f0f0f0;">
		<form action="PlaceOrder" method="post">
			<h1 class="card-header">View Your Ride Details</h1>

			<br>
			<div class="input-group mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default"><img
					src="img/icons8-location-24.png"></span> <input type="text"
					class="form-control" placeholder="Enter PickUp Location"
					name="pickup" aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
			<br>
			<div class="input-group mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default"><img
					src="img/icons8-location-24.png"></span> <input type="text"
					class="form-control" placeholder="Enter Drop Location"
					name="destination" aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
			<div class="row">
				<div class="col-sm-3 p-5">
					<div class="card">
						<div class="card-body">
							<img src="img/icons8-taxi-96.png">
						</div>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="type" value="tuk"
							id="flexRadioDefault1"> <label class="form-check-label"
							for="flexRadioDefault1"> Mini Taxi </label>
					</div>
				</div>
				<br>
				<div class="col-sm-3 p-5">
					<div class="card">
						<div class="card-body">
							<img src="img/icons8-car-96.png">
						</div>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="type" value="car"
							id="flexRadioDefault2"> <label class="form-check-label"
							for="car"> Car </label>
					</div>
				</div>
				<br>
				<div class="col-sm-3 p-5">
					<div class="card">
						<div class="card-body">
							<img src="img/icons8-van-96.png">
						</div>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="type" value="van"
							id="flexRadioDefault3"> <label class="form-check-label"
							for="flexRadioDefault3"> Van</label>
					</div>
				</div>
			</div>
			<input class="btn btn-dark" type="submit" name="submit"
				value="VIEW TRIP DETAILS"><br> <br>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>