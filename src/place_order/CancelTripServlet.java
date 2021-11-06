package place_order;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CancelTripServlet")
public class CancelTripServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String oid = request.getParameter("orderID");
		
		boolean cancelTrue;
		cancelTrue = DatabaseManager.getInstance().deleteOrder(oid);
		
		if(cancelTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("insert_order.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("unsucess.jsp");
			dispatcher.forward(request, response);
		}
	}

}
