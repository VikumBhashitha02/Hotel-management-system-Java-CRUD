package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//login.jsp eke dena pssword username ganne methanin
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		try {
			
		//Dbutil  eke validate method ekta 
		List<Customer> cusDetails = CustomerDBUtil.validate(username, password);
		request.setAttribute("cusDetails", cusDetails);
		                 //(1)kamathi namak //object name eka
		}
		catch(Exception e) {
			e.printStackTrace();
		} 
		
          //navigate wenna  ona page ekata denna ona ekata dispatcher kiyna eka use krnwa
		RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
		dis.forward(request, response);
		
		
	}

}
