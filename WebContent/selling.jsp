<!DOCTYPE html>
<html lang="en">
<head>
<title>City Life | Selling 1</title>
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
	//out.print(email);

	%>
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
         <li><a href="index-userbuysell.html">Home</a></li>
          <li><a href="buying.jsp">Buying</a></li>
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
    
        <div >
        <div class="left-1">
          <center><h2 class="top-1 p3"><strong>Fill The Credentials</strong></h2></center>
          <font color="#AECF15"><h3 class="top-1 p3"><strong>Step 1 >></strong></h3></font><hr>
          <form id="form-1" class="form-1 bot-2" action="SellPropServlet" method="post">
          <h3><b><font color="#8CFF00">Address:</font></b></h3>
					<div >
					<table>
						<tr><td><pre>House Number		</pre></td><td><input type="text" name="hno" placeholder="House Number" required=""></td></tr>
						<tr><td>Locality</td><td><input type="text" name="locality" placeholder="Locality" required=""></td></tr>
						 <tr><div class="select-2">
						 <td>
				              <label>City</label></td>
				            <td> <select name="city" >
								<option>New Delhi</option>
				                <option>New Delhi - Central</option>
				                <option>New Delhi - North</option>
				                <option >New Delhi - East</option>
							    <option >New Delhi - South</option>
							    <option>New Delhi - West</option>
							    <option>New Delhi - Dwarka</option>
							    <option>New Delhi - Rohini</option> 
				              </select>
				            </td></div></tr>
						
						<tr><td>Country</td><td><input type="text" name="country" value="India" required="" readonly="readonly"></td></tr>
						<tr><td>Pin</td><td><input type="text" name="pin" placeholder="Pin" required=""></td></tr>
						
					</table>
					</div>
					
					<hr>
					<h3><b><font color="#8CFF00">Building:</font></b></h3>
						<table>
						<div class="select-2">
						<tr><td>Builder</td><td><input type="text" name="builder" placeholder="Builder" required=""></td></tr>
						</div>
						 <div class="select-2">
				              <tr><td><label><pre>Property Type		</pre></label></td>
				              <td><select name="ptype" >
								<option>Multistorey Apartment</option>
				                <option>Villa</option>
				                <option>Builder Floor Apartment</option>
				                <option>Residential House</option>
				                <option>Residential Plot</option>
				                <option>Penthouse</option>
				                <option>Studio Apartment</option>
				              </select></td>
				              </tr>
				            </div>
						 <div class="select-2">
				             <tr><td> <label>Features</label></td>
				             <td> <select name="features" >
				                <option>Fully Furnished</option>
				                <option>Semi Furnished</option>
				                <option>Not Furnished</option>
				              </select></td>
				              </tr>
				            </div>
				             <div class="select-2">
				             <tr><td> <label>BHK</label></td>
				             <td> <select name="bhk" >
				                 <option>1 BHK</option>
				                 <option>2 BHK</option>
				                 <option>3 BHK</option>
				                 <option>4 BHK</option>
				              </select></td>
				              </tr>
				            </div>
				            </table>
						<hr>
					<h3><b><font color="#8CFF00">Land Details:</font></b></h3>
						
						<table>
						 <tr><td> <label><pre>Owner			</pre></label></td>
				             <td> <input type="text" name="owner" placeholder="Owner" required=""></td>
				             </tr>
				             <tr><td> <label>Email</label></td>
				             <td><input type="text" name="uemail" value=<% out.print(email); %> required="" readonly="readonly"></td>
				             </tr>
				             <tr><td>For</td><td><input type="text" name="rentsell" value="Sale" required="" readonly="readonly"></td></tr>
						 <tr><td> <label>Area</label></td>
				             <td> <input type="text" name="area" placeholder="Area (in sq. ft.)" required=""></td>
				             </tr>
						 <tr><td> <label>Price</label></td>
				             <td> <input type="text" name="price" placeholder="Price (in Rs.)" required=""></td>
				             </tr>
				             
						<div class="select-2">
				             <tr><td>  <label>Status</label></td>
				             <td> <select name="status" >
				                <option>Occupied</option>
				                <option>On Rent</option>
				                <option>Vacant</option>
				              </select></td>
				              </tr>
							  
				            </div>
						
				            </table>
						
						<div style="margin-left: 250px; margin-top: 50px;">
           				<input type="submit" value="Submit" style="background-color:#2098f5; padding: 16px; font-size: 15px; margin-top: 0px;">
           				</div>
           			
					
          
            <!--<a class="button" href="SellPropServlet.java" >Login & add property</a>
            <div class="clear"></div>  -->
          </form>
         </div>
      </div>
    
    </div>
  </section>


<!--==============================footer=================================-->
<footer>
  <p> 2017 Real Estate</p>
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
