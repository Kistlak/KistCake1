/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import classes.Cake;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author NSBM
 */
@WebServlet(name = "insrtProduct", urlPatterns = {"/insrtProduct"})
@MultipartConfig(maxFileSize = 16177215)//Upload file upto 16MB
public class insrtProduct extends HttpServlet {

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
            out.println("<title>Servlet insrtProduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet insrtProduct at " + request.getContextPath() + "</h1>");
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
        String name = request.getParameter("name");
        double up = Double.parseDouble(request.getParameter("up"));
        int qty = Integer.valueOf(request.getParameter("qty"));
        String cate = request.getParameter("category");
        String dis = request.getParameter("dis");
        Part part = request.getPart("img");
        InputStream is = part.getInputStream();
        int ans;
        
        Cake ck = new Cake();
        ans = ck.addCake(name, up, qty, cate, dis, is);
        
        if(ans>0){
            System.out.println("Successfully Added (Servlet)");
            response.sendRedirect("/WebApplication1/admin/insertProduct.jsp");
        }
        else{
            System.out.println("Error (Servlet)");
        }
//        PrintWriter out = response.getWriter();
//        out.print(name);
//        out.print(up);
//        out.print(qty);
//        out.print(cate);
//        out.print(dis);
//        out.print(part);
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
