<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.flight{
	background:url("images/flight.jpg") no-repeat;
	background-size:cover;
	height:500px;
	}
	.train{
	background:url("images/rail.jpg") no-repeat;
	background-size:cover;
	
	height:500px;
	}
	.bus{
	background:url("images/bus.png") no-repeat;
	background-size:cover;
	
	height:500px;
	}

	.p{
	background-color:rgba(0,0,0,0.5);
	color:white;
	height:200px;
	text-align:center;
	border-radius:10px;
	
	}
	p{
	color:white;
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
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	<div class="container" style="text-align:center;">
	<h1 style="text-align:center;color:darkblue;text-decoration:underline;">How do you wish to travel</h1>
	<br>
	
	<div class="flight"><br><br><br><br><br>
	<div class="p"><br>
	<p style="text-align:center;">Get all the flight details by clicking here</p><br>
	<a href="flight.jsp"><button class="btn btn-info">Flight details</button>
	</a></div>
	</div><br><br>
	
	
	<div class="train"><br><br><br><br><br>
	<div class="p"><br>
	<p style="text-align:center;">Get all the Train details by clicking here</p><br>
	<a href="train.jsp"><button class="btn btn-info">Train details</button>
	</a></div>
	</div><br><br>
	
	<div class="bus"><br><br><br><br><br>
	<div class="p"><br>
	<p style="text-align:center;">Get all the Bus details by clicking here</p><br>
	<a href="bus.jsp"><button class="btn btn-info">Bus details</button>
	</a></div>
	</div><br><br>
	
	
	<%int tripid=Integer.parseInt(session.getAttribute("tripid").toString()); %>
<%session.setAttribute("tripid",tripid); %>	
	</div>
	
	
	</body>
	
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<!-- Flexisel-js for-testimonials -->
</html>