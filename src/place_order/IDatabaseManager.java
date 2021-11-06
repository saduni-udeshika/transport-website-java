package place_order;

import java.util.List;

public interface IDatabaseManager {
	public List<Order> validate(String transportType, String pickupLocation);
	public boolean insertOrder(String pickup, String destination, String transportType, int noOfPassenger, String time);
	public boolean updateOrder(String oid, String destination );
	public List<Order> getOrderDetails(String oid);
	public boolean deleteOrder(String oid );
}
