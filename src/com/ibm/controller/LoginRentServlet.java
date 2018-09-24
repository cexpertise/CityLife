package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.NetmallDao;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class LoginRentServlet
 */
@WebServlet("/LoginRentServlet")
public class LoginRentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginRentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		
		RegModel obj=new RegModel();
		obj.setEmail(email);
		obj.setPwd(pwd);
		
		String sql="select * from register where email=? and pwd=?";
		
		
		NetmallDao o=new NetmallDao();
		String msg=o.validateUser(sql, obj);
		if(msg.equals("success"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("EMAIL", email);
			//session.setMaxInactiveInterval(1*60);
			response.sendRedirect("renting.jsp");
		}
		else
		{
			response.sendRedirect("LoginRent.jsp?var=Invalid Username or Password");
		}
		
		doGet(request, response);
	}

}
