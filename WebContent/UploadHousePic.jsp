<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ibm.dao.CityLifeDao" %>
    <%@page import="java.sql.*" %>
    <% String mypic=null; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Property Pics</title>
</head>
<center>
<H1>Upload Property Pics </H1></center>

<body>

				
				   <div>
<center>
<%

if(request.getParameter("val")!=null)
{
	out.println("<h2><font color=red>"+request.getParameter("val")+"</font></h2>");
}

%>
</center>
</div>
				
<div style="width:500px; height:100px; border-style: ridge;">
						
				<form ENCTYPE="multipart/form-data" action="UploadPropertyImageServlet"  METHOD=POST style="margin-top:50px;">
						<INPUT NAME="F1" TYPE="file">
					    <input type="submit" value="Upload">
						</form>
					</div>
				
								
<div style="width:500px; height:100px; border-style: ridge;">
						
				<form ENCTYPE="multipart/form-data" action="UploadPropertyImageServlet"  METHOD=POST style="margin-top:50px;">
						<INPUT NAME="F2" TYPE="file">
					    <input type="submit" value="Upload">
						</form>
					</div>
				
								
<div style="width:500px; height:100px; border-style: ridge;">
						
				<form ENCTYPE="multipart/form-data" action="UploadPropertyImageServlet"  METHOD=POST style="margin-top:50px;">
						<INPUT NAME="F3" TYPE="file">
					    <input type="submit" value="Upload">
						</form>
					</div>
					
				
</body>

</html>