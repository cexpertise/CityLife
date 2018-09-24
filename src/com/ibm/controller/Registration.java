package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.QConnect;
import com.ibm.model.Register;




public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Registration() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		
		
		System.out.println(username+"|"+password+"|"+email);
		String sql="insert into register(uname,pwd,email) values(?,?,?)";
		
		Register obj=new Register();
		obj.setEmail(email);
		obj.setPassword(password);
		obj.setUsername(username);
		boolean status=QConnect.register(obj,sql);
		if(status)
		{
			System.out.println("status true");
			request.setAttribute("username",username);
			getServletContext().getRequestDispatcher("/chatlogin.jsp").forward(request, response);
		}
		else
		{
			String message="Please Try Again";
			request.setAttribute("msg", message);
			getServletContext().getRequestDispatcher("/chatregister.jsp").include(request, response);
		}
	}

}
