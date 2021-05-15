<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="InsertOrderDetails" method="post">
		Pickup Loaction<input type="text" name="location"><br> 
		Destination Point<input type="text" name="destination"><br>
		Transport Type<input type="text" name="type"><br>
		No of Passengers<input type="number" name="no"><br>
		Time<input type="text" name="time"><br>
		<input type="submit" value="PLACE ORDER">
	</form>
</body>
</html>