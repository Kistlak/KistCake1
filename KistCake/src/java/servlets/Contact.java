/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "Contact", urlPatterns = {"/Contact"})
public class Contact extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Contact</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Contact at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Start Of The Send Button
        
            if (request.getParameter("send") != null){
            
            String Your_Name=request.getParameter("name");
            String Your_Email=request.getParameter("email");
            String Num=request.getParameter("num");
            String Message=request.getParameter("msg");
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(Contact.class.getName()).log(Level.SEVERE, null, ex);
            }
            String url = "jdbc:mysql://localhost:3306/test";
            String un = "root";
            String pw = "";
            java.sql.Connection con = null;
            try {
                con = DriverManager.getConnection(url, un, pw);
            } catch (SQLException ex) {
                Logger.getLogger(Contact.class.getName()).log(Level.SEVERE, null, ex);
            }
            String sql = "INSERT INTO contact (name,email,num,msg) VALUES (?,?,?,?)";
            PreparedStatement pst = null;
            try {
                pst = (PreparedStatement) con.prepareStatement(sql);
            } catch (SQLException ex) {
                Logger.getLogger(Contact.class.getName()).log(Level.SEVERE, null, ex);
            }
                try {
                    pst.setString(1,Your_Name);
                } catch (SQLException ex) {
                    Logger.getLogger(Contact.class.getName()).log(Level.SEVERE, null, ex);
                }
                try {
                    pst.setString(2,Your_Email);
                } catch (SQLException ex) {
                    Logger.getLogger(Contact.class.getName()).log(Level.SEVERE, null, ex);
                }
                try {
                    pst.setString(3,Num);
                } catch (SQLException ex) {
                    Logger.getLogger(Contact.class.getName()).log(Level.SEVERE, null, ex);
                }
                try {
                    pst.setString(4, Message);
                } catch (SQLException ex) {
                    Logger.getLogger(Contact.class.getName()).log(Level.SEVERE, null, ex);
                }
            
            try{
            
                pst.executeUpdate();
            }
            catch(Exception e) {
                e.printStackTrace();
            }
            finally{
            
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(Contact.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
        }
        // End Of The Send Button
        
        String Print_Name = request.getParameter("name");
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JSP_Servlet_Encap</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> <center> Your Message Has Been Sent " + Print_Name + "</h1></center>"); 
            out.println("</body>");
            out.println("</html>");
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
