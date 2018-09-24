package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.CityLifeDao;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class Regservlet
 */
@WebServlet("/Regservlet")
public class Regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public Regservlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		String email=request.getParameter("EMAIL");
		String date=request.getParameter("date");
		String gender=request.getParameter("gender");
		String city=request.getParameter("city");
		String msg1=request.getParameter("msg1");
		
		
		RegModel obj=new RegModel();
		obj.setUname(uname);
		obj.setPwd(pwd);
		obj.setEmail(email);
		obj.setDate(date);
		obj.setGender(gender);
		obj.setCity(city);
		obj.setMsg1(msg1);
		
		
		String sql="insert into Register(uname,pwd,email,date,gender,city,msg) values(?,?,?,?,?,?,?)";
		
		CityLifeDao d=new CityLifeDao();
		String msg=d.InsertUser(sql, obj);
		if(msg.equals("success"))
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
			response.sendRedirect("registration.jsp?val=Please Enter all the values correctly and Try Again");
		}
		

		doGet(request, response);
		
	}

}
