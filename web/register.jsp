<%-- 
    Document   : register
    Created on : Apr 13, 2017, 11:11:36 AM
    Author     : NSBM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="includes/newjsp.jspf"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <div class="panel-heading" style="text-align: center; background-color: #3498db;">Registration Form</div>
                        <div class="panel-body">
                            <form role="form" method="POST" action="registerServlet" accept-charset="UTF-8">

                                <label for="fname">First Name</label>
                                <input type="text" id="fname" class="form-control" name="fname" placeholder="Example: John">

                                <label for="lname">Last Name</label>
                                <input type="text" id="lname" class="form-control" name="lname" placeholder="Example: Smith">

                                <label for="states" class="m-t-10">Address</label>
                                <textarea name="add" class="form-control" rows="3" id="comment"></textarea>
                                

                                <label for="gender" class="m-t-10">Phone Number</label>
                                <input type="text" id="lname" class="form-control" name="pno" placeholder="Example: 0711231234">

                                <label for="emailaddr" class="m-t-10">Email Address</label>
                                <input type="text" id="emailaddr" class="form-control" name="email" placeholder="Example: john.smith@gmail.com">

                                <label for="password" class="m-t-10">Password</label>
                                <input type="password" id="password" class="form-control" name="password" placeholder="">

                                <label for="verifypass" class="m-t-10">Verify Password</label>
                                <input type="password" id="confirmpass" class="form-control" name="verifypass" placeholder=""><br>

                                <center><input type="submit" class="btn btn-primary m-t-10" id="submitbtn" name="" value="Register"></center>

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
