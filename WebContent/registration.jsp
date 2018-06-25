<%@include file="/header.jspf" %>
<script type="text/javascript">
$('submit').click(function () {
	  if ($('#password').val() == $('#confirm_password').val()) {
	    $('#message').html('Matching').css('color', 'green');
	  } else 
	    $('#message').html('Not Matching').css('color', 'red');
	});
</script>

 
 <div align="center">
 
 <H1>Registration </H1>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
 

 
 	<form action="register" method="post" class="form-signin">
		<p>
			<font color="red">${error}</font>
		</p>
			<input type="text" class="form-control" name="Fullname" placeholder="Name" required="" autofocus="" /><br>
			<input type="text" class="form-control" name="Phone Number" placeholder="Phone number" required="" autofocus="" /><br>
			<input type="text" class="form-control" name="email" placeholder="Email ID" required="" autofocus="" /><br>
			<input type="password" class="form-control" id="password"  name="password" placeholder="Password" required=""/><br>
			<input type="password" class="form-control" name="confirm_password"  id="confirm_password" placeholder="Confirm Password" required=""/><br>
			    	      
      <button id="submit" class="btn btn-lg btn-primary btn-block" type="submit" style= width:20%>Register</button> <br>
			    	
	</form>
 </div>
 </div>
<%@include file="/footer.jspf" %>