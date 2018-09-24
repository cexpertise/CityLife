package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.classic.Session;

import com.ibm.dao.NetmallDao;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class CancelBookingServlet
 */
public class CancelBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelBookingServlet() {
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
		
		HttpSession session=request.getSession();
		String email=session.getAttribute("EMAIL").toString();
		System.out.println("****"+email);
		
		
		RegModel obj=new RegModel();
		obj.setEmail(email);
		
	
		
		String sql="delete from bookingdetails where email=?";

		NetmallDao ob=new NetmallDao();
		String msg=ob.CancelHotelBooking(sql,obj);
		
		if(msg.equals("Success"))
		{
			response.sendRedirect("BookingCancelled.jsp");
		}
		
		
		
		
		
		
		
	}

}
