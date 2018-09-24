package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.NetmallDao;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class HotelBookingServlet
 */
public class HotelBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelBookingServlet() {
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

		String FirstName=request.getParameter("FirstName");
		String LastName=request.getParameter("LastName");
		String HotelName=request.getParameter("HotelName");
		String NoofGuests=request.getParameter("NoofGuests");
		String MobileNo=request.getParameter("MobileNo");
		String Checkintime=request.getParameter("Checkintime");
		String Checkindate=request.getParameter("Checkindate");
		String email=request.getParameter("email");
		String sql="Insert into bookingdetails(FirstName,LastName,HotelName,NoofGuests,MobileNo,Checkintime,Checkindate,email,amount)values(?,?,?,?,?,?,?,?,?)";
		
		
		
		RegModel ob=new RegModel();
		
		
		if(HotelName.equals("HotelD'Presidnte"))
		{
		ob.setAmount("1000");
		
		}
		else if(HotelName.equals("HotelSignatureGrand"))
		{
			ob.setAmount("2000");
		}
		else if(HotelName.equals("Skpremiumpark"))
		{
			ob.setAmount("3000");
		}
		else if(HotelName.equals("TheAshokHotel"))
		{
			ob.setAmount("4000");
		}
		
		ob.setCheckindate(Checkindate);
		ob.setCheckintime(Checkintime);
		ob.setEmail(email);
		ob.setFirstName(FirstName);
		ob.setLastName(LastName);
		ob.setMobileNo(MobileNo);
		ob.setHotelName(HotelName);
		ob.setNoofGuests(NoofGuests);
		
		NetmallDao obj=new NetmallDao();
		String msg=obj.InsertHotelUser(sql, ob);
		System.out.println(msg);
		response.sendRedirect("UploadPic.jsp");
			
		}


		
		
		
		
		
		
		
		
		
		
		
	}


