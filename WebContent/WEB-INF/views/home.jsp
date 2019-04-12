<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet"	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="resources/myrows.css" type="text/css"/>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Celebrant Home Page</title>

</head>
<body>
	<jsp:include page="../views/fragments/homeNavbar.jsp" />
	
	<div class="container">
	<div align="left">

		<h2>${msg}</h2>

	
	</div>
		<div class="row">
			
			<!-- First Column -->
			<div class="col-md-3 bg-danger"><h3 align="center"><b>ABOUT CELEBRANT</b></h3>
			<div class="row">
				<div class="col-md-12">
						
				<div class="myrows1"><h3>Biography</h3>
				<p align="left">Born and raised mostly in Virginia Beach, VA.  Graduated from Encinal High School 
				in Alameda, CA,  in 1976. Son of Captain Eugene &quotRed&quot McDaniel who spent ...
				</p>
				<form action="biography">
					<table>
						<tr><td><input type="submit" name="biography" value="read more"></td></tr>
					</table>
				</form>
				</div>
				</div>
		
			</div>
			
			<hr class="hr-line"/>
			
			<div class="row">
				<div class="col-md-12">
				<div class="myrows1"><h3>Services</h3>
				<p align="left">  I&#47we do this as a service to the community.  I personally do it 
				because I enjoy being part of this important juncture in couple&#39s lives ...</p>
				<form action="services">
					<table>
						<tr><td><input type="submit" name="services" value="read more"></td></tr>
					</table>
				</form>
				</div>
				</div>
			</div>
			
			<hr class="hr-line"/>
				
			<div class="row">
				<div class="col-md-12">
				<div class="myrows1"><h3>Testimonials</h3>
				<p align="left">Good evening Mr. McDaniel, <br><br>Valerie and I just wanted to give 
				you our most sincere thanks for making our ceremony a special one. You were very 
				professional and informative ... </p>
				<form action="testimonials">
					<table>
						<tr><td><input type="submit" name="testimanials" value="read more"></td></tr>
					</table>
				</form>
				</div>
				</div>
			</div>
			
			</div>
			
			<!-- Second Column -->			
			<div class="col-md-6 bg-info"><h3 align="center">Wedding Picture Gallery</h3>
			
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ul class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
					<li data-target="#myCarousel" data-slide-to="5"></li>
					
				</ul>
  					<div class="carousel-inner mycss1">
    					<div class="item active ">
     						<img  src="resources/images/Fre1.JPG" class="img-fluid img-responsive" alt="my pic" width="100%">
    					</div>
    					<div class="item">
 							<img  class="img-fluid img-responsive" alt="my pic" src="resources/images/Fre2.JPG" >
  						</div>
   						<div class="item">
 							<img class="img-fluid img-responsive"  src="resources/images/Fre3.JPG" ">
  						</div>
  						<div class="item">
 							<img class="img-fluid img-responsive" alt="My Pic" src="resources/images/Fre4.JPG" ">
  						</div>
  						<div class="item">
 							<img class="img-fluid img-responsive" alt="My Pic" src="resources/images/Fre5.JPG" ">
  						</div>
  						<div class="item">
 							<img class="img-fluid img-responsive" alt="My Pic" src="resources/images/Fre6.JPG" ">
  						</div>
  						
					</div>
					
				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
				</div>
			
			</div>
			
			
			<!-- Third Column -->
			
			<div class="col-md-3 bg-danger"><h3 align="center"><b>CELEBRATION PROCESS</b></h3>
			<div class="row">
			<div class="col-md-12 myrows2"><h3>License Application</h3>
			<p align="left">COMMONWEALTH OF VIRGINIA APPLICATION FOR MARRIAGE LICENSE</p>
			<form action="license">
				<table>
					<tr><td><input type="submit" name="license" value="open application form"></td></tr>
				</table>
			</form>
			</div>
			</div>
			
			<hr class="hr-line"/>
			
			<div class="row">
			<div class="col-md-12 myrows2"><h3>Fairfax County Laws</h3>
			<p align="left">RULES AND PROCEDURES FOR FAIRFAX COUNTY CIVIL MARRIAGE CELEBRANTS<br><br>
			1. Marriage License Procedure:<br></p>
			<p class="indent">The couple must present to the celebrant a marriage certificate issued
			within 60 days of the wedding from any court in VA before the ceremony begins.</p>
			<p class="indent">Verify the identity of both spouses listed on the license by picture
			identification prior to performing the ceremony.</p>
			
			<form action="fairfaxLaws">
				<table>
					<tr><td><input type="submit" name="fairfaxLaws" value="read more"></td></tr>
				</table>
			</form>
			</div>
			</div>
			
		</div>
	
	
	</div>

</div>
	<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</body>
</html>