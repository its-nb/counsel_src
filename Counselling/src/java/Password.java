/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author NB
 */

public class Password extends HttpServlet {

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
           String roll = request.getParameter("roll");
           String password = request.getParameter("pass");
           MyDb db = new MyDb();
           Connection con = db.getCon();
            try {
                Statement stmt = con.createStatement();
               // out.println("grt");
               ResultSet rs1= stmt.executeQuery("select * from candidate_register where roll = '"+roll+"'" );
               //out.println("grt");
               if(rs1.next()){
                 ResultSet rs2= stmt.executeQuery("select * from candidate_register where password = '"+password+"' and roll = '"+roll+"'");
                 if(rs2.next()){
                     String col=rs2.getString("choice"); 
                     String a=rs2.getString("name");
                     String b=rs2.getString("contact");
                     String c=rs2.getString("address");
                     String d=rs2.getString("email");
                 response.sendRedirect("candicheck.jsp?roll="+roll+"&name="+a+"&contact="+b+"&address="+c+"&email="+d+"&col="+col);
                 }
                 else{
                     response.sendRedirect("index.jsp?message="+"Incorrect password !!!");
                 }
               }else{
               
                response.sendRedirect("index.jsp?message="+"Invalid credentials");
               }
            } catch (SQLException ex) {
                Logger.getLogger(Password.class.getName()).log(Level.SEVERE, null, ex);
            } 
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
        processRequest(request, response);
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
