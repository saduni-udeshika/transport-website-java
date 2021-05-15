package place_order;

public class Order {
	private int orderID;
	private String pickup_location;
	private String destination;
	private String transport_type;
	private int no_of_passengers;
	private String start_time;
	public Order(int orderID, String pickup_location, String destination, String transport_type, int no_of_passengers, String start_time) {
		
		this.orderID = orderID;
		this.pickup_location = pickup_location;
		this.destination = destination;
		this.transport_type = transport_type;
		this.no_of_passengers = no_of_passengers;
		this.start_time = start_time;
	}
	public int getOrderID() {
		return orderID;
	}
	
	public String getPickup_location() {
		return pickup_location;
	}
	
	public String getDestination() {
		return destination;
	}
	
	public String getTransport_type() {
		return transport_type;
	}
	
	public int getNo_of_passengers() {
		return no_of_passengers;
	}
	
	public String getStart_time() {
		return start_time;
	}
	
	
}
