<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cancel order</title>
<!-- java script -->
<script src="index.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="delete">
		<div class="card text-center col-9 mx-auto bg-light">
			<form action="cancelTrip" method="post">
				<div class="input-group mb-3">
					<input type="number" class="form-control"
						placeholder="Enter order ID to cancel Trip" name="orderID"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default">
				</div>
				<input onclick="cancelAlert()" type="submit" class="btn btn-danger" name="submit"
					value="Cancel Trip"><br> <br>
			</form>

			<!-- discription area -->
			<div class="container">
				<div class="box">
					<p>We Ride-Handing includes the largest feet of vehicles on Sri
						Lanaka offering both on-demand and pre-bppking features at the
						best rates, includng tuk, car and van offering you comfort,
						convenience and safty covering the entire island notation.</p>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>