package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.CityLifeDao;
import com.ibm.model.PropModel;

/**
 * Servlet implementation class BookPropServlet
 */
@WebServlet("/BookPropServlet")
public class BookPropServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookPropServlet() {
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


		String hno=request.getParameter("hno");
		String locality=request.getParameter("locality");
		String features=request.getParameter("features");
		String price=request.getParameter("price");
		String rentsell=request.getParameter("rentsell");
		String status=request.getParameter("cstatus");
		String ptype=request.getParameter("ptype");
		String bhk=request.getParameter("bhk");
		String owner=request.getParameter("owner");
		String uemail=request.getParameter("uemail");
		String bookuname=request.getParameter("bookuname");
		String bookuemail=request.getParameter("bookuemail");
		String bookucontact=request.getParameter("bookucontact");
		
		
		PropModel obj=new PropModel();
		obj.setHno(hno);
		obj.setLocality(locality);
		obj.setFeatures(features);
		obj.setBhk(bhk);;
		obj.setPtype(ptype);
		obj.setPrice(price);
		obj.setRentsell(rentsell);
		obj.setStatus(status);
		obj.setBookuemail(bookuemail);
		obj.setBookuname(bookuname);
		obj.setBookucontact(bookucontact);
		
		String sql="insert into bookprop(hno,locality,features,ptype,price,rentsell,bhk,cstatus,bookuemail,bookuname,bookucontact) values(?,?,?,?,?,?,?,?,?,?,?)";
		
		CityLifeDao d=new CityLifeDao();
		String msg=d.BookProperty(sql, obj);
		if(msg.equals("Success"))
		{
			response.sendRedirect("successBooking.jsp?uemail="+uemail);
		}
		else
		{
			response.sendRedirect("BookProp.jsp?var=Something Happened!!! Coudn't Book Property.. Please Try Again");
		}
		
		

		
		doGet(request, response);
	}

}
