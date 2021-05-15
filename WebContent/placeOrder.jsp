<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>place order</title>
</head>
<body>
	<form action="PlaceOrder" method="post">
		Enter PickUp Location<input type="text" name="pickup"><br>
		Enter Destination point<input type="text" name="destination"><br>
		Select Transport Type<input type="text" name="type"><br>
		<!--Enter No of Passengers<input type="number" name="no"><br>
		Enter time duration<input type="time" name="time"><br>-->
		<input type = "submit" name="submit" value="PLACE ORDER">
	</form>
</body>
</html>