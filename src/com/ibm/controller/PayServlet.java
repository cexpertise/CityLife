package com.ibm.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.NetmallDao;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class payServlet
 */
@WebServlet("/payServlet")
public class PayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayServlet() {
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
	
	
	String cardnumber=request.getParameter("cardnumber");
	String secure=request.getParameter("secure");
	String namecard=request.getParameter("namecard");

	String amount=request.getParameter("amount");
	HttpSession session=request.getSession();
	String email=(String)session.getAttribute("email");
	
	
	RegModel obj=new RegModel();
	obj.setCardnumber(cardnumber);
	obj.setSecure(secure);
	obj.setNamecard(namecard);
	obj.setAmount(amount);
	System.out.println("Payservlet amount:"+amount);
	
	String sql="insert into paymentdetails(cardnumber,secure,namecard,amount)values(?,?,?,?)";
	NetmallDao n=new NetmallDao();
	String msg=n.InsertPaymentDetails(sql, obj);
	
	if(msg.equals("Success"))
	{
		response.sendRedirect("PaymentSuccessful.jsp?var="+cardnumber);
		
	
	}
	else
	{
		response.sendRedirect("Payment.jsp");
	}
	
	
	
}

}
