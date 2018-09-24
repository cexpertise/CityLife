<!DOCTYPE html>
<html lang="en">
<head>
<title>City Life | Selling2</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/slider.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/jqtransform.css">
<script src="js/jquery-1.7.min.js"></script>
<script src="js/properties/jquery-1.7.min.js"></script>
<script src="js/properties/jquery.easing.1.3.js"></script>
<script src="js/properties/cufon-yui.js"></script>
<script src="js/properties/vegur_400.font.js"></script>
<script src="js/properties/Vegur_bold_700.font.js"></script>
<script src="js/properties/cufon-replace.js"></script>
<script src="js/properties/tms-0.4.x.js"></script>
<script src="js/properties/jquery.jqtransform.js"></script>
<script src="js/properties/FF-cash.js"></script>
<script>
$(document)
    .ready(function () {
    $('.form-1')
        .jqTransform();
    $('.slider')
        ._TMS({
        show: 0,
        pauseOnHover: true,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 1000,
        preset: 'fade',
        pagination: true,
        pagNums: false,
        slideshow: 7000,
        numStatus: false,
        banners: false,
        waitBannerAnimation: false,
        progressBar: false
    })
});
</script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->
</head>

<body>


<!--///////////************ Validation for login ************//////////////-->

<%
if(session.getAttribute("EMAIL")!=null)
{
	String email=(String)session.getAttribute("EMAIL");
	
	%>
<div class="main">
  <!--==============================header=================================-->
  <header>
    <div>
      <h1><a href="index.html"><img src="images/logo.jpg" alt=""></a></h1>
      <div class="social-icons">  </div>
      <div id="slide">
        <div class="slider">
          <ul class="items">
            <li><img src="images/slider-1-small.jpg" alt=""></li>
            <li><img src="images/slider-2-small.jpg" alt=""></li>
            <li><img src="images/slider-3-small.jpg" alt=""></li>
          </ul>
        </div>
        <a href="#" class="prev"></a><a href="#" class="next"></a> </div>
      <nav>
        <ul class="menu">
         <li><a href="index-buysell.html">Home</a></li>
          <li><a href="buying.html">Buying</a></li>
          <li class="current"><a href="selling.jsp">Selling</a></li>
          <li><a href="renting.jsp">Renting</a></li>
        </ul>
      </nav>
    </div>
  </header>
  <!--==============================content================================-->
  <section id="content">
    <div class="container_12">
    
    <div>
<center>
<%

if(request.getParameter("var")!=null)
{
	out.println("<h2><font color=red>"+request.getParameter("var")+"</font></h2>");
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
				
								

    
    </div>
  </section>


<!--==============================footer=================================-->
<footer>
  <p>� 2012 Real Estate</p>
  <p>Website Template by <a target="_blank" href="http://www.templatemonster.com/">TemplateMonster.com</a></p>
</footer>
<script>Cufon.now();</script>


<%

}
else{
	response.sendRedirect("LoginSell.jsp");
}

%>
<!-- Validation for login end -->
</body>
</html>
