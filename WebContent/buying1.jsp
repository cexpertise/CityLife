<%@ page import="java.sql.*" %>
<%@ page import="com.ibm.dao.*" %>    
<!DOCTYPE html>
<html lang="en">
<head>
<title>City Life | Buying</title>
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
         <li ><a href="index-buysell.html">Home</a></li>
          <li class="current"><a href="buying1.jsp">Buying</a></li>
          <li><a href="selling.html">Selling</a></li>
          <li><a href="renting.html">Renting</a></li>
        </ul>
      </nav>
    </div>
  </header>
  <!--==============================content================================-->
  <section id="content">
    <div class="container_12">
  
<% 

final  String username="root";
final String password="ramjasschool";
final String drivername="com.mysql.jdbc.Driver";
final String url="jdbc:mysql://localhost:3306/mydb";	

 Connection con=null;
 PreparedStatement ps=null;
ResultSet rs1=null;


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


try
{
	Class.forName(drivername);
	con=DriverManager.getConnection(url,username,password);
	System.out.println("Connection successfull at jsp");
}
catch(Exception e)
{
	e.printStackTrace();
}


PreparedStatement ps1=null;
String sql="select * from propadd";
ps1=con.prepareStatement(sql);

rs1=ps1.executeQuery();

%>


<br><h2 class="p4">Properties in Delhi for Rent and Sale</h2>

<%
while(rs1.next()) {%>
   
    
    
<!--////////////// ***************Table in div***************////////////// -->

<div class="container_12">
      <div class="left-1">
        <div class="wrap block-1">
          <div class="grid_4"> <img src="propertyPic/<%=rs1.getString(17) %>"  alt="" class="img-border">
            <input type="hidden" name="uemail" value="<%=uemail=rs1.getString(15)%>" >
            <input type="hidden" name="owner" value="<%=owner=rs1.getString(10)%>" >
            <h3>For	:	<%=rentsell=rs1.getString(13) %></h3>
            <p><b>House No.	:	</b><%=hno=rs1.getString(2) %></p>
            <p><b>Locality :	</b><%=locality=rs1.getString(3) %></p>
            <p><b>Price :		</b>Rs. <%=price=rs1.getString(12) %></p>
            <p><b>Property Type :		</b> <%=ptype=rs1.getString(8) %></p>
            <p><b>Features :	</b><%=features=rs1.getString(9) %></p>
            <p><b>BHK :	</b><%=bhk=rs1.getString(16) %></p>
            <p><b>Current Status :	</b><%=cstatus=rs1.getString(14) %></p>
            
            
            <a class="button" href="BookProp.jsp?uemail=<%=uemail %>&hno=<%=hno %>&price=<%=price %>&locality=<%=locality %>&ptype=<%=ptype %>&rentsell=<%=rentsell %>&features=<%=features %>&bhk=<%=bhk %>&cstatus=<%=cstatus %>&owner=<%=owner %>" >Book</a><hr><br> </div>
            
          
        </div>
     
      <div class="clear"></div>
    </div></div>

    
    
    
    <%
    		
    	
		}  
   
    	%>
      
      <div >
        <div class="left-1" style="float: left;">
          <h2 class="top-1 p3">Refine Your Search</h2>
          <form id="form-1" class="form-1 bot-2" action="buyingServlet" method="post">
            <div class="select-1">
            
              <label>Home type</label>
              <select name="hometype" value="Villa">
								<option selected value="Multistorey Apartment">Multistorey Apartment</option>
				                <option value="Villa">Villa</option>
				                <option value="Builder Floor Apartment">Builder Floor Apartment</option>
				                <option value="Residential House">Residential House</option>
				                <option value="Residential Plot">Residential Plot</option>
				                <option value="Penthouse">Penthouse</option>
				                <option value="Studio Apartment">Studio Apartment</option>
				              </select>
            </div>
            <div>
            
              <label>Preferred Location</label>
              <select name="prefloc" value="New Delhi">
								<option selected value="New Delhi">New Delhi</option>
				                <option value="New Delhi - Central">New Delhi - Central</option>
				                <option value="New Delhi - North">New Delhi - North</option>
				                <option value="New Delhi - East">New Delhi - East</option>
							    <option value="New Delhi - South">New Delhi - South</option>
							    <option value="New Delhi - West">New Delhi - West</option>
							    <option value="New Delhi - Dwarka">New Delhi - Dwarka</option>
							    <option value="New Delhi - Rohini">New Delhi - Rohini</option> 
				              </select>
            </div>
            
            <div class="select-2">
              <label>Type</label>
              <select name="bhk" value="2 BHK">
                <option selected value="1 BHK">1 BHK</option>
                <option value="2 BHK">2 BHK</option>
                <option value="3 BHK">3 BHK</option>
                <option value="4 BHK">4 BHK</option>
              </select>
            </div>
					            <div style="margin-top: 100px;">
					            <input type="submit" value="Search" style="color: #FFF;  background-color:#2098f5; padding: 16px; font-size: 15px; margin-top: 0px;">
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
