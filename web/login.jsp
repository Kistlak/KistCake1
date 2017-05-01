<%-- 
    Document   : login
    Created on : Apr 13, 2017, 1:11:53 PM
    Author     : NSBM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="includes/newjsp.jspf"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        
        <!-- Header -->
            <jsp:include page="includes/header.jspf"></jsp:include>
        <!-- Header -->
        
        <!-- Registration HTML -->
        
            <div class="bdy-col container">
                <div class="row">
        <div class="rg-fr col-md-6 col-md-offset-3">
            <div class="panel panel-primary">
                <div class="panel-heading" style="text-align: center; background-color: #3498db;">Login Form</div>
                        <div class="panel-body">
                            <form role="form" method="POST" action="loginServlet" accept-charset="UTF-8">
                                <br>    
                                <label for="lname">Username</label>
                                <div class="input-group input-group-lg">
                                    
                                    <span class="input-group-addon" id="sizing-addon1">@</span>
                                    <input name="uname" type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
                                </div>
                                <br>
                                <label for="lname">Password</label>
                                <div class="input-group input-group-lg">
                                    
                                    <span class="input-group-addon" id="sizing-addon1">#*</span>
                                    <input name="pass" type="password" class="form-control" placeholder="Password" aria-describedby="sizing-addon1">
                                </div>
                                <br>
                                

                                <center><input type="submit" class="btn btn-primary m-t-10" id="submitbtn" name="" value="Login"></center>

                                    </form>
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
