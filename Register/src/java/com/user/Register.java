/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user;

import java.io.File;
import java.io.FileOutputStream;
import java.sql.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

/**
 *
 * @author Dipak
 */
@MultipartConfig
public class Register extends HttpServlet {

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
   

            //getting post request 
            String name = request.getParameter("user_name");
            String password = request.getParameter("user_password");
            String email = request.getParameter("user_email");
            Part part=request.getPart("user_image");
            String filename=part.getSubmittedFileName();
//            out.println(filename);
                    log(filename);
//            out.println(name);
//            out.println(password);
//            out.println(email);

            //create connecion
            try {
                Thread.sleep(3000);
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/springdb";
                Connection con = DriverManager.getConnection(url, "root", "");
                if (!con.isClosed()) {
                    log("<h1>Successfuly connection build!</h1>");
                    String q = "insert into register(name,password,email,image_name) value(?,?,?,?)";
                    PreparedStatement pstmt = con.prepareStatement(q);

                    pstmt.setString(1, name);
                    pstmt.setString(2, password);
                    pstmt.setString(3, email);
                    pstmt.setString(4, filename);
                    pstmt.executeUpdate();
                    //upload file
                    InputStream is=part.getInputStream();
                    byte data[]=new byte[is.available()];
                    is.read(data);
                    
                    String path=request.getRealPath("/")+"img"+File.separator+filename;
                    log(path);
                    FileOutputStream fos=new FileOutputStream(path);
                    fos.write(data);
                    fos.close();
                    
                    
                     log("Data inserted successfully!...");
                    out.println("done");
                } else {
                    out.println("sorry connection not build");
                }

            } catch (Exception e) {
                log("sorry Error occur..");
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
