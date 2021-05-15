<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Place Order</title>
</head>
<body>
	  <c:forEach var = "order" items="${orderDetails}">
	  
	  <!-- insert order placement details -->
			Order ID: ${order.orderID}<br>
        	Pickup Point: ${order.pickup_location}<br>
        	Dedtination: ${order.destination}<br>
        	Transport Type: ${order.transport_type}<br>
        	No of Passengers: ${order.no_of_passengers}<br>
        	Time: ${order.start_time}<br>
        	
      <!-- update destination -->
	  	<c:set var="orderID" value="${order.orderID}"/><br>
	  	<c:set var="destination" value="${order.destination}"/>
		
      </c:forEach>
      
      <c:url value="updateLocation.jsp" var="destination">
      	<c:param name="orderID" value="${orderID}"/>
      	<c:param name="destination" value="${ destination}"/>
      </c:url>
      <a href="${destination}">
      	<input type="submit"name= "update" value="Change Destination Point"><br>
      </a>
      
      <!-- delete order -->
      <c:url value="deleteOrder.jsp" var="orderDelete">
      	<c:param name="id" value="${ orderID}"/>
      	<c:param name="pickup_location" value="${ pickup_location}"/>
      	<c:param name="destination" value="${ destination}"/>
      	<c:param name="transport_type" value="${ transport_type}"/>
      	<c:param name="no_of_passengers" value="${ no_of_passengers}"/>
      	<c:param name="start_time" value="${ start_time}"/>
      	</c:url>
		<a href="${ orderDelete}"><!-- variable name -->
      	<input type="submit" name= "delete" value="Cancel Trip"><br>
      	</a>
      	
</body>
</html>

 	   
