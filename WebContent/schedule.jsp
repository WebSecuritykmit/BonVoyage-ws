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
	

	
	<div class="container">
	<table class="table table-striped" id="myTable">
    <thead>
  
   <td></td>
   <td><b>Destination</b></td>
   <td><b>Starting time</td>
   
      </tr>
      </thead>
      <tbody>
      </tbody>
      </table>
	</div>
	
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script text="javascript">
	$(document).ready(function(){
		var count=1;
        $(".add-row").click(function(){
        	 count=count+1;
            var name = $("#name").val();
            var time = $("#time").val();
            
            var markup = "<tr><td>"+(--count)+"</td><td>" + name + "</td><td>" + time + "</td></tr>";
            $("table tbody").append(markup);
            count++;

});
	});
</script>
<div class="container">
	
  <div class="form-group">
    <label for="exampleFormControlInput1">Destination name</label>
    <input type="text" class="form-control" id="name" placeholder="" name="destination" >
  </div>
   <div class="form-group">
    <label for="exampleFormControlInput1">Start time</label>
    <input type="text" class="form-control" id="time" placeholder="" name="starttime">
  </div>
  
	
	<button class="add-row btn btn-info">Click me</button>
	</div>
	</body>
	</html>
	  
  
  
  
  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>