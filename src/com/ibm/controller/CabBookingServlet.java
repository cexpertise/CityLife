package com.ibm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.Citylife;
import com.ibm.model.CabModel;

/**
 * Servlet implementation class CabBookingServlet
 */
@WebServlet("/CabBookingServlet")
public class CabBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CabBookingServlet() {
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
		
		String FirstName=request.getParameter("FirstName");
		String LastName=request.getParameter("LastName");
		String CabName=request.getParameter("CabName");
		String NoofMembers=request.getParameter("NoofMembers");
		String MobileNo=request.getParameter("MobileNo");
		String Pick=request.getParameter("Pick");
		String Dropoff=request.getParameter("Dropoff");
		String Email=request.getParameter("Email");
		String pickuptime=request.getParameter("Pickuptime");
		String sql="insert into cabbookingdetails (FirstName,LastName,CabName,NoofMembers,MobileNo,Pick,Dropoff,Email,Pickuptime)values(?,?,?,?,?,?,?,?,?)";
		
		
		
		CabModel ob=new CabModel();
		
		
		ob.setPick(Pick);
		ob.setPickuptime(pickuptime);
		ob.setDropoff(Dropoff);
		ob.setEmail(Email);
		ob.setFirstName(FirstName);
		ob.setLastName(LastName);
		ob.setMobileNo(MobileNo);
		ob.setCabName(CabName);
		ob.setNoofMembers(NoofMembers);
		
		Citylife obj=new Citylife();
		String msg=obj.InsertCabUser(sql, ob);
		if(msg.equals("Success"))
		{
			response.sendRedirect("Cabbookingsuccessful.jsp");
		}
		else
		{
			response.sendRedirect("Transport.jsp?var=Booking unsuccessful... Please enter valid details");
		}
		
		
		
		

	
		}


	}


