<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<script type="text/javascript" src="js/chart.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.style img{
height:100px;width:100px;}
.checked {
    color:rgb(149,19,158);
}
.border{
border:2px solid rgb(149,19,158);
border-radius:10px;
margin-left:50px;}
.plan a:hover{
color:rgb(149,19,158);
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
	</div><br><br>
	<div class="container">
	<h2 style="text-align:center;">Most visited places</h2>	<br>
	<canvas id="pieChart" style="width: 400px height:400px" />

    <script type="text/javascript">
        (function(){

            var canvas = document.getElementById("pieChart"); 
            var myData = {
                labels: ["Goa", "Banglore", "Mumbai", "Delhi", "Hyderabad"],
                datasets: [
                    {
                        label: 'People visited',
                        data: [916, 214, 160, 60, 60],
                        backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360"],
                        hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774"]
                    }
                ]
            }
            var myChart = new Chart(canvas, {
                                                type: 'pie',
                                                data: myData,
                                                options: { responsive: true } 
                                        });
        })();
	
</script>
 
	</div>	<br>
	<div class="container" style="text-align:center;"><h1 style="color:rgb(149,19,158);">Plan your trip</h1></div><br>
	
	
	<div class="container" style="text-align:center;">
	<div class="row">
	<div class="col-sm-3 border our-advantages-grd-to-right" 
>
	
	<h2 style=" color:;text-decoration:underline;">Goa package</h2><br>
	<p>KNOW MORE ABOUT GOA PACKAGE</p>	
<br>
	<a>more details</a><br><br>	
	
	
	
	</div>
	<div class="col-sm-3 border our-advantages-grd-to-right">
	<h2 style=" text-decoration:underline;">Mumbai package</h2><br>
	<p>KNOW MORE ABOUT MUMBAI PACKAGE</p>	
<br>
	<a>more details</a><br><br>	
	</div>
	<div class="col-sm-3 border our-advantages-grd-to-right">
	<h2 style=" text-decoration:underline;">Delhi package</h2><br>
	
	<p>KNOW MORE ABOUT DELHI PACKAGE</p><br>
	<a>more details</a><br><br>
	
									

	</div>
	</div>
	</div><br><br>
	
	
	<marquee>Know some reviews</marquee><br>
	<div class="container">
	<div class="container">
	<div class="row">
	<div class="col-sm-4 style">
	<img src="images/Unknown.png"  ><br><span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span></div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	text   jksdjkdsands  d d da djhjdfhjdkfndks</div>

	</div><hr>
	
	<div class="row">
	<div class="col-sm-4 style">
	<img src="images/Unknown.png"  >
	<br><span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span></div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	text   jksdjkdsands  d d da djhjdfhjdkfndks</div>

	</div><hr>
	
	
	
	<div class="row">
	<div class="col-sm-4 style">
	<img src="images/Unknown.png"  >
	<br><span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span></div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	text   jksdjkdsands  d d da djhjdfhjdkfndks</div>

	</div><hr>
	
	
	<div class="row">
	<div class="col-sm-4 style">
	<img src="images/Unknown.png">
	<br><span class="fa fa-star checked"></span>
<span class="fa fa-star "></span>
<span class="fa fa-star "></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span></div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	text   jksdjkdsands  d d da djhjdfhjdkfndks</div>

	</div><hr>
	</div></div><br>
	
	<div class="container" style="text-align:center;">
	<h2 style="color:rgb(149,19,158);">Share your travel experience</h2><br>
	<form method="post"><textarea rows="5" cols="50">
	</textarea><br><br><input type="submit" style="background-color:rgb(0,156,250)
	;color:white;border-radius:10px;"></input></form>
		</div><br>
	
	<div class="container plan" style="text-align:center">
	<a href="" style="background-color:black;color:white;width:200px;height:200px;">Start planning your trip</a>
	</div>
	
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
	
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>