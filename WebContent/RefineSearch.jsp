<%@ page import="java.sql.*" %>
<%@ page import="com.ibm.dao.*" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<title>City Life | Refined Search</title>
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
  <section id="content">
    <div class="container_12">
  
<% 

String hno="";
String uemail="";
String rentsell="";
String locality="";
String price="";
String ptype="";
String features="";
String bhk="";
String cstatus="";
String owner="";



String hometype=request.getParameter("hometype");
String prefloc=request.getParameter("prefloc");
String bhk1=request.getParameter("bhk1");

CityLifeDao obj=new CityLifeDao();
ResultSet rs= obj.getProp(hometype, prefloc, bhk1);


%>


<br><h2 class="p4">Properties in Delhi for Rent and Sale</h2>
<h3><b><font color="#8CFF00">Refined Search:</font></b></h3><br>

<%
while(rs.next()) {%>
   
    
    
<!--////////////// ***************Table in div***************////////////// -->

<div class="container_12">
      <div class="left-1">
        <div class="wrap block-1">
          <div class="grid_4"> <img src="propertyPic/<%=rs.getString(17) %>"  alt="" class="img-border">
            <input type="hidden" name="uemail" value="<%=uemail=rs.getString(15)%>" >
            <input type="hidden" name="owner" value="<%=owner=rs.getString(10)%>" >
            <h3>For	:	<%=rentsell=rs.getString(13) %></h3>
            <p><b>House No.	:	</b><%=hno=rs.getString(2) %></p>
            <p><b>Locality :	</b><%=locality=rs.getString(3) %></p>
            <p><b>Price :		</b>Rs. <%=price=rs.getString(12) %></p>
            <p><b>Property Type :		</b> <%=ptype=rs.getString(8) %></p>
            <p><b>Features :	</b><%=features=rs.getString(9) %></p>
            <p><b>BHK :	</b><%=bhk=rs.getString(16) %></p>
            <p><b>Current Status :	</b><%=cstatus=rs.getString(14) %></p>
            
            
            <a class="button" href="BookProp.jsp?uemail=<%=uemail %>&hno=<%=hno %>&price=<%=price %>&locality=<%=locality %>&ptype=<%=ptype %>&rentsell=<%=rentsell %>&features=<%=features %>&bhk=<%=bhk %>&cstatus=<%=cstatus %>&owner=<%=owner %>" >Book</a><hr><br> </div>
            
          
        </div>
     
      <div class="clear"></div>
    </div></div>
    

    
    
    
    <%
    		
    	
		}  
   
    	%>
      
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
