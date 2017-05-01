<%-- 
    Document   : logout
    Created on : Apr 13, 2017, 11:40:47 PM
    Author     : NSBM
--%>

<%
    session.getAttribute("uname");
    session.invalidate();
    response.sendRedirect("index.jsp");
    
%>
