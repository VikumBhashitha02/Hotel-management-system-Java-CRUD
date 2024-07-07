package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       //2 video insert
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		       //variable ekak
		boolean isTrue;
		
		//static method ekak nisa kelinma access krnna puluwan
	isTrue =CustomerDBUtil.insertcustomer(name, email, phone, username, password);
		
	if(isTrue==true) {
		 request.setAttribute("message", "Sign up successful! Redirecting to login...");
		//servlet eke edan jsp ekakata navigate venna dispatch use krnne
		RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
		dis.forward(request, response);
	}else {
		RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request, response);
	}
		
	}

}
