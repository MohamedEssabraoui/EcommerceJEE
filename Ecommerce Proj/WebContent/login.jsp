<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<link rel="stylesheet" href="css/signup-style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="login" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" value="login">
     </form>
      <h2><a href="/Online_Shopping_Project/signup">SignUp</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  
  String msg=request.getParameter("msg");
  if("notexist".equals(msg)){
  %>
  <h1>Incorrect Username or Password</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Ecommerce website</h2>
    <h4>
    <p><a href="mohamedessabraoui@gmail.com" style="text-decoration: none;">mohamedessabraoui@gmail.com</a></p>
    
  </div>
</div>

</body>
</html>