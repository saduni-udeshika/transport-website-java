<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>order</title>

</head>
<body>
<div class="insertForm">
<jsp:include page="header.jsp"/>
	<div class="card text-center col-9 mx-auto" style="background-color:#f0f0f0;">
		<form action="InsertOrderDetails" method="post">
			<h1 class="card-header">Plan Your Ride</h1>
			<br>
			<div class="input-group mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">
					<img src="img/icons8-location-24.png">
				</span> <input type="text" class="form-control"
					placeholder="Enter PickUp Location" name="location"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">
					<img src="img/icons8-location-24.png">
				</span> <input type="text" class="form-control"
					placeholder="Enter Drop Location" name="destination"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">
					<img src="img/icons8-passenger-24.png">
				</span> <input type="text" class="form-control"
					placeholder="No of Passengers" name="no"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
			<div class="input-group mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">
					<img src="img/icons8-time-24.png">
				</span> <input type="text" class="form-control"
					placeholder="Select Transport Type" readonly
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
			<div class="row">
				<div class="col-sm-3 col-md-6 col-lg-3 p-5">
							<img src="img/icons8-taxi-96.png">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="type"
							value="tuk" id="flexRadioDefault1"> <label
							class="form-check-label" for="flexRadioDefault1"> Mini
							Taxi </label>
					</div>
				</div>
				<br>
				<div class="col-sm-3 col-md-6 col-lg-3 p-5">
							<img src="img/icons8-car-96.png">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="type"
							value="car" id="flexRadioDefault2"> <label
							class="form-check-label" for="car"> Car </label>
					</div>
				</div>
				<br>
				<div class="col-sm-3 col-md-6 col-lg-3 p-5">
							<img src="img/icons8-van-96.png">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="type"
							value="van" id="flexRadioDefault3"> <label
							class="form-check-label" for="flexRadioDefault3"> Van</label>
					</div>
				</div>
			</div>

			<div class="input-group mb-3">
				<span class="input-group-text" id="inputGroup-sizing-default">
					<img src="img/icons8-time-24.png">
				</span> <input type="text" class="form-control"
					placeholder="Enter PickUp Time" name="time"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
			<input class="btn btn-dark" type="submit" value="BOOK NOW"><br>
			<br>
		</form>
	</div>
	<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>