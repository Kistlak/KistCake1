<%-- 
    Document   : login
    Created on : Apr 17, 2017, 12:03:00 PM
    Author     : NSBM
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from cake where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<!DOCTYPE html>
<html>
    <head>
        
        <%
            session.getAttribute("admin");
            if(session.getAttribute("admin")==null){
                response.sendRedirect("/WebApplication1/admin.jsp");
            }
        %>
        
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
            <div class="ad-cont my-content">
              <div class="container"><!-- Going to the Container -->
                <div class="row">
                  <!--<div class="col-md-12">-->
                    <div class="left-cont col-md-3"><!-- Left Container -->
                      <ul class="list-group">
                        <a href="#" class="list-group-item disabled">
                            Products
                          </a>
                          <a href="insertProduct.jsp" class="list-group-item">Insert Records</a>
                          <a href="updateProduct.jsp" class="list-group-item">Update Records</a>
                          <a href="deleteProduct.jsp" class="list-group-item">Delete Records</a>
                          <a href="dProductView.jsp" class="list-group-item">View Records</a>
                          
                          <a href="#" class="list-group-item disabled">
                              Customer Orders
                            </a>
                            <a href="allOrders.jsp" class="list-group-item">All Orders</a>
                            <a href="pendingOrders.jsp" class="list-group-item">Pending Orders</a>
                            <a href="completedOrders.jsp" class="list-group-item">Completed Orders</a>
                            

                      </ul>
                    </div>
                      <div class="col-md-8"><!-- Right Container -->
                        <h2 class="prod">Right Side</h2>
                
                        <h1>Update Customer Feedbacks</h1>

<form method="post" action="../ProductUpdateProcess">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">

Id : <br>
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>

Name : <br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>

Price : <br>
<input type="text" name="price" value="<%=resultSet.getString("price") %>">
<br>

Qty : <br>
<input type="text" name="qty" value="<%=resultSet.getString("qty") %>">
<br>

Category : <br>
<input type="text" name="category" value="<%=resultSet.getString("category") %>">
<br><br>

Discription : <br>
<input type="text" name="discription" value="<%=resultSet.getString("discription") %>">
<br><br>

<label for="exampleInputFile">File input(Image)</label>
<input name="img" type="file" id="exampleInputFile">
<br><br>

<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

                                               
                      </div>
                  <!--</div>-->
                </div>
              </div>
            </div>
        
        <!-- Left Bar -->
       
    <!-- Left Container -->
    
    
    <!-- Footer -->
    <jsp:include page="/includes/footer.jspf"></jsp:include>
    <!-- Footer -->

    </body>
</html>
