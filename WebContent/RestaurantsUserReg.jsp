<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<%@page import="com.ibm.model.HibDao" %>  
<%@page import="com.ibm.model.HibModel" %> 

<jsp:useBean id="obj" class="com.ibm.model.HibModel"></jsp:useBean>  

<% String email=null; %>
<head>
<title>City Life| Delete Hotel Users </title>
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
HibModel obj1=new HibModel();
obj1.setFirstName(request.getParameter("FirstName"));
obj1.setLastName(request.getParameter("LastName"));
obj1.setMobileNo(request.getParameter("MobileNo"));
obj1.setNoofGuests(request.getParameter("NoofGuests"));
obj1.setRestaurantName(request.getParameter("RestaurantName"));
obj1.setVisitingdate(request.getParameter("Vistingdate"));
obj1.setVisitingtime(request.getParameter("Visitingtime"));
obj1.setEmail(request.getParameter("email"));
int j=HibDao.register(obj1);


//String a=request.getParameter("name");


int i=HibDao.register(obj);  %><center>
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
								<li class="active-item"><a href="UserHome.jsp" class="hvr-sweep-to-bottom">User Home</a></li>
                    			<li><a href="login.jsp" class="hvr-sweep-to-bottom">Logout</a></li>
                     			<li><a href="index.html" class="hvr-sweep-to-bottom">Home Page</a></li>
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

	
	<!-- //about-heading -->
	<div class="registration">
		<div class="container">
			<div style=background-color:#d9ecff >


			
				<div class="login-form">
					 <% 
if(i>0)  
out.print("Your table has been successfully reserved");  
else
{out.print("Oops! You made a mistake,check your details again");}
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