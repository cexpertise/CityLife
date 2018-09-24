package com.ibm.controller;

import java.io.DataInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.NetmallDao;

@WebServlet("/UploadHotelUserImageServlet")
public class UploadHotelUserImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadHotelUserImageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		 String savePath = getServletContext().getRealPath("/")+"profilePic\\";
		 System.out.println(savePath);
	        
		    
		//*********************************************************************************    
		    String saveFile="";
		    String contentType = request.getContentType();
	      if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
	                DataInputStream in = new DataInputStream(request.getInputStream());
	                
	                int formDataLength = request.getContentLength();
	                byte dataBytes[] = new byte[formDataLength];
	                int byteRead = 0;
	                int totalBytesRead = 0;
	                while (totalBytesRead < formDataLength) {
	                        byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
	                        totalBytesRead += byteRead;
	                        }
	                String file = new String(dataBytes);
	               
	                saveFile = file.substring(file.indexOf("filename=\"") + 10);
	                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
	                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
	                int lastIndex = contentType.lastIndexOf("=");
	                String boundary = contentType.substring(lastIndex + 1,contentType.length());
	                int pos;
	                pos = file.indexOf("filename=\"");
	                pos = file.indexOf("\n", pos) + 1;
	                pos = file.indexOf("\n", pos) + 1;
	                pos = file.indexOf("\n", pos) + 1;
	                int boundaryLocation = file.indexOf(boundary, pos) - 4;
	                int startPos = ((file.substring(0, pos)).getBytes()).length;
	                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
	             
	                FileOutputStream fileOut = new FileOutputStream(savePath+saveFile); 
	                System.out.println(saveFile);
	                fileOut.write(dataBytes, startPos, (endPos - startPos));
	                fileOut.flush();
	                fileOut.close();
//*****************************************************************************************************
		HttpSession session=request.getSession();
	    String email=(String)session.getAttribute("EMAIL");
	    
	    System.out.print(""+email);
	    System.out.println(email);
	    String sql="update bookingdetails set pic=? where email=?";
	    
	    
	    
	    NetmallDao obj=new NetmallDao();
	    String msg=obj.UpdateProfilePic(sql, saveFile, email);
	   if(msg=="success")
		   {
			   response.sendRedirect("Payment.jsp");
		   }
	   else
	   {
		   response.sendRedirect("UploadPic.jsp?var=Failed to upload pic");
	   }
	      
	      
	      }
	      
	}

}
