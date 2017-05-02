<%-- 
    Document   : productsView
    Created on : Apr 17, 2017, 10:23:18 AM
    Author     : NSBM
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.*"%>
<%@page import="classes.ConnectionUtils"%>
<%
    String id = request.getParameter("id");
    ConnectionUtils c = new ConnectionUtils();
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String sql;
    try{
        con = c.getMyConnection();
        sql = "SELECT img FROM cake WHERE id=?";
        pst = con.prepareStatement(sql);
        pst.setString(1, id);
        rs = pst.executeQuery();
        if(rs.next()){            
            Blob blob = rs.getBlob("img");
            byte byteArray[] = blob.getBytes(1, (int)blob.length());

            response.setContentType("image/jpeg");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
        }
        
        System.out.println("Image got success from db..");
    }
    catch(Exception e){
        System.out.println("Image getting error from db");
        System.out.println(e);
    }
%>
