package place_order;

import java.sql.Connection;
import java.sql.DriverManager;

//create database connection
public class connection {
	private static String url = "jdbc:mysql://localhost:3306/transport";
	private static String user = "root";
	private static String password = "My10sql@!";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");//Instances of the class Class represent classes andinterfaces in a running Java application
			con = DriverManager.getConnection(url, user, password);
		}
		catch(Exception e) {
			System.out.println("Database connection error");
		}
		return con;
	}
}
