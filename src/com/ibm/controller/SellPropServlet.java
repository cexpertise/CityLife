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
 * Servlet implementation class SellPropServlet
 */
@WebServlet("/SellPropServlet")
public class SellPropServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellPropServlet() {
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
		String city=request.getParameter("city");
		String country=request.getParameter("country");
		String pin=request.getParameter("pin");
		String builder=request.getParameter("builder");
		String ptype=request.getParameter("ptype");
		String features=request.getParameter("features");
		String bhk=request.getParameter("bhk");
		String owner=request.getParameter("owner");
		String email=request.getParameter("uemail");
		String area=request.getParameter("area");
		String price=request.getParameter("price");
		String rentsell=request.getParameter("rentsell");
		String status=request.getParameter("status");
		
		
		PropModel obj=new PropModel();
		obj.setHno(hno);
		obj.setLocality(locality);
		obj.setCity(city);
		obj.setCountry(country);
		obj.setPin(pin);
		obj.setBuilder(builder);
		obj.setPtype(ptype);
		obj.setFeatures(features);
		obj.setBhk(bhk);
		obj.setOwner(owner);
		obj.setArea(area);
		obj.setPrice(price);
		obj.setRentsell(rentsell);
		obj.setStatus(status);
		obj.setUemail(email);
		
		String sql="insert into propadd(hno,locality,city,country,pin,builder,ptype,features,owner,area,price,rentsell,currentstatus,uemail,bhk) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		CityLifeDao d=new CityLifeDao();
		String msg=d.AddProperty(sql, obj);
		if(msg.equals("Success"))
		{
			response.sendRedirect("UploadPropertyPic.jsp");
		}
		else
		{
			response.sendRedirect("selling.jsp?var=Something Happened!!! Coudn't Add Property.. Please Try Again");
		}
		
		
		
		
		// doGet(request, response);
	}

}
