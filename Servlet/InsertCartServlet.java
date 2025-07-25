package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import control.CartControl;


@WebServlet("/InsertCartServlet")
public class InsertCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String size = request.getParameter("size");
		String quantity = request.getParameter("quantity");
		String price = request.getParameter("price");
		
		boolean isTrue;
		
		isTrue = CartControl.insertdata(id, name, color, size, quantity, price);
		
		if(isTrue == true) {
			String alertMessage = "Data Insert Sucessful";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href = 'done.jsp';</script>");
		}
		else {
		    RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			dis2.forward(request, response);
		}
	}

}