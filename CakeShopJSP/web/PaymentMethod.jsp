<%-- 
    Document   : PaymentMethod
    Created on : Apr 28, 2017, 11:23:06 PM
    Author     : Irusha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% session.getAttribute("uname");
            if(session.getAttribute("uname")==null){ 
                response.sendRedirect("login.jsp");
            }
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
        

       <!-- My CSS -->
       <link href="css\payment.css" rel="stylesheet">       
        <link href="css\style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Method</title>
    </head>
    <body>
        <!-- Header -->
        <jsp:include page="includes/headerd.jspf"></jsp:include>
        
        <!-- Payment Method -->
        <div class="my-con container">
                <div class="row">
                        <div class="paymentCont">
                                                        <div class="headingWrap">
                                                                        <h3 class="pay-mod headingTop text-center">Select Your Payment Method</h3>	
                                                                        
                                                        </div>
                                                        <div class="paymentWrap">
                                                                <div class="btn-group paymentBtnGroup btn-group-justified" data-toggle="buttons">
                                                            <label class="btn paymentMethod active">
                                                                <div class="method visa"></div>
                                                                <input type="radio" name="options" checked> 
                                                            </label>
                                                            <label class="btn paymentMethod">
                                                                <div class="method master-card"></div>
                                                                <input type="radio" name="options"> 
                                                            </label>
                                                            <label class="btn paymentMethod">
                                                                <div class="method amex"></div>
                                                                <input type="radio" name="options">
                                                            </label>
                                                             <label class="btn paymentMethod">
                                                                <div class="method vishwa"></div>
                                                                <input type="radio" name="options"> 
                                                            </label>
                                                            <label class="btn paymentMethod">
                                                                <div class="method ez-cash"></div>
                                                                <input type="radio" name="options"> 
                                                            </label>

                                                        </div>        
                                                        </div>
                                                        <div class="footerNavWrap clearfix">
                                                            <div class="btn btn-success pull-left btn-fyi"><span class="glyphicon glyphicon-chevron-left"></span><a class="link-pay" href="index.jsp">CONTINUE SHOPPING</a> </div>
                                                                <div class="btn btn-success pull-right btn-fyi"><a class="link-pay" href="#">CHECKOUT</a> <span class="glyphicon glyphicon-chevron-right"></span></div>
                                                        </div>
                                                </div>

                </div>
        </div>
        
        <!-- Header -->
        <jsp:include page="includes/footer.jspf"></jsp:include>
    </body>
</html>
