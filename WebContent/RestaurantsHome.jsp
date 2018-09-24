<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="RestaurantsUserReg.jsp" method="post">  
	<table>	
<tr><td>First Name<input type="text" name="FirstName" required/></td></tr> 
<tr><td>Last Name <input type="text" name="LastName" required/></td></tr>
<tr><td>Choose your restaurant<select name="RestaurantName"><option value="HotelD'Presidnte" required>Hotel D'Presidente</option>
  <option value="HotelSignatureGrand">Hotel Signature Grand</option>
  <option value="Skpremiumpark">Sk Premium Park</option>
  <option value="TheAshokHotel">The Ashok Hotel</option>
</select> </td></tr>
<tr><td>No.of Guests<input type="text" name="NoofGuests" required/></td></tr>
<tr><td>Mobile Number<input type="text" name="MobileNo" required/></td></tr>
<tr><td>Expected Visting Time<input type="time" name="Visitingtime" /></td></tr>
<tr><td>Expected Visting Date<input type="date" name="Visitingdate" /></td></tr>
<tr><td>Email<input type="email" name="email" required /></td></tr>
</table>
<input type="submit" value="Reserve your table"/>
</form>
</body>
</html>