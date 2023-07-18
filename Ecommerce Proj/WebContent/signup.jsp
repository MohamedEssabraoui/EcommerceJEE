<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    	<form action="signup" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
    <input type="password" name="password" placeholder="Enter Password" required>
    <input type="text" name="address" placeholder="Enter address" required>
    <input type="text" name="city" placeholder="Enter city" required>
    <input type="text" name="state" placeholder="Enter state" required>
    <input type="text" name="country" placeholder="Enter country" required>
    <input type="submit" value="signup">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{

%>
<h1>Successfully Registered</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Something Went Wrong! Try Again !</h1>
<%}%>
    <h2>Ecommerce website</h2>
    <p><a href="mohamedessabraoui@gmail.com" style="text-decoration: none;">mohamedessabraoui@gmail.com</a></p>
  </div>
</div>

</body>
</html>