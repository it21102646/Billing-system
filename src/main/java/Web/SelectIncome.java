package Web;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.IncomeDAO;
import Model.Income;

@WebServlet("/SelectIncome")
public class SelectIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String invId = request.getParameter("invId");
	

		try {
			List<Income> incDetails = IncomeDAO.displaySelected(invId);
			request.setAttribute("incDetails", incDetails);

		} catch (Exception e) {

			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("ViewIncome.jsp");
		dis.forward(request, response);
	}

}
