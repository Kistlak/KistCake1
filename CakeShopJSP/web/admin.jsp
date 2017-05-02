<%-- 
    Document   : login
    Created on : Apr 17, 2017, 12:29:28 PM
    Author     : NSBM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            session.getAttribute("admin");
            if(session.getAttribute("admin")!=null){
                response.sendRedirect("admin/dashboard.jsp");
            }
        %>
        <link rel="stylesheet" type="text/css" href="css/admincss.css">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
                    
        <div class="main">


            <div class="container">
        <center>
        <div class="middle">
              <div id="login">

                  <form action="adminLogin" method="POST">

                  <fieldset class="clearfix">

                      <p ><span class="fa fa-user"></span><input type="text" name="un"  Placeholder="Username" required></p> <!-- JS because of IE support; better: placeholder="Username" -->
                      <p><span class="fa fa-lock"></span><input type="password" name="pw" Placeholder="Password" required></p> <!-- JS because of IE support; better: placeholder="Password" -->

                     <div>
                                        <span style="width:48%; text-align:left;  display: inline-block;"><a class="small-text" href="#">Forgot
                                        password?</a></span>
                         <span style="width:50%; text-align:right;  display: inline-block;"><input type="submit" name="" value="Login"></span>
                                    </div>

                  </fieldset>
        <div class="clearfix"></div>
                </form>

                <div class="clearfix"></div>

              </div> <!-- end login -->
              <div class="logo">LOGO

                  <div class="clearfix"></div>
              </div>

              </div>
        </center>
            </div>

        </div>
    </body>
</html>
