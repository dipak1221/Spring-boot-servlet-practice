package com.technical.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.technical.blog.dao.*;
import com.technical.blog.entities.Message;
import com.technical.blog.entities.User;
import com.technical.blog.helper.ConnectionProvider;
import javax.servlet.http.HttpSession;

public class loginServlet extends HttpServlet {

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
            out.println("<title>Servlet loginServlet</title>");
            out.println("</head>");
            out.println("<body>");

            String check = request.getParameter("check");
            out.println(check);
            if (check == null) {
                //error 
                out.println("pls checked the check box while logging");

            } else {
                String userEmail = request.getParameter("email");
                String userPassword = request.getParameter("password");
                UserDao dao = new UserDao(ConnectionProvider.getConnection());
                User u = dao.getUserByEmailAndPassword(userEmail, userPassword);
                if (u == null) {
//            error
                    Message msg = new Message("Invalid user pls try again!", "error", "alert-danger");

                    HttpSession s = request.getSession();
                    s.setAttribute("msg", msg);
                    
                    response.sendRedirect("login_page.jsp");
//                    out.println("User not available");
                } else {
                    HttpSession s = request.getSession();
                    s.setAttribute("currentUser", u);
                    response.sendRedirect("profile.jsp");
                }
            }
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
