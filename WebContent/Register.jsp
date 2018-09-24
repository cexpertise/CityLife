<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>The Book Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" media="screen" href="style.css" />
</head>
<body>
<script src="jquery.min.js"></script>
<script>
$(document).ready(function(){
var name=$("#uname");
var pwd=$("#pass");
var rpass=$("#rpass");
var fname=$("#fname");
var lname=$("#lname");
var phone=$("#phone");
var address=$("#address");
var dob=$("#dob");

$("#uname").blur(function(){
  //alert("This input field has lost its focus."+uname);
  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; // reg Exp for Email check
		if(uname.val().match(mailformat))  
			{ $("#un").html("<h3><font color='green'>Good</font></h3>");
			}  
			else{  
			  $("#un").html("<h3><font color='red'>Not a valid Email Address</font></h3>");
			  uname.val("");  
         	  uname.focus();}
});
$("#pass").blur(function(){
if(pass.val().length<7)  
			{ $("#ps").html("<h3><font color='red'>Password length must be more then 6 </font></h3>");
			pass.val("");
			pass.focus();
			}  
			else{  
			  $("#ps").html("<h3><font color='green'>Good</font></h3>");  
         	  }
});
$("#rpass").blur(function(){
if(rpass.val().length<7)  
			{ $("#rps").html("<h3><font color='red'>Password length must be more then 6 </font></h3>");
			rpass.val("");
			rpass.focus();
			}  
			else{  
			  $("#rps").html("<h3><font color='green'>Good</font></h3>");  
         	  }
});
 $("#fname").blur(function(){
   var letters = /^[A-Za-z]+$/;  //reg Exp for All Alphabets
		if(fname.val().match(letters))  
			{ $("#fn").html("<h3><font color='green'>Good</font></h3>");
			}  
			else{  
			  $("#fn").html("<h3><font color='red'>Only Alphabets Allowed</font></h3>");  
			  fname.val("");         	
         	  fname.focus();}
});
$("#lname").blur(function(){
   var letters = /^[A-Za-z]+$/;  //reg Exp for All Alphabets
   		if(lname.val().match(letters))  
			{ $("#ln").html("<h3><font color='green'>Good</font></h3>");
			}  
			else{  
			  $("#ln").html("<h3><font color='red'>Only Alphabets Allowed</font></h3>");  
         	  lname.val("");
         	  lname.focus();}
			  
});
$("#phone").blur(function(){
    var numbers = /^[0-9]+$/; //reg Exp for all Numbers
		if(phone.val().match(numbers))  
			{ $("#ph").html("<h3><font color='green'>Good</font></h3>");
			} 
			else if(phone.val().length < 10)  
			{
			$("#ph").html("<h3><font color='red'>Mobile Number must be 10 digit</font></h3>");
			phone.val("");
			phone.focus();
			}   
			else{  
			  $("#ph").html("<h3><font color='red'>Only Numeric Values</font></h3>");
			  phone.val("");  
         	  phone.focus();}
});
$("#address").blur(function(){
if(address.val().length==0)  
			{ $("#ad").html("<h3><font color='red'>Address Can't left blank</font></h3>");
			address.focus();
			}  
			else{  
			  $("#ad").html("<h3><font color='green'>Good</font></h3>");  
         	  }
});
$("#dob").blur(function(){
if(dob.val().length==0)  
			{ $("#dt").html("<h3><font color='red'>DOB Can't left blank</font></h3>");
			dob.focus();
			}  
			else{  
			  $("#dt").html("<h3><font color='green'>Good</font></h3>");  
         	  }
});
});
</script>
  
<div id="container">
  <div id="header">
    <h1>Registration</h1>
  </div>
  <!-- 
  <div id="sideheader"></div>
 -->
  <div id="left_column">
    <div class="left_column_boxes">
      <h4>Navigation</h4>
      <div id="navcontainer">
        <ul id="navlist">
          <li id="active"><a href="index.jsp" id="current">Home</a></li>
          <li><a href="login.jsp">Login </a></li>
        </ul>
      </div>
    </div>
    </div>
   </div>
    <div id="content">
    ${msg}
<form action="RegServlet" method="post" >
<table>
<tr>
<td>UserName</td>
<td><input type="text" name="name" id="uname"/></td>
<td><p id="un"></p></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pwd" id="pass"/></td>
<td><p id="ps"></p></td>
</tr>
<tr></tr>
<tr>
<td> Re enter Password</td>
<td><input type="password" name="rpass" id="rpass"/></td>
<td><p id="rps"></p></td>
<tr><td>Email<input type="email" name="email"></input></td>
<td><p id="email"></p></td>

<td><input type="submit" value="SUBMIT"/></td>
<tr></tr></tr>
</tr>
</table>
</form>
      </div>
  
</body>
</html>
