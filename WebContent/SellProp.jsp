<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>City Life| Sell </title>
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
	<!-- header-top -->
	<!-- TOP NAV WITH LOGO -->
	<div class="header-top">
		<div class="container">
			<div class="w3layouts-address">
				<ul>
					<li><i class="fa fa-mobile" aria-hidden="true"></i> CONTACT US: <strong>0800 200 200</strong> | </li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com"> <strong>contact@jaipurtourism.com</strong></a></li>
				</ul>
			</div>
			<div class="agileinfo-social-grids">
				<ul>
					<li><a href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-rss"></i></a></li>
					<li><a href="#"><i class="fa fa-vk"></i></a></li>
				</ul>
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
								<li class="active-item"><a href="index.html" class="hvr-sweep-to-bottom">Home</a></li>
                     <li><a href="index.html" class="hvr-sweep-to-bottom">About</a></li>
                     <li><a href="index.html" class="hvr-sweep-to-bottom">HIGHLIGHTS</a></li>
                     <li><a href="index.html" class="hvr-sweep-to-bottom">Business</a></li>
                     <li><a href="index.html" class="hvr-sweep-to-bottom">Services</a></li>
					 <li><a href="photo_gallery\index.html" class="hvr-sweep-to-bottom">Gallery</a></li>
					 <li class="active"><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a class="hvr-sweep-to-bottom" href="login.jsp">Login</a></li>
										<li class="active"><a class="hvr-sweep-to-bottom" href="registration.jsp">Sign Up</a></li>
										
									</ul>
								</li>
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
		<h2>Sell Property <span>City Life</span></h2>
	</div>
<div>
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
				<h3>Credentials</h3>
				<div class="login-form">
					<form action="SellPropServlet" method="post">
					
					<h4><b><font color="8CFF00">Address</font></b></h4>
						<input type="text" name="propid" placeholder="Property ID" required="">
						<input type="text" name="pwd" placeholder="Locality" required="">
						<input type="text" name="city" placeholder="City" required="">
						<input type="text" name="country" placeholder="Country" required="">
						<input type="text" name="state" placeholder="State" required="">
						<input type="text" name="pin" placeholder="Pin" required="">
					
					<hr>
					<h4><b><font color="8CFF00">Building</font></b></h4>
						<input type="text" name="builder" placeholder="Builder" required="">
						<input type="text" name="type" placeholder="Type" required="">
						<input type="text" name="features" placeholder="Features" required="">
						
						<hr>
					<h4><b><font color="8CFF00">Land Details</font></b></h4>
						<input type="text" name="owner" placeholder="Owner" required="">
						<input type="text" name="area" placeholder="Area" required="">
						<input type="text" name="price" placeholder="Price" required="">
						
						<hr>
					<h4><b><font color="8CFF00">Status/Photos</font></b></h4>
						<input type="text" name="status" placeholder="Status" required="">
						<div style="width:500px; height:100px; border-style: ridge;">
							
								<div style="height:100px; width: 100px; background-color: 8CFF00; float: left;">
								   <img src="profilePic" height="100" width="100" />
								</div>
								<form ENCTYPE="multipart/form-data" action=""  METHOD= style="margin-top:50px;">
								<INPUT NAME="F1" TYPE="file">
							    <input type="submit" value="Upload">
								</form>
						</div>
						
						<div class="tp">
							<input type="submit" value="Add To List">
						</div>
					</form>
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