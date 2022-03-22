/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.technical.blog.servlet;

import com.technical.blog.dao.UserDao;
import com.technical.blog.entities.Message;
import com.technical.blog.entities.User;
import com.technical.blog.helper.ConnectionProvider;
import com.technical.blog.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Dipak
 */
@MultipartConfig
public class EditServlet extends HttpServlet {

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
            HttpSession u = request.getSession();
            User user = (User) u.getAttribute("currentUser");
            int id = user.getId();
            String gender = user.getGender();
            String name = request.getParameter("user_name");
            String email = request.getParameter("user_email");
            String about = request.getParameter("user_about");
            String password = request.getParameter("user_password");
            String oldFile = user.getProfile();
            Part part = request.getPart("image_file");
            String image = part.getSubmittedFileName();
            
            
            System.out.println("id " + id);
            System.out.println("gender " + gender);
            System.out.println("name " + name);
            System.out.println("email " + email);
            System.out.println("abut" + about);
            System.out.println("pass " + password);
            System.out.println("pass " + password.length());
            System.out.println("image " + image);
            System.out.println("id " + id);
            System.out.println("problem is here");
            
            
            if (password.length() != 0) {
                HttpSession s = request.getSession();
                User editedUser = new User(id, name, email, password, gender, about, image);
                UserDao edit = new UserDao(ConnectionProvider.getConnection());
                if (edit.editUser(editedUser)) {
//                    out.println("user Updated successfully");
                    String path = request.getRealPath("/") + "pics" + File.separator + user.getProfile();
                    String pathOldFile = request.getRealPath("/") + "pics" + File.separator + oldFile;
//this path is not deleting the file so
//                    String path = "..\\..\\..\\..\\..\\..\\web\\pics\\" + user.getProfile();

                    if (!oldFile.equals("default.png")) {
                        Helper.deleteFile(pathOldFile);
                    }
                    if (Helper.saveFile(part.getInputStream(), path)) {
//                        out.println("File uploaded successfully! ");
                        Message msg = new Message("Profile updateed successfully!", "success", "alert-success");

                        s.setAttribute("msg", msg);
                    } else {
//                        out.println("File not uploaded");
                        Message msg = new Message("Something went wrong!", "error", "alert-danger");
//                        HttpSession s = request.getSession();
                        s.setAttribute("msg", msg);
                    }
//                    }
//                    out.println("<script>alert('Changes Successfully updated re-Log In')</script>");
                    u.removeAttribute("currentUser");
//                    response.sendRedirect("login_page.jsp");
                } else {
//                    out.println("Something goes wrong");
                    Message msg = new Message("Profile updateed successfully!", "success", "alert-success");

//                    HttpSession s = request.getSession();
                    s.setAttribute("msg", msg);
                }
            } else {
                out.println("password is null");
                out.println("<script>alert('Enter password to make save changes')</script>");
                response.sendRedirect("profile.jsp");
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
