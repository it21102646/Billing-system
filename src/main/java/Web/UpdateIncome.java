package Web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.IncomeDAO;

@WebServlet("/UpdateIncome")
public class UpdateIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		String invoiceId = request.getParameter("invoiceId");
		String name = request.getParameter("name");
		String discount = request.getParameter("discount");
		float total = Float.parseFloat(request.getParameter("total"));

		boolean isTrue;

		isTrue = IncomeDAO.updateIncome(id, invoiceId, name, discount, total);

		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ViewIncome.jsp");
			dispatcher.forward(request, response);

		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("UpdateIncome.jsp");
			dispatcher.forward(request, response);
		}
	}

}
