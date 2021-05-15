package place_order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateLocationServlet")
public class updateLocationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String oid = request.getParameter("orderID");
		String destination = request.getParameter("destination");
		
		boolean updateTrue;
		
		updateTrue = place_order_DB_util.updateOrder(oid, destination );

		if(updateTrue == true) {
			
			List <Order> orderDetails = place_order_DB_util.getOrderDetails(oid);
			request.setAttribute("orderDetails", orderDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("orderDetails.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsucess.jsp");
			dispatcher.forward(request, response);
		}
	}
}
