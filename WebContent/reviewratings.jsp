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
		String password="root";
		Connection con=(Connection)DriverManager.getConnection(url,username,password);
      
      //sql="SELECT review FROM review where rated_status='"+"no"+"'  ";
      //sql1="SELECT uid FROM review where rated_status='"+"no"+"' ";
      sql="SELECT review FROM review where rated_status='"+"no"+"'  ";
      sql1="SELECT uid FROM review where rated_status='"+"no"+"' ";
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
    <button  class="btn btn-primary ratebtn" type="button"   data-toggle="modal" data-target="#pmodal" >Submit</button>
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
	


	
					
					
					
<%@include file="/footer.jspf" %>