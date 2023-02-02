package Web;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.IncomeDAO;



@WebServlet("/insertIncome")
public class insertIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String invoiceId = request.getParameter("invoiceId");
		String name = request.getParameter("name");
		String discount = request.getParameter("discount");
		float total = Float.parseFloat(request.getParameter("total"));
		
	
		boolean isTrue;
		
		isTrue = IncomeDAO.insertIncome(invoiceId, name, discount, total);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("ViewIncome.jsp");
			dis.forward(request, response);
		
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Income.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
