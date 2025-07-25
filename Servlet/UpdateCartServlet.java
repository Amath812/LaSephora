package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.CartControl;
import model.CartModel;

@WebServlet("/UpdateCartServlet")
public class UpdateCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String color = request.getParameter("colour");
		String size = request.getParameter("big");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		
		boolean isTrue;
		isTrue = CartControl.updatedate(id, name, color, size, quantity, price);
		
		if(isTrue == true) {
			List<CartModel> cart = CartControl.getByid(id);
			request.setAttribute("cart",cart);
			
			String alertMessage = "Data Update Sucessful";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href = 'ReadCartServlet';</script>");
		}
		else {
		    RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}
