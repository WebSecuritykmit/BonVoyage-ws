<%@include file="/header.jspf" %>
<div class="container">
 <div align="center"  style= margin-top:2500px,margin-bottom:2500px>
 
 	<form action="login.do" method="post" class="form-signin" width="100" height="100">
		<p>
			<font color="red">${error}</font>
		</p>
			<input type="text" class="form-control" name="name" placeholder="Name" required="" autofocus="" />
			<input type="password" class="form-control" name="password" placeholder="Password" required=""/>
			    	      
      <button class="btn btn-lg btn-primary btn-block" type="submit" style= width:30%>Login</button> 
			    	
	</form>

 
 </div>
 </div>
<%@include file="/footer.jspf" %>