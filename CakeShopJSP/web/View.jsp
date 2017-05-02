<%-- 
    Document   : View
    Created on : Apr 30, 2017, 1:53:34 PM
    Author     : user
--%>

<%@page import="java.sql.*"%>
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
        
        <title> Customer Feedbacks </title>
        
        <!-- Bootstrap core CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
        
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

<div class="row text-center"> <!-- Start Of The Row Class -->

<div class="col-md-12 col-sm-12 hero-feature">    
    
        <%
                       
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/test";
            String un = "root";
            String pw = "";
            Connection con = DriverManager.getConnection(url, un, pw);
            String sql = "select * from contact";
            Statement st = con.createStatement();
            ResultSet rs = null;
            try{
            
                rs = st.executeQuery(sql);
            }
            catch(Exception e) {
                e.printStackTrace();
            }
            
            
         %>
        <h2><center>Customer Feedbacks</center></h2><hr>
        
        <form action="DelJSP" method="POST" style="text-align: left;"> 
            ID : <input type="text" name="id"> &nbsp; <input type="submit" class="btn btn-primary m-t-10" value="Delete"/> 
        </form> <br>
        
    <center>
        <table class="table table-bordered">
            <tbody>
                <tr class="danger">
                    <td><b>Id</b></td>
                    <td><b>Name</b></td>
                    <td><b>Email</b></td>
                    <td><b>Number</b></td>
                    <td><b>Message</b></td>
                </tr>
                <% while(rs.next()) { %>
                <tr>
                    <td><%= rs.getString("id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("num") %></td>
                    <td><%= rs.getString("msg") %></td>
                    <td><a href="Update.jsp?id=<%=rs.getString("id")%>">Update</a></td>
                    <td><a href="DelJSP?id=<%=rs.getString("id")%>">Delete</a></td>
                    <% } %>
                </tr>
            </tbody>
        </table>

    </center>

</div>   
 
</div> <!-- End Of THe Row Class -->
                
</p> <!-- End Of The P About Class -->
		
</div> <!-- End Of The Container Class -->

        <!-- Footer -->
            <jsp:include page="includes/footer.jspf"></jsp:include>
        <!-- Footer -->

    </body>
</html>
