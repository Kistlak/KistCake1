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
String sql ="select * from contact where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
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
        
        <title> Update Page </title>
        
        <!-- Bootstrap core CSS -->
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
        
        <style>
            
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
    
<h1>Update Customer Feedbacks</h1>

<form method="post" action="UpdateProcess">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">

Id : <br>
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>

Name : <br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>

Email : <br>
<input type="text" name="email" value="<%=resultSet.getString("email") %>">
<br>

Number : <br>
<input type="text" name="num" value="<%=resultSet.getString("num") %>">
<br>

Message : <br>
<input type="text" name="msg" value="<%=resultSet.getString("msg") %>">
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

</p> <!-- End Of The P About Class -->
		
</div> <!-- End Of The Container Class -->

        <!-- Footer -->
            <jsp:include page="includes/footer.jspf"></jsp:include>
        <!-- Footer -->

</body>
</html> 