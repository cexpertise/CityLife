
package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.NetmallDao;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class UpdateHotelUserServlet
 */
public class UpdateHotelUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateHotelUserServlet() {
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
		String email=request.getParameter("EMAIL");
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		
		RegModel obj=new RegModel();
		
		obj.setEmail(email);
		obj.setUname(uname);
		obj.setPwd(pwd);
		
		
		String sql="update bookingdetails set uname=?,pwd=? where email=?";
		
		NetmallDao n=new NetmallDao();
		String msg=n.UpdateHotelUserByEmail(sql, obj);
		if(msg.equals("success"))
		{
			response.sendRedirect("searchUsers.jsp?email="+email);
		}
		else
		{
			response.sendRedirect("searchUsers.jsp?val=fail to update");
		}
		
		
		
		
		
		
	}

	}


