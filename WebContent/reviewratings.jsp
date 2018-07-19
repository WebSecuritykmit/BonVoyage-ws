<%@include file="/header.jspf" %>
<%@ page import="java.sql.*" %>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
$(document).ready(function(){
    // Check Radio-box
    $(".rating input:radio").attr("checked", false);

    $('.rating input').click(function () {
        $(".rating span").removeClass('checked');
        $(this).parent().addClass('checked');
    });

    $('input:radio').change(
      function(){
        var userRating = this.value;
        alert(userRating);
    }); 
});
</script>
<script>


</script>
<style>

fieldset, label { margin: 0; padding: 0; }
body{ margin: 20px; }
h1 { font-size: 1.5em; margin: 10px; }

/****** Style Star Rating Widget *****/

.rating { 
  border: none;
  float: left;
}

.rating > input { display: none; } 
.rating > label:before { 
  margin: 5px;
  font-size: 1.25em;
  font-family: FontAwesome;
  display: inline-block;
  content: "\f005";
}

.rating > .half:before { 
  content: "\f089";
  position: absolute;
}

.rating > label { 
  color: #ddd; 
 float: right; 
}

/***** CSS Magic to Highlight Stars on Hover *****/

.rating > input:checked ~ label, /* show gold star when clicked */
.rating:not(:checked) > label:hover, /* hover current star */
.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

.rating > input:checked + label:hover, /* hover current star when changing rating */
.rating > input:checked ~ label:hover,
.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
</style>

<%
     
      String uname=request.getParameter("username");
      String sql,sql1;
      ResultSet rs = null,rs1=null;
      Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost/bonvoyage";
		String username="root";
		String password="mannu";
		Connection con=(Connection)DriverManager.getConnection(url,username,password);
      
      sql="SELECT review FROM review where ratingstatus='"+"no"+"'  ";
      sql1="SELECT uid FROM review where ratingstatus='"+"no"+"' ";
      PreparedStatement pstmt = con.prepareStatement(sql);
      PreparedStatement pstmt1=con.prepareStatement(sql1);
       rs= pstmt.executeQuery();
       rs1=pstmt1.executeQuery();
      while(rs.next() && rs1.next())
                    {
      %>       
      
         
<div class="row">
	<div class="col-sm-4 style">
	<img src="images/Unknown.png"  >
	<!--  <form action="">
	<input type="text" name="rating">
	<input type="submit" value="rate" >
	</form>-->
    <button  class="btn btn-primary ratebtn" type="button"   data-toggle="modal" data-target="#pmodal" >Rate</button>
    <%String str=rs1.getString(1); %>
	<div class="modal fade" id="pmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
      <!-- Day 1 -->
      
      </div>
      <div class="modal-body" style="text-align:center">
       <form method="post" action="rating">
   <div class="row">
    <fieldset class="rating">
    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
</fieldset></div>
<input name="uid" value="<%=str%>"  type="hidden">
    <input   type="submit"  value="Rate"  >
</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  
	</div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	
<%=rs.getString(1) %><br>	<%=rs1.getString(1) %> </div>

	</div><hr><br>
       <%        
                }
         %> 
	



<div class="container">
	<div class="container">
	<div class="row">
	<div class="rating">
  <form method="post" action="">
   <div class="row">
    <fieldset class="rating">
    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
</fieldset></div>
    
    <input  class="btn btn-primary ratebtn" type="submit" name="Rate" value="Rate" disabled="disabled">
  </form>
	<div class="col-sm-4 style">
	
	<!-- <div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" width="2500px" heigth="5000px"/>
							</div> --><br></div></div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	<p><font color="black">Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa,
								eu aliquet massa. Suspendisse lacinia rutrum tincidunt. Integer id erat porta, 
								convallis tortor.</font></p>
								<h5>Mark Henry</h5>
								<h7>Number of trips :</h7>
							</div>
														<div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" />
							</div>
						
						
					

	</div><hr></div></div>
	
	<div class="container">
	<div class="container">
	<div class="row">
	<div class="rating">
  <form method="post" action="">
   <div class="row">
     <fieldset class="rating">
    <input type="radio" id="star1" name="rating" value="5" /><label class = "full" for="star1" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star2" name="rating" value="4" /><label class = "full" for="star2" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star4" name="rating" value="2" /><label class = "full" for="star4" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star5" name="rating" value="3" /><label class = "full" for="star5" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
</fieldset>
    </div> 
    
    <input  class="btn btn-primary ratebtn" type="submit" name="Rate" value="Rate" disabled="disabled">
  </form>
	<div class="col-sm-4 style">
	
	<!-- <div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" width="2500px" heigth="5000px"/>
							</div> --><br></div></div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	<p><font color="black">Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa,
								eu aliquet massa. Suspendisse lacinia rutrum tincidunt. Integer id erat porta, 
								convallis tortor.</font></p>
								<h5>Mark Henry</h5>
							</div>
														<div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" />
							</div>
						
						
					

	</div><hr></div></div>
	
	
	
	
	<!-- bug yet to be fixed -->
	<div class="container">
	<div class="container">
	<div class="row">
	<div class="rating">
  <form method="post" action="">
   <div class="row">
    <input class="star star-5" value="5"  id="star-5" type="radio" name="rating" required/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" value="4"  id="star-4" type="radio" name="rating" required/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" value="3" id="star-3" type="radio" name="rating" required/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" value="2" id="star-2" type="radio" name="rating" required/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" value="1" id="star-1" type="radio" name="rating" required />
    <label class="star star-1" for="star-1"></label>
    </div> 
    
    <input  class="btn btn-primary ratebtn" type="submit" name="Rate" value="Rate" disabled="disabled">
  </form>
	<div class="col-sm-4 style">
	
	<!-- <div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" width="2500px" heigth="5000px"/>
							</div> --><br></div></div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	<p><font color="black">Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa,
								eu aliquet massa. Suspendisse lacinia rutrum tincidunt. Integer id erat porta, 
								convallis tortor.</font></p>
								<h5>Mark Henry</h5>
							</div>
														<div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" />
							</div>
						
						
					

	</div><hr></div></div>
	<div class="container">
	<div class="container">
	<div class="row">
	<div class="rating">
  <form method="post" action="">
   <div class="row">
    <input class="star star-5" value="5"  id="star-5" type="radio" name="rating" required/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" value="4"  id="star-4" type="radio" name="rating" required/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" value="3" id="star-3" type="radio" name="rating" required/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" value="2" id="star-2" type="radio" name="rating" required/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" value="1" id="star-1" type="radio" name="rating" required />
    <label class="star star-1" for="star-1"></label>
    </div> 
    
    <input  class="btn btn-primary ratebtn" type="submit" name="Rate" value="Rate" disabled="disabled">
  </form>
	<div class="col-sm-4 style">
	
	<!-- <div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" width="2500px" heigth="5000px"/>
							</div> --><br></div></div>
	<div class="col-sm-8" style="margin-top:30px;text-align:center;">
	<p><font color="black">Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa,
								eu aliquet massa. Suspendisse lacinia rutrum tincidunt. Integer id erat porta, 
								convallis tortor.</font></p>
								<h5>Mark Henry</h5>
							</div>
														<div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" />
							</div>
						
						
					

	</div><hr></div></div>


<!-- <div class="container">
	<div class="container">
	<div class="wthree_testimonials_grid_main" font color="black">
	
						<div class="wthree_testimonials_grid">
							<br>
 <div class="rating">
  <form method="post" >
   <div class="row">
    <input class="star star-5" value="5"  id="star-5" type="radio" name="rating" required/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" value="4"  id="star-4" type="radio" name="rating" required/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" value="3" id="star-3" type="radio" name="rating" required/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" value="2" id="star-2" type="radio" name="rating" required/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" value="1" id="star-1" type="radio" name="rating" required />
    <label class="star star-1" for="star-1"></label>
    </div> 
    
   
    <input  class="btn btn-primary ratebtn" type="submit" name="Rate" value="Rate" disabled="disabled">
  </form>
  <p><font color="black">Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa,
								eu aliquet massa. Suspendisse lacinia rutrum tincidunt. Integer id erat porta, 
								convallis tortor.</font></p>
								<h5>Mark Henry</h5>
							<div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" />
							</div>
</div><br>
							
						</div>
					
					</div>
					<div></div>
					<div class="wthree_testimonials_grid_main" font color="black">
	
						<div class="wthree_testimonials_grid">
							<br>
 <div class="rating">
  <form method="post" >
   <div class="row">
    <input class="star star-5" value="5"  id="star-5" type="radio" name="rating" required/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" value="4"  id="star-4" type="radio" name="rating" required/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" value="3" id="star-3" type="radio" name="rating" required/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" value="2" id="star-2" type="radio" name="rating" required/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" value="1" id="star-1" type="radio" name="rating" required />
    <label class="star star-1" for="star-1"></label>
    </div> 
    
   
    <input  class="btn btn-primary ratebtn" type="submit" name="Rate" value="Rate" disabled="disabled">
  </form>
  <p><font color="black">Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa,
								eu aliquet massa. Suspendisse lacinia rutrum tincidunt. Integer id erat porta, 
								convallis tortor.</font></p>
								<h5>Mark Henry</h5>
							<div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" />
							</div>
</div><br>
							
						</div>
					
					</div>
					<div></div>
					<div class="wthree_testimonials_grid_main" font color="black">
	
						<div class="wthree_testimonials_grid">
							<br>
 <div class="rating">
  <form method="post" >
   <div class="row">
    <input class="star star-5" value="5"  id="star-5" type="radio" name="rating" required/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" value="4"  id="star-4" type="radio" name="rating" required/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" value="3" id="star-3" type="radio" name="rating" required/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" value="2" id="star-2" type="radio" name="rating" required/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" value="1" id="star-1" type="radio" name="rating" required />
    <label class="star star-1" for="star-1"></label>
    </div> 
    
   
    <input  class="btn btn-primary ratebtn" type="submit" name="Rate" value="Rate" disabled="disabled">
  </form>
  <p><font color="black">Donec laoreet eu purus eu viverra. Vestibulum sed convallis massa,
								eu aliquet massa. Suspendisse lacinia rutrum tincidunt. Integer id erat porta, 
								convallis tortor.</font></p>
								<h5>Mark Henry</h5>
							<div class="wthree_testimonials_grid_pos">
								<img src="images/t1.jpg" alt=" " class="img-responsive" />
							</div>
</div><br>
							
						</div>
					
					</div>
					<div></div>
			
							
						</div>
					
					</div>
		 -->		
					
					
					
<%@include file="/footer.jspf" %>