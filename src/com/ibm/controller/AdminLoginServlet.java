package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AdminLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		if(uname.equals("admin123")&& pwd.equals("admin321"))
		{
			response.sendRedirect("AdminHome.jsp");
			
		}
		else
		{
			response.sendRedirect("AdminLogin.jsp");
			
		}
		        
		
		
		
	}

}
