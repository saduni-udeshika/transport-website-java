<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>error</title>
<!--CSS style sheets-->
<link rel="stylesheet" href="style.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<div style="height: 500px; text-align: center; margin: 3%;">
		<p style="color: red;">
			Your cancalation has been failed!!! <br>Enter your Trip ID again
			to cancel the trip
		</p>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>