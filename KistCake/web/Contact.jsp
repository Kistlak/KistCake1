<%-- 
    Document   : Contact_Form
    Created on : Apr 30, 2017, 12:53:01 PM
    Author     : user
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
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
        
        <title> Contact Page </title>
        
        <!-- Bootstrap core CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
        
<style>

#footer {
    width:auto;
	height:auto;
    margin-top: 0px;
    padding: 10px;
    color: white;
    background-color: #ffa700;
    clear: left;
	margin-left:0px;
	text-align: center;
     }

.about{
	margin-left:50px;
	margin-right:50px;
	font-family: Times New Roman;
	line-height: 180%;
	font-size:135%;
	text-align: left;
	color:#353c47;
}

p span { 
   color: white; 
   line-height: 300%; 
   background: rgb(0, 0, 0); /* fallback color */
   background: rgba(0, 0, 0, 0.5);
   padding: 8px; 
}	

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

textarea {
    width: 100%;
	height:150px;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 400px;
    background-color: #002147;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
	font-size: 15px;
	font-weight: bold;
}

input[type=submit]:hover {
    background-color: #8B008B;
}
	
.form{
	text-align:left;
	margin-left:50px;
	margin-right:50px;
}

.req{
	color:red;
}
	 
</style>        
        
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
        
<div class="container"> <!-- Start Of The Container Class -->

<p class="about"> <!-- Start Of The P About Class -->
        
        <center>
        <p><span>Contact Our Staff..<span class='spacer'></span>

        <br>&nbsp; If you have any questions, please send us a Email. For any other concerns, please Call us to contact someone who can help..</a></span></p>   
        </center>
        
        <form action="Contact" method="POST">
 
        Your Name : <input type="text" name="name"> <br><br>
        Your Email : <input type="text" name="email"> <br><br>
        Your Contact Number : <input type="text" name="num"> <br><br>
        Your Message : <textarea name="msg" placeholder="What do you want to know ?" required/></textarea> <br><br>
        
        <div class="row text-center">
            <div class="col-md-12 col-sm-6 hero-feature">
                  <input type="submit" class="btn btn-info btn-lg" name="send" value="Send Message"/></button>   
            </div>	
        </div> <!-- End Of The Row Class -->
        
        </form>
  
        Click <a href="View.jsp" target="_blank">Here</a> To View All The Feedbacks

</p> <!-- End Of The P About Class -->
		
</div> <!-- End Of The Container Class -->
 
        <!-- Footer -->
            <jsp:include page="includes/footer.jspf"></jsp:include>
        <!-- Footer -->

    </body>
    
</html>
