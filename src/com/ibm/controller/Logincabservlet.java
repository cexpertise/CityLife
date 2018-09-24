package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.NetmallDao;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class Logincabservlet
 */
public class Logincabservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logincabservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		RegModel obj=new RegModel();
		obj.setEmail(email);
		obj.setPwd(pwd);
		
		String sql2="select * from register where email=? and pwd=?";
		
		NetmallDao ob=new NetmallDao();
		String msg=ob.validateUser(sql2,obj);
		if(msg.equals("success"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("EMAIL",email);
			session.setMaxInactiveInterval(1*60);
			response.sendRedirect("Transport.jsp");
		
		}
		else
		{
			response.sendRedirect("login.jsp?var=Invalid username and password");
			
			
		}
		}

	}

