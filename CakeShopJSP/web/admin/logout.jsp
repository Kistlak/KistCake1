<%
    session.getAttribute("admin");
    session.invalidate();
    response.sendRedirect("/WebApplication1/admin.jsp");
    
%>