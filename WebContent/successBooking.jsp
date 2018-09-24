<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*" %>
<%@page import="com.ibm.model.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>City Life | Booking Success</title>
</head>
<body>

<% 
PropModel obj=new PropModel();

String uemail=request.getParameter("uemail");



%>


<center>
    <h2>Your Booking done Successfully </h2>
    <h3>You can contact the owner at: <br><br>
    
    		<label>Owner's Name: </label><FONT COLOR="RED"><%=uemail %></FONT><br>
    		<label>Owner's Contact No.: </label>
        
       <% int counter;
       Random rand = new Random();
        int n = rand.nextInt(90000) + 15000;
        for (counter = 1; counter <= 2; counter++) {
        	out.print(n);
         }
        
        %>
      </h3>
   
    </center>

</body>
</html>