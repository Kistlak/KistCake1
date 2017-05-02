<%-- 
    Document   : index
    Created on : Apr 13, 2017, 10:56:02 AM
    Author     : Irusha
--%>

<%@page import="java.sql.*"%>
<%@page import="classes.ConnectionUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        
        

       <!-- My CSS -->
        <link href="css\style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My-Cake</title>
        
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
        
        <!-- Slider -->
        <jsp:include page="includes/slider.jspf"></jsp:include>
        <!-- Slider -->
        
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
                        <h2 class="prod">Product List</h2>
                        <br>
                        <%
                            ConnectionUtils c = new ConnectionUtils();
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            String sql = "SELECT id,name,price FROM cake";
                            try{
                                con = c.getMyConnection();
                                st = con.createStatement();
                                rs = st.executeQuery(sql);
                                System.out.println("product details got successfully");
                            
                        %>
                        <% while(rs.next()){ %>
                        <!-- Product View -->
                        <div class="my-col col-md-4">
                          <img src="includes/getImage.jsp?id=<%=rs.getString("id")%>" class="it-img image-responsive" alt="" />
                          <div class="text-center"><a href="Product.jsp?pid=<%=rs.getString("id")%>"><%=rs.getString("name")%></a></div>
                          <p class="text-center">Rs.<%=rs.getString("price")%></p>
                        </div>
                        <% } %>
                        <%
                            }
                            catch(Exception e){
                                System.out.println("Product details getting error");
                            }
                        %>
                                   
                                               
                      </div>
                  <!--</div>-->
                </div>
              </div>
            </div>
        
        <!-- Left Bar -->      
        <!-- Footer -->
            <jsp:include page="includes/footer.jspf"></jsp:include>
        <!-- Footer -->
    </body>
</html>
