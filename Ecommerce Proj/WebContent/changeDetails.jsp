<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>Change Details</title>
<style>
hr
{width:70%;}</style>
</head>
<body>
<%
try{
	ConnectionProvider conProvider =new ConnectionProvider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next()){

%>
<h3>Name: <%=rs.getString(1) %></h3>
<hr>
<h3>Email: <%=rs.getString(2) %></h3>
<hr>
<h3>Mobile Number: <%=rs.getString(3) %></h3>
<hr>
<h3>Address: <%=rs.getString(5) %></h3>
<hr>
<hr>
<h3>City: <%=rs.getString(6) %></h3>
<hr>
<hr>
<h3>State: <%=rs.getString(7) %></h3>
<hr>
<hr>
<h3>Country: <%=rs.getString(8) %></h3>
<hr>

      <br>
      <br>
      <br>
<%
}
}catch(Exception e){
	System.out.println(e);
	
}
%>
</body>
</html>