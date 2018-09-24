package com.ibm.controller;

import java.io.IOException;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.CityLifeDao;

/**
 * Servlet implementation class buyingServlet
 */
@WebServlet("/buyingServlet")
public class buyingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buyingServlet() {
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
		
		String hometype=request.getParameter("hometype");
		String prefloc=request.getParameter("prefloc");
		String bhk1=request.getParameter("bhk");

		//System.out.println(hometype);
		//System.out.println(prefloc);
		//System.out.println(bhk1);
		
		
		response.sendRedirect("RefineSearch.jsp?hometype="+hometype+"&prefloc="+prefloc+"&bhk1="+bhk1);
		
		


		doGet(request, response);
	}

}
