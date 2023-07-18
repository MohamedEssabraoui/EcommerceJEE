<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>

<head>
    <title>Home</title>
</head>
<%@include file="header.jsp" %>
<body>
<div class="container">
    <% String msg = request.getParameter("msg");
    if ("added".equals(msg)) { %>
        <div class="alert alert-success" role="alert">
            Product added successfully!
        </div>
    <% } %>
    <% if ("exist".equals(msg)) { %>
        <div class="alert alert-warning" role="alert">
            Product already exists in your cart! Quantity increased!
        </div>
    <% } %>
    <% if ("invalid".equals(msg)) { %>
        <div class="alert alert-danger" role="alert">
            Something went wrong. Please try again!
        </div>
    <% } %>
    <div class="row row-cols-1 row-cols-md-5 g-4">
        <% try {
            ConnectionProvider conProvider = new ConnectionProvider();
            Connection con = conProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM product WHERE active='Yes'");
            while (rs.next()) { %>
                <div class="col">
                    <div class="card">
                        <img src="assets/<%= rs.getString(2) %>.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%= rs.getString(2) %></h5>
                            <h4 class="card-title"><%= rs.getString(3) %></h4>
                            <h4 class="card-title"><%= rs.getString(4) %></h4>
                            <a class="btn btn-primary" href="<%=request.getContextPath()%>/addToCart?id=<%= rs.getString(1) %>">Add to cart</a>
                        </div>
                    </div>
                </div>
            <% }
        } catch (Exception e) {
            System.out.println(e);
        } %>
    </div>
</div>
</body>

<%@include file="footer.jsp" %>
</html>
