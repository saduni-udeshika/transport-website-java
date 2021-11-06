<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
<!-- java script file -->	
<script src="index.js"></script>
</head>
<body>
<jsp:include page="header.jsp"/>

	<%
		String destination = request.getParameter("destination");
		String orderID = request.getParameter("orderID");
	%>
	<div class="card text-center col-9 mx-auto bg-light">
		<form action="updateLocation" method="post" style="height:450px;">
			<br>
			<div style="margin:0 5%;">
			<div class="input-group mb-3">
				<div style="margin:0 6% 0 0;">Order ID </div> <input type="text" name="orderID" value="<%=orderID%>"
					readonly class="form-control">
			</div><br>
			<div class="input-group mb-3">
				<div style="margin:0 1% 0 0;">Drop Location </div><input type="text" name="destination"
				value="<%=destination%>" class="form-control" aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
			</div>
			</div>
			<br><br> <input type="submit"
				class="btn btn-dark" value="UPDATE DROP LOCATION"><br><br>
				<div style="font-size:1.75rem; margin:2%;">Or</div><br>
		</form>
		<button onclick="cancelTrip()"class="btn btn-danger btn-lg">CANCEL TRIP</button>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>