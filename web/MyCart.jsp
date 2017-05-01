<%-- 
    Document   : MyCart
    Created on : Apr 29, 2017, 10:47:21 AM
    Author     : Irusha
--%>

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
        <link href="css\cart.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
    </head>
    <body>
        <!-- Header -->
        <% session.getAttribute("uname");
            if(session.getAttribute("uname")!=null){ %>
            <jsp:include page="includes/headerd.jspf"></jsp:include>
            <% } else{ %>
            <jsp:include page="includes/header.jspf"></jsp:include>
        <% } %>
        
        <!-- Body -->
        <div class="container">
                <div class="row">
                        <div class="my-cart col-xs-8">
                                <div class="panel panel-info">
                                        <div class="panel-heading">
                                                <div class="panel-title">
                                                        <div class="row">
                                                                <div class="col-xs-6">
                                                                        <h5><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h5>
                                                                </div>
                                                                <div class="col-xs-6">
                                                                    <button type="button" class="btn btn-primary btn-sm btn-block">
                                                                        <span class="glyphicon glyphicon-share-alt"></span> <a class="click" href="index.jsp">Continue shopping</a>
                                                                        </button>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                        <div class="panel-body">
                                                <div class="row">
                                                        <div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
                                                        </div>
                                                        <div class="col-xs-4">
                                                                <h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
                                                        </div>
                                                        <div class="col-xs-6">
                                                                <div class="col-xs-6 text-right">
                                                                        <h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
                                                                </div>
                                                                <div class="col-xs-4">
                                                                        <input type="text" class="form-control input-sm" value="1">
                                                                </div>
                                                                <div class="col-xs-2">
                                                                        <button type="button" class="btn btn-link btn-xs">
                                                                                <span class="glyphicon glyphicon-trash"> </span>
                                                                        </button>
                                                                </div>
                                                        </div>
                                                </div>
                                                <hr>
                                                
                                                
                                                <div class="row">
                                                        <div class="text-center">
                                                                <div class="col-xs-9">
                                                                        <h6 class="text-right">Added items?</h6>
                                                                </div>
                                                                <div class="col-xs-3">
                                                                        <button type="button" class="btn btn-default btn-sm btn-block">
                                                                                Update cart
                                                                        </button>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                        <div class="panel-footer">
                                                <div class="row text-center">
                                                        <div class="col-xs-9">
                                                                <h4 class="text-right">Total <strong>$50.00</strong></h4>
                                                        </div>
                                                        <div class="col-xs-3">
                                                                <button type="button" class="btn btn-success btn-block">
                                                                        Checkout
                                                                </button>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
        
        <!-- Footer -->
            <jsp:include page="includes/footer.jspf"></jsp:include>
        <!-- Footer -->
    </body>
</html>
