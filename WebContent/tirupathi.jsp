<%@include file="/header.jspf" %>
<html>
<head>

</head>
<body>
<h1 style="text-align:center;">Get your plan for tirupathi</h1><br>



<div class="container plan" style="text-align:center">
<form action="travelling.jsp">
<%int tripid=2; %>
<%session.setAttribute("tripid",tripid); %>
<input type="submit" value="start planning your trip">
</form>
	</div>
</body>
	
<br>
<div style="text-align:center;">
	
<button class="btn btn-primary" data-toggle="modal" data-target="#reviewmodal" style="text-align:center;">End trip</button>	
</div>


<div class="modal fade" id="reviewmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="Place21modal">Give your review</h5>
        
       
      </div>
      <%String userid=session.getAttribute("userid").toString();%>
      
      <div class="modal-body" style="text-align:center">
       <form action="submitreview.do" method="post">
       

       <textarea name="review">
        </textarea><br>
       <input name="userid" value=<%=userid %> type="hidden">
       <input type="submit" value="submit your review">
       <input name="tripid" value=<%= tripid%> type="hidden">
       </form>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>




</html>
<%@include file="/footer.jspf" %>