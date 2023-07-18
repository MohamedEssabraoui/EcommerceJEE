<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<html>
<head>
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<link rel="stylesheet" href="css/changeDetails.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Edit Profile</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg)){
	

%>
<h3 class="alert">Address Successfully Updated !</h3>
<%} %>
<%

if("invalid".equals(msg)){
	

%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>
<%
try{
	ConnectionProvider conProvider =new ConnectionProvider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next()){

%>
<form action="editProfil" method="post" >

<h4>Enter Name</h4>
<input class="input-style" type="text" name="name" value="<%=rs.getString(1)%>" placeholder="Enter Name" required>

<h4>Enter Email</h4>
<input class="input-style" type="text" name="email" value="<%=rs.getString(2)%>" placeholder="Enter Email" required>

<h4>Enter Mobile Number</h4>
<input class="input-style" type="number" name="mobileNumber" value="<%=rs.getString(3)%>" placeholder="Enter Mobile Number" required>

<h4>Enter Password</h4>
<input class="input-style" type="number" name="password" value="<%=rs.getString(4)%>" placeholder="Enter Password" required>

<h4>Enter Address</h4>
 <input class="input-style" type="text" name="address" value="<%=rs.getString(5)%>" placeholder="Enter Address" required>

 <h4>Enter city</h4>
 <input class="input-style" type="text" name="city" value="<%=rs.getString(6)%>" placeholder="Enter City" required>

<h4>Enter State</h4>
<input class="input-style" type="text" name="state" value="<%=rs.getString(7)%>" placeholder="Enter State" required>

<h4>Enter country</h4>
<input class="input-style" type="text" name="country" value="<%=rs.getString(8)%>" placeholder="Enter Country" required>

 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%}}
catch(Exception e){
	System.out.println(e);
}
%>
</body>
<%@include file="footer.jsp" %>
</html>