<%@ page import="java.sql.*" %>
<%@ page import="com.ibm.dao.*" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<title>City Life | Booking</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/style.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/grid_12.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/slider-2.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/properties/jqtransform.css">
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
        slideshow: 3000,
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
<body >
<div class="main">
  <!--==============================header=================================-->
  <header>
    <div>
      <h1><a href="index-userbuysell.html"><img src="images/logo.jpg" alt=""></a></h1>
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
         <li ><a href="index-userbuysell.html">Home</a></li>
          <li class="current"><a href="buying.jsp">Buying</a></li>
          <li><a href="selling.jsp">Selling</a></li>
          <li><a href="renting.jsp">Renting</a></li>
        </ul>
      </nav>
    </div>
  </header>
  <!--==============================content================================-->
   <% 
String uemail=request.getParameter("uemail");
String owner=request.getParameter("owner");
String hno=request.getParameter("hno");
String price=request.getParameter("price");
String locality=request.getParameter("locality");
String features=request.getParameter("features");
String bhk=request.getParameter("bhk");
String ptype=request.getParameter("ptype");
String rentsell=request.getParameter("rentsell");
String cstatus=request.getParameter("cstatus");

//System.out.println(uemail);
//System.out.println(hno);




%>
  <section id="content">
    <div class="container_12">
  


     
      <div >
        <div class="left-1" style="float: left;">
          <h2 class="top-1 p3">Book a Property</h2>
          <form id="form-1" class="form-1 bot-2" action="BookPropServlet" method="post">
            <div class="select-1">
            
            <h3><b><font color="#8CFF00">User Details:</font></b></h3><br>
					<div >
					<table>
						<tr><td>Name		</td><td><input type="text" name="bookuname" placeholder="Name" required=""></td></tr>
						<tr><td>Email</td><td><input type="text" name="bookuemail" placeholder="Eamil" required=""></td></tr>
						<tr><td><pre>Contact		</pre></td><td><input type="text" name="bookucontact" placeholder="Contact" required="" ></td></tr>
						
					</table>
					</div>
					
					<br><h3><b><font color="#8CFF00">Property Details:</font></b></h3><br>
					<div >
					<table>
					
						<tr><td>House No.		</td><td><input type="text" value="<%=hno %>" name="hno" readonly=readonly /></td></tr>
						<tr><td>Price			</td><td><input type="text" value="Rs. <%=price %>" name="price" readonly=readonly  /></td></tr>
						<tr><td>For				</td><td><input type="text" value="<%=rentsell %>" name="rentsell" readonly=readonly  /></td></tr>
						<tr><td>Locality		</td><td><input type="text" value="<%=locality %>" name="locality" readonly=readonly  /></td></tr>
						<tr><td>Property Type	</td><td><input type="text" value="<%=ptype %>" name="ptype" readonly=readonly  /></td></tr>
						<tr><td>BHK				</td><td><input type="text" value="<%=bhk %>" name="bhk" readonly=readonly  /></td></tr>
						<tr><td>Features		</td><td><input type="text" value="<%=features %>" name="features" readonly=readonly  /></td></tr>
						<tr><td><pre>Current Status	</pre></td><td><input type="text" value="<%=cstatus %>" name="cstatus" readonly=readonly  /></td></tr>
						<tr><td><input type="hidden" value="<%=uemail %>" name="uemail" readonly=readonly  /></td></tr>
						<tr><td><input type="hidden" value="<%=owner %>" name="owner" readonly=readonly  /></td></tr>
						
						
					</table>
					</div>
              
            </div>
            
					            <div style="margin-top: 50px; margin-left: 50px;">
					            <input type="submit" value="Book" style="color: #FFF;  background-color:#2098f5; padding: 16px; font-size: 15px; margin-top: 0px;">
					           </div>
            <div class="clear"></div>
          </form>
         </div>
      </div>

      <div class="clear"></div>
    </div>
  </section>
</div>
<!--==============================footer=================================-->
<footer>
  <p>© 2017 Real Estate</p>
  <p>Website Template by <a target="_blank" href="http://www.templatemonster.com/">TemplateMonster.com</a></p>
</footer>
<script>Cufon.now();</script>
</body>
</html>
