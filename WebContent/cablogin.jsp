<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="img/2.jpg">
<h1>
PLEASE LOGIN</h1>
<form action="Logincabservlet" method="post">
<center>
<table>
  <tr>
        <td>EMAIL</td>
	    <td> <input type="email" name="email" />
		 </td>
        </tr>
  <tr>
    <td>PASSWORD</td>
    <td><input type="password" name="pwd"/></td>
    
  </tr>
  <tr>
  <td><input type="submit" value="LOGIN" /></td>
  </tr>
  </table>
  </center>
  </form>
  </body>
</html> 