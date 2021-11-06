package place_order;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Order_insert")
public class Order_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//store order details in variables
		
		String pickup = request.getParameter("location");
		String destination = request.getParameter("destination");
		String transportType = request.getParameter("type");
		int noOfPassenger = Integer.parseInt(request.getParameter("no"));
		String time = request.getParameter("time");
		
		boolean True;
		True = DatabaseManager.getInstance().insertOrder(pickup, destination, transportType, noOfPassenger, time);
		 if(True == true) {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("placeOrder.jsp");
			 dispatcher.forward(request, response);
		 }
		 else {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("unsucess.jsp");
			 dispatcher.forward(request, response);
		 }
		 
	}

}
