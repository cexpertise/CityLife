c<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload your documents</title>
</head>
<%
if(session.getAttribute("EMAIL")!=null)
{
	String email=(String)session.getAttribute("email");
	%><center>
<H1>Upload Your ID PROOF </H1>

<body>
</div><form ENCTYPE="multipart/form-data" action="UploadServlet"  METHOD=POST style="margin-top:50px;">
	<INPUT NAME="F1" TYPE="file"></td></tr>
 <tr><td><input type="submit" value="Upload"></td></tr>
    </form>
    </center>
</body>
<%
}
else 
{
	response.sendRedirect("login.jsp");
	
}
%>
</html>