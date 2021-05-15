<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>

<%
	String destination = request.getParameter("destination");
	String orderID = request.getParameter("orderID");
%>

<h1>Update location</h1>
<form action="update" method="post">
Order ID <input type="text" name="orderID" value="<%= orderID%>"readonly><br>
Destination <input type="text" name="destination" value="<%= destination%>"><br>
<input type="submit" value="Change Destination Point"><br>
</form>
</body>
</html>