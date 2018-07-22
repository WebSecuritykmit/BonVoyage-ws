<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User home page </title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Barlow:100,200,300,400,500,600,700,800,900" rel="stylesheet">
	<style>
	
	.background{
	background:url("images/3.jpg") no-repeat;
	background-size:cover;
	height:500px;}
	
	.p{
	background-color:rgba(255,255,255,0.5);
	color:black;
	
	text-align:center;
	border-radius:10px;
	
	}
</style>
	</head>
	
	
	
<body>
<div class="header">
		<div class="top_menu_w3layouts">
<div class="container">
			<div class="header_left">
				<ul>
					<li><i class="fa fa-map-marker" aria-hidden="true"></i> India</li>
					<li><i class="fa fa-phone" aria-hidden="true"></i> +(91) 999 999 9999</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i> <a href="mailto:info@example.com">info@example.com</a></li>
				</ul>
			</div>
			<div class="header_right">
				

			</div>
			<div class="clearfix"> </div>
			</div>
		</div>

		<div class="content white">
			<nav class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
						<a class="navbar-brand" href="index.html">
							<h1>BON VOYAGE</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li><a href="index.html" class="active">Home</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="gallery.html">Gallery</a></li>
								<li><a href="login.jsp">Login</a></li>
								
								<li><a href="registration.jsp">Register</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="codes.html">Codes</a></li>
										<li class="divider"></li>
										<li><a href="icons.html">Icons</a></li>
										<li class="divider"></li>
										
									</ul>
								</li>
								<li><a href="mail.html">Mail Us</a></li>
																								<li><a href="account_update.jsp">UpdateProfile</a></li>
								
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
			<%int tripid=Integer.parseInt(session.getAttribute("tripid").toString()); %>
	
	<div class="container">
	<h1 style="text-align:center;">Enter your destination</h1><br>
	<div style="text-align:center;">
	
	<%
	
	
	if(tripid==2){%>
	<div style="text-align:center;">You have selected <%= "TIRUPATHI" %></div><br>
	<div style="width: 100%"><iframe width="100%" height="500" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=goa+(My%20Business%20Name)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/create-google-map/">Google map generator</a></iframe></div><br />
	
	<div style="text-align:center;">
	
	<h2>Know  Tirupathi  Bus  timings</h2><br>
	
	 <table class="table table-striped">
    <thead>
      <tr>
       <td><b>Bus name</b></td>
        <td><b>Departure time</b></td>
        <td><b>Duration</b></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Orange Tours And Travels </td>
        <td>18:30</td>
        <td>10:29</td>
      </tr>
      <tr>
        <td>Sri Krishna Travels </td>
        <td>20:00</td>
        <td>10:29</td>
      </tr>
      <tr>
        <td>Kaveri Travels </td>
        <td>20:15</td>
        <td>10:29</td>
      </tr>
      <tr>
        <td>Meghana Travels </td>
        <td>18:00</td>
        <td>21:30</td>
      </tr>
    </tbody>
  </table>
</div>
	
	
	<%
		
	}else if(tripid==1){%>
		<div style="text-align:center;">You have selected <%= "GOA" %></div><br>
	
	<div style="width: 100%"><iframe width="100%" height="500" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=tirupathi+(My%20Business%20Name)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/create-google-map/">Embed Google Map</a></iframe></div><br />
	<h3>Know  Goa  Bus  timings</h3><br>
	<div style="text-align:center;">
	 <table class="table table-striped">
    <thead>
      <tr>
       <td><b>Bus name</b></td>
        <td><b>Departure time</b></td>
        <td><b>Duration</b></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Orange Tours And Travels</td>
        <td>16:45</td>
        <td>14:22</td>
      </tr>
      <tr>
        <td>SVR Tours and Travels</td>
        <td>16:30</td>
        <td>14:22</td>
      </tr>
      <tr>
        <td>Paulo Travels</td>
        <td>15:31</td>
        <td>14:22</td>
      </tr>
      <tr>
        <td>KTCL</td>
        <td>17:30</td>
        <td>14:22</td>
      </tr>
    </tbody>
  </table>
</div>

	
	<%} %>	
	
	</div><br>
	<div style="text-align:center;">
	<a href="schedule.jsp"><h2>Click here to prepare your schedule</h2></a></div>
	
	
	
	
	</body></html>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>