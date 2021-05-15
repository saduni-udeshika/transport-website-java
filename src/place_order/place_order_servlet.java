package place_order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class place_order_servlet
 */
@WebServlet("/place_order_servlet")
public class place_order_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catch pickup location and transport type
		String location = request.getParameter("pickup");
		String transportType = request.getParameter("type");
		
		try {
			
			//call validate method and create list object
			List<Order> orderDetails = place_order_DB_util.validate(transportType, location);
			request.setAttribute("orderDetails", orderDetails);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		//rederect another page and display order details
		RequestDispatcher dispatcher = request.getRequestDispatcher("orderDetails.jsp");
		dispatcher.forward(request, response);
	}

}
