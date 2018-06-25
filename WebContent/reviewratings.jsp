<%@include file="/header.jspf" %>
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