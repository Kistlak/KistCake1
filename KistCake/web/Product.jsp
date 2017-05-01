<%-- 
    Document   : TestProduct
    Created on : Apr 27, 2017, 8:44:57 PM
    Author     : NSBM
--%>

<%@page import="java.sql.*"%>
<%@page import="classes.ConnectionUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% String id=request.getParameter("pid");
           int pid=Integer.valueOf(id);
        %>
        <!--JavaScript BootstrapFiles-->
        <script src="js\bootstrap.js"></script>
        <script src="js\bootstrap,mini.js"></script>
        <script src="js\jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

       <!-- Bootstrap CSS -->
        <link href="css\bootstrap.css" rel="stylesheet">
        <link href="css\bootstrap.min.css" rel="stylesheet">
        <link href="css\bootstrap-theme.css" rel="stylesheet">
        <link href="css\bootstrap-theme.min.css" rel="stylesheet">
        <link href="css\product.css" rel="stylesheet">

       <!-- My CSS -->
        <link href="css\style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
    </head>
    <body>        
        <!-- Header -->
        <% session.getAttribute("uname");
            if(session.getAttribute("uname")!=null){ %>
            <jsp:include page="includes/headerd.jspf"></jsp:include>
            <% } else{ %>
            <jsp:include page="includes/header.jspf"></jsp:include>
            <% } %>                  
        <!-- Header -->
        <!-- MyContent -->
            <div class="my-content">
              <div class="container"><!-- Going to the Container -->
                <div class="row">
                  <!--<div class="col-md-12">-->
                    <div class="col-md-3"><!-- Left Container -->
                      <ul class="list-group">
                        <a href="#" class="list-group-item disabled">
                            Categories
                          </a>
                          <a href="#" class="list-group-item">Cup Cakes</a>
                          <a href="#" class="list-group-item">Birthday Cakes</a>
                          <a href="#" class="list-group-item">Anniversary Cakes</a>
                          <a href="#" class="list-group-item">Wedding Cakes</a>
                          <a href="#" class="list-group-item">Special Cakes</a>
                          
                          <a href="#" class="list-group-item disabled">
                              FAQ
                            </a>
                            <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
                            <a href="#" class="list-group-item">Morbi leo risus</a>
                            <a href="#" class="list-group-item">Porta ac consectetur ac</a>
                            <a href="#" class="list-group-item">Vestibulum at eros</a>

                      </ul>
                    </div>
                      <div class="col-md-8"><!-- Right Container -->
                        <div class="one product col-md-6 service-image-left">   
                            <%
                                ConnectionUtils c=new ConnectionUtils();
                                Connection con =null;
                                PreparedStatement pst = null;
                                ResultSet rs = null;
                                String sql;
                                try{
                                    con=c.getMyConnection();
                                    sql="SELECT id,name,price,qty,discription FROM cake WHERE id=?";
                                    pst=con.prepareStatement(sql);
                                    pst.setString(1, id);
                                    rs=pst.executeQuery();
                                    while(rs.next()){
                                     System.out.println("here rs");   
                                    
                                    %>
                                
			<center>
                            <img id="item-display" src="includes/getImage.jsp?id=<%=rs.getString("id")%>" alt="" height="300" width="300"></img>
			</center>			
                        </div>
                          <br>
                        <div class="product-dis">
                            
					<div class="product-title"><%=rs.getString("name")%></div>
					<div class="product-desc"><%=rs.getString("discription")%></div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price">Price :- Rs.<%=rs.getString("price")%></div>
                                        <div class="product-stock">Available Quantity :- <%=rs.getString("qty")%></div>
					<hr>
                                        <div class="pro-buy-qty">Quantity :- <input type="text" name="qty" value="1" size="5" /></div>
                                        <hr>
					<div class="btn-group cart">
						<button type="button" class="btn btn-success">
							 Buy Now
						</button>
					</div>
					<div class="cert btn-group">
						<button type="button" class="btn btn-danger">
							Add to cart 
						</button>
					</div>
                                        <% } %>
                                        <% }
                                catch(Exception e){}
                            %> 
				</div>     
                                               
                      </div>
                  <!--</div>-->
                </div>
              </div>
            </div>
        
        <!-- Footer -->
            <jsp:include page="includes/footer.jspf"></jsp:include>
        <!-- Footer -->
    </body>
</html>
