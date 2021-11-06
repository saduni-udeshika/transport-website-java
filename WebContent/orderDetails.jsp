<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Place Order</title>
<!-- java script -->
<script src="index.js"></script>
</head>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="card">
		<div class="container" style="height: 400px;">
			<c:forEach var="order" items="${orderDetails}">
				<div>
					<!-- insert order placement details -->
					Order ID: ${order.orderID}<br> Pickup Point:
					${order.pickup_location}<br> Drop Location:
					${order.destination}<br> Transport Type:
					${order.transport_type}<br> No of Passengers:
					${order.no_of_passengers}<br> Time: ${order.start_time}<br>
				</div>
				<!-- update destination -->
				<c:set var="orderID" value="${order.orderID}" />
				<br>
				<c:set var="destination" value="${order.destination}" />

			</c:forEach>

			<c:url value="updateLocation.jsp" var="destination">
				<c:param name="orderID" value="${orderID}" />
				<c:param name="destination" value="${ destination}" />
			</c:url>
			<a href="${destination}"> <input type="submit"
				class="btn btn-dark" name="update" value="CHANGE DROP LOCATION"><br>
			</a> <br>
			<!-- cancel order button-->
			<button onclick="cancelTrip()" class="btn btn-danger">CANCEL
				TRIP</button>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>


