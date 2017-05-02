<%-- 
    Document   : insertProduct
    Created on : Apr 17, 2017, 4:12:07 PM
    Author     : NSBM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%--
        <%
            session.getAttribute("admin");
            if(session.getAttribute("admin")==null){
                response.sendRedirect("/WebApplication1/admin.jsp");
            }
        %>
        --%>
        <link rel="stylesheet" href="/WebApplication1/css/style.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <body>
          <!-- MyHeader -->
    <!-- My NavBar -->
    <nav class="MyShop-admin navbar navbar-default">
        <div class="container">
            
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
              
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
              <!--<img class="navbar-brand" src="img/t.jpg" width="300" height="220">-->
              <a class="navbar-brand" href="#">MyCake-Dashboard</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
              <li class="active"><a href="dashboard.jsp">Home<span class="sr-only">(current)</span></a></li>
              
              
              <li><a href="logout.jsp">Logout</a></li>
              
            </ul>

          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
    
         <!-- MyContent -->
            <div class="my-content">
              <div class="container"><!-- Going to the Container -->
                <div class="row">
                  <!--<div class="col-md-12">-->
                    <div class="col-md-3"><!-- Left Container -->
                      <ul class="list-group">
                        <a href="#" class="list-group-item disabled">
                            Products
                          </a>
                          <a href="#" class="list-group-item">Insert Records</a>
                          <a href="#" class="list-group-item">Update Records</a>
                          <a href="#" class="list-group-item">Delete Records</a>
                          <a href="ProductView.jsp" class="list-group-item">View Records</a>
                          
                          <a href="#" class="list-group-item disabled">
                              Orders
                            </a>
                            <a href="#" class="list-group-item">Customer Orders</a>
                            <a href="#" class="list-group-item">Pending Orders</a>
                            <a href="#" class="list-group-item">Completed</a>

                      </ul>
                    </div>
                      <div class="groove col-md-8"><!-- Right Container -->
                        <h2 class=" text-center prod">Insert Product</h2>
                        <br>
                        <form action="../insrtProduct" enctype="multipart/form-data" method="POST">
                            <div class="form-group">
                              <label for="exampleInputEmail1">Name</label>
                              <input name="name" class="form-control" id="exampleInputEmail1" placeholder="Cake Name">
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Unit Price(Rs.)</label>
                              <input name="up" class="form-control" id="exampleInputEmail1" placeholder="1990">
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Quantity</label>
                              <input name="qty" class="form-control" id="exampleInputEmail1" placeholder="50">
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Category</label>
                              <select name="category" class="form-control">
                                <option>Cup Cake</option>
                                <option>Birthday Cake</option>
                                <option>Annervasary Cake</option>
                                <option>Wedding Cake</option>
                                <option>Special Cake</option>
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Discription</label>
                              <input name="dis"  class="form-control" id="exampleInputEmail1" placeholder="For wedding partyies">
                            </div>
                            <div class="form-group">
                              <label for="exampleInputFile">File input(Image)</label>
                              <input name="img" type="file" id="exampleInputFile">                              
                            </div>
                            
                            <button type="submit" class="btn-aln btn btn-default">Add</button><br>
                            
                        </form>
                            
                        
                                   
                                               
                      </div>
                  <!--</div>-->
                </div>
              </div>
            </div>
        
    
    
    <!-- Footer -->
    <jsp:include page="/includes/footer.jspf"></jsp:include>
    <!-- Footer -->

    </body>
</html>

