package place_order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class DatabaseManager implements IDatabaseManager{
	
	/*sigleton*/
	private static DatabaseManager instance;

	public static DatabaseManager getInstance(){
	 if(instance == null){
	 instance = new DatabaseManager();
	}
	return  instance;

	}
	
	//instance variable
	private  Connection con = null;
	private  Statement st = null;
	private  ResultSet res = null;
	private boolean sucess = false;
	
	/*validate and display details*/
	public List<Order> validate(String transportType, String pickupLocation){
		ArrayList<Order> or = new ArrayList<>();
		
		//validate
		
		try {
			con = connection.getConnection();
			st = con.createStatement();
			
			//query
			String sql = "select * from place_order where transport_type = '"+transportType+"' and pickup_location = '"+pickupLocation+"'";
			
			
			res = st.executeQuery(sql);
		
			//if pickup location and transport type valid fetch order placement details
			if(res.next()) {
				int orderID = res.getInt(1);
				String pickup_location = res.getString(2);
				String destination = res.getString(3);
				String transport_type = res.getString(4);
				int no_of_passengers = res.getInt(5);
				String start_time = res.getString(6);
				
				//create object from Order class
				Order o = new Order(orderID ,pickup_location, destination, transport_type, no_of_passengers, start_time);
				or.add(o);
			}
			
			con.close();
		}
		catch(Exception e){
			e.printStackTrace();//if error occurs this method print error
		}
		return or;
	}
	
	/*create method to insert user enterd values and store*/
	public boolean insertOrder(String pickup, String destination, String transportType, int noOfPassenger, String time) {
		
		
		try {
			//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/INTtech?useSSL=false","root","root");
			
			con = connection.getConnection();
			st = con.createStatement();
			String sql = "insert into place_order values(0,'"+pickup+"','"+destination+"', '"+transportType+"', '"+noOfPassenger+"', '"+time+"')";
			int res = st.executeUpdate(sql);
			
			if(res > 0) {
				sucess = true;
			}
			else {
				sucess = false;
			}
			
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return sucess;
	}
	
	/*update*/
	public boolean updateOrder(String oid, String destination ) {
		try {
			con = connection.getConnection();
			st = con.createStatement();
			
			//update query
			String sql = "update place_order set destination = '"+destination+"' where orderID = '"+oid+"'";
			int res = st.executeUpdate(sql);
			
			if(res > 0) {
				sucess = true;
			}
			else {
				sucess = false;
			}
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return sucess;
	}
	
	/*retrive data*/
	public List<Order> getOrderDetails(String oid) {
		int id = Integer.parseInt(oid);
		ArrayList<Order> or = new ArrayList<>();
		
		try {
				con = connection.getConnection();
				st = con.createStatement();
			
			//retrive query
			String sql = "select * from  place_order where orderID = '"+oid+"'";
			res = st.executeQuery(sql);
			
			while(res.next()) {
				String orderId = res.getString(1);
				String pickup_location = res.getString(2);
				String destination = res.getString(3);
				String transport_type = res.getString(4);
				int no_of_passengers = res.getInt(5);
				String start_time = res.getString(6);
				
				//create object in order class and pass data
				Order order = new Order(id, pickup_location, destination, transport_type, no_of_passengers, start_time);
				
				or.add(order);
			}
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return or;
	}
	
	/*detele order*/
	public boolean deleteOrder(String oid ) {
		try {
			con = connection.getConnection();
			st = con.createStatement();
			
			//delete query
			String sql = "delete from place_order where orderID = '"+oid+"'";
			int res = st.executeUpdate(sql);
			
			if(res > 0) {
				sucess = true;
			}
			else {
				sucess = false;
			}
			
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return sucess;
	}
}
