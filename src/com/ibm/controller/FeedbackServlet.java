package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.NetmallDao;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class FeedbackServlet
 */
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
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
	String name=request.getParameter("name");
	String msg=request.getParameter("msg");
	
	RegModel obj=new RegModel();
	obj.setEmail(email);
	obj.setName(name);
	obj.setMsg(msg);
		
	String sql="Insert into feedback(email,name,msg)values(?,?,?)";
	NetmallDao n=new NetmallDao();
	String f=n.InsertFeedback(sql,obj);
	if(f.equals("success"))
	{
		response.sendRedirect("index.html?var=Thanks for your valuable feedback, we will get back to you shortly");
	}
	else{
		response.sendRedirect("index.hmtl?var=Please fill all the fields..");
		
	}
	}

}
