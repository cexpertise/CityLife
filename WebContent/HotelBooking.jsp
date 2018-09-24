<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>City Life| Hotel Booking </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hosting City Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

</head>
<body class="size-1140">
<%
if(session.getAttribute("EMAIL")!=null)
{
	String email=(String)session.getAttribute("email");
	%>
	
	<!-- header-top -->
	<!-- TOP NAV WITH LOGO -->
	<div class="header-top">
		<div class="container">
			<div class="w3layouts-address">
				
			</div>
			<div class="agileinfo-social-grids">
				
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //header-top -->
	<!-- header -->
	<div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="w3layouts-logo">
							<h1><a href="index.html"><strong>CITY LIFE</strong></a></h1>
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li class="active-item"><a href="UserHome.jsp" class="hvr-sweep-to-bottom">Back</a></li>
                    			<li><a href="index.html" class="hvr-sweep-to-bottom">Logout</a></li>
                     
							</ul>
						</nav>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
			</div>
	</div>
	<!-- //header -->
	<!-- about-heading -->
	<div class="about-heading">
		<h2>Delhi <span>City Life</span></h2>
	</div>
<div>
<center><a href="ViewHotelUser.jsp"><h2>View your booking details</h2></a></center>
<center>
<%

if(request.getParameter("var")!=null)
{
	out.println("<h2><font color=red>"+request.getParameter("var")+"<font></h2>");
}

%>
</center>
</div>
	
	<!-- //about-heading -->
	<div class="registration">
		<div class="container">
			<div class="signin-form profile">
				<h3>Hotel Booking</h3>
				<div class="login-form">
					
					<form action="HotelBookingServlet" method="post">
							<input type="text" name="FirstName" placeholder="First Name" required=""/> 
							 <input type="text" name="LastName" placeholder="Last Name" required=""/>
							<label>Hotel Name</label>
							<select name="HotelName" placeholder="Hotel Name">
								<option value="HotelD'Presidnte" >Hotel D'Presidente</option>
							 	<option value="HotelSignatureGrand">Hotel Signature Grand</option>
							 	<option value="Skpremiumpark">Sk Premium Park</option>
							  	<option value="TheAshokHotel">The Ashok Hotel</option>
							</select><hr> 
							<input type="text" name="NoofGuests" placeholder="No.of Guests" required=""/>
							<input type="text" name="MobileNo" placeholder="Mobile Number" required=""/> 
							<label>Expected Check-in Time</label>
							<input type="time" name="Checkintime" placeholder="Expected Check-in Time"/> 
							<br><label>Expected Check-in Date</label>
							<input type="date" name="Checkindate" placeholder="Expected Check-in Date"/> 
							<input type="email" name="email" placeholder="Email" required="" />
							
							
							<input type="submit" value="Book" />
							<br>
							<br>
							<a href="https://www.google.co.in/maps/search/Delhi+hotels/@28.6404589,77.0704708,13z/data=!3m1!4b1"target="blank">FIND HOTELS</a>
							<br><a href="UploadPic.jsp">Upload ID PROOF</a><br>
							
													</form>
							
<%

}
else{
	response.sendRedirect("login.jsp");
}

%>							
				</div>
				<div class="login-social-grids">
					
				</div>
				
			</div>
		</div>
	</div>
	<!-- footer -->
	<div class="footer">
	  <div class="copyright">
			<p>Copyright 2017, Vision Design - graphic zoo</p>
               <p>All images is purchased from Bigstock. Do not use the images in your website.</p>
			   <a class="right" href="http://www.myresponsee.com" title="Responsee - lightweight responsive framework">Design and coding<br> by Spardha Sharma</a>
		</div>
	</div>
	<!-- //footer -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	

</body>	
</html>