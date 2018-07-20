<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
<%String userid=(request.getAttribute("userid").toString());
%>
<%	session.setAttribute("userid", userid);
 %>
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
	<div class="row">
	<div class="col-sm-6">
	<canvas id="barchart" style="width: 400px height:400px" /></div>
	<div class="col-sm-6">
	<canvas id="pieChart" style="width: 400px height:400px" /></div>
	</div>
	
	<br>
    

    <script type="text/javascript">
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
          
       

        </script>
        <script>
       

            var canvas = document.getElementById("barchart"); 

            var myData = {
                labels: ["Rajesh", "Suresh", "Ramesh", "Dinesh", "Aamam"],
                datasets: [
                    {
                        label: 'People Used the app',
                        data: [916, 214, 160, 60, 60],
                        backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360"],
                        hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774"]
                    }
                ]
            }
            var myChart = new Chart(canvas, {
                                                type: 'bar',
                                                data: myData,
                                                options: { responsive: true } 
                                        });
          
       

       
	
        
        
        
        
</script>
 
	</div>	<br>
	<div class="container" style="text-align:center;"><h1 style="color:rgb(149,19,158);">Plan your trip</h1></div><br>
	
	
	<div class="container" style="text-align:center;">
	<div class="row">
	<div class="col-sm-6 border our-advantages-grd-to-right" 
>
	
	<h2 style=" color:;text-decoration:underline;">Goa package</h2><br>
	<p>KNOW MORE ABOUT GOA PACKAGE</p>	
<br>
	<a href="goa.jsp">more details</a><br><br>	
	
	
	
	</div>
	<div class="col-sm-6 border our-advantages-grd-to-right">
	<h2 style=" text-decoration:underline;">Tirupathi package</h2><br>
	<p>KNOW MORE ABOUT Tirupathi PACKAGE</p>	
<br>
	<a href="tirupathi.jsp">more details</a><br><br>	
	</div>
	<div class="col-sm-6 border our-advantages-grd-to-right">
	<h2 style=" text-decoration:underline;">Banglore package</h2><br>
	<p>KNOW MORE ABOUT Banglore PACKAGE</p>	
<br>
	<a href="banglore_trip.jsp">more details</a><br><br>	
	</div>
	
	
	</div>
	</div>
	</div><br><br>
	
	
	<marquee>Know some reviews</marquee><br>
	
<%--retrieving reviews from table users not updated yet --%>
<%
     
      String uname=request.getParameter("username");
      String sql,sql1;
      ResultSet rs = null,rs1=null;
      Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost/bonvoyage";
		String username="root";
		String password="mannu";
		Connection con=(Connection)DriverManager.getConnection(url,username,password);
      
      sql="SELECT review FROM review  ";
      PreparedStatement pstmt = con.prepareStatement(sql);
      sql1="SELECT rating FROM review where ratingstatus='"+"yes"+"'  ";
      PreparedStatement pstmt1 = con.prepareStatement(sql1);

       rs= pstmt.executeQuery();
       rs1= pstmt1.executeQuery();
      while(rs1.next() && rs.next())
                    {
      %>       
      
         
<div class="row">
	<div class="col-sm-4 style">
	<img src="images/Unknown.png"  >
	<br>
	<%int k=Integer.parseInt(rs1.getString(1));%> 
<%for(int i=0;i<5;i++){
	if(i<k){
	%>
	<span class="fa fa-star checked"></span>	
	<%
	}
	else{
		%><span class="fa fa-star"></span><% 
	}	}%></div>
	
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	<%=rs.getString(1)%> 
</div>

</div><hr><%        
                }
         %> 
	
	
	<div class="container" style="text-align:center;">
	<h2 style="color:rgb(149,19,158);">Share your travel experience</h2><br>
	<form method="post"><textarea rows="5" cols="50">
	</textarea><br><br><input type="submit" style="background-color:rgb(0,156,250)
	;color:white;border-radius:10px;"></input></form>
		</div><br>
	
	<div class="container plan" style="text-align:center">
	<a href="travelling.jsp" style="background-color:black;color:white;width:200px;height:200px;">Start planning your trip</a>
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