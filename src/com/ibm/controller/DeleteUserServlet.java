package com.ibm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.NetmallDao;


@WebServlet("/DeleteUser")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeleteUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		NetmallDao obj=new NetmallDao();
		String [] users=request.getParameterValues("client");
		for(int i=0;i<users.length;i++)
		{
			System.out.println(users[i]);
			obj.DeleteUsers(users[i]);
		}
		response.sendRedirect("DeleteUser.jsp");
	}

}
