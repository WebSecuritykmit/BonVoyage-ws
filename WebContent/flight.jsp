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
								<li><a href="user_home1.html" class="active">Home</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="gallery.html">Gallery</a></li>
								<!-- <li><a href="login.jsp">Login</a></li>
								
								<li><a href="registration.jsp">Register</a></li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="codes.html">Codes</a></li>
										<li class="divider"></li>
										<li><a href="icons.html">Icons</a></li>
										<li class="divider"></li>
										
									</ul>
								</li> -->
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
	<%int tripid=Integer.parseInt(session.getAttribute("tripid").toString()); %>
	<%int userid=Integer.parseInt(session.getAttribute("userid").toString()); %>
		 
	<hr width="50%">
	<%
	
	if(tripid==1){%>
	<div style="text-align:center;">You have selected <%= "Goa" %></div><br>
	<div style="width: 100%"><iframe width="100%" height="500" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=goa+(My%20Business%20Name)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/create-google-map/">Google map generator</a></iframe></div><br />
	
	<div style="text-align:center;">
	
	<h2>Know  Goa  flight  timings</h2><br>
	
	
	
	
	<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>



<table class="table table-striped">
     <thead>
      <tr>
        <td><b>Flight name</b></td>
        <td><b>Date</b></td>
        <td><b>Departure time</b></td>
      </tr>
    </thead>
   
   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/bonvoyage";
       String username="root";
       String password="root";
       String query="select * from travel where mode='"+"flight"+"' and stop_location='"+"goa"+"'";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
    	   System.out.println(rs.getString("name"));
   %>
   <tbody>
      <tr>
        <td><%=rs.getString("name")%></td>
        <td><%=rs.getDate("date")%></td>
        <td><%=rs.getTime("time") %></td>
      </tr>
      
    </tbody>
          
   <%
       }
   %>
   </table>
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>

	
	 
    
  
</div>
	
	
	<%
		
	}else if(tripid==2){%>
		<div style="text-align:center;">You have selected <%= "Tirupathi" %></div><br>
	
	<div style="width: 100%"><iframe width="100%" height="500" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=tirupathi+(My%20Business%20Name)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/create-google-map/">Embed Google Map</a></iframe></div><br />
	<h3>Know  Tirupathi  flight  timings</h3><br>
	<div style="text-align:center;">
	 <table class="table table-striped">
    <thead>
      <tr>
       <td><b>Flight name</b></td>
        <td><b>Arrival time</b></td>
        <td><b>Departure time</b></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>SpiceJet</td>
        <td>05:50</td>
        <td>07:00</td>
      </tr>
      <tr>
        <td>IndiGo</td>
        <td>6:25</td>
        <td>7:50</td>
      </tr>
      <tr>
        <td>Air India</td>
        <td>12:35</td>
        <td>13:40</td>
      </tr>
      <tr>
        <td>IndoGo</td>
        <td>19:10</td>
        <td>20:35</td>
      </tr>
    </tbody>
  </table>
</div>

	
	<%} %>
	
	
	</div><br>
	
	<div style="text-align:center;">
	<form action="schedule.jsp">

<%session.setAttribute("tripid",tripid); %>
<%session.setAttribute("userid",userid); %>
<input type="submit" value="Click here to prepare your schedule"></form>
	</div>
	
	
	</body></html>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>