<%@include file="/header.jspf" %>
<%@ page import="java.sql.*" %>

<html>
<head>

</head>
<body>
<form action="account_update" method="post" style="text-align:center;">
<input type="text" placeholder="name" name="name"><br>
<input type="text" placeholder="Oldpassword" name="oldpassword" ><br>
<input type="text" placeholder="password" name="password" ><br>
<input type="text" placeholder="email" name="email"><br>
<input type="text" placeholder="phone" name="phone"><br>
<input type="hidden" name="token" value="${sessionScope.csrfToken}">
<input type="submit" value="update account">
</form>
</body>
</html>



<%@ include file="/footer.jspf" %>