package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterForm1 extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1>Welcome to the Registered form</h1>");
        String name = req.getParameter("user_name");
        String password = req.getParameter("user_password");
        String email = req.getParameter("user_email");
        String gender = req.getParameter("user_gender");
        String course = req.getParameter("user_course");
        String condition = req.getParameter("user_condition");
        
        if (condition != null && condition.equals("checked")) {
            out.println("<h2>Username - " + name + "</h1>");
            out.println("<h2>password - " + password + "</h1>");
            out.println("<h2>Email - " + email + "</h1>");
            out.println("<h2>Gender - " + gender + "</h1>");
            out.println("<h2>Course - " + course + "</h1>");
            out.println("<h2>Checked - " + condition + "</h1>");
            
            RequestDispatcher rd = req.getRequestDispatcher("servlet2");
//            rd.forward(req, resp);
            rd.include(req, resp);
        } else {
            out.println("Pls checked the terms and condition");
            RequestDispatcher rd = req.getRequestDispatcher("index.html");
            rd.include(req, resp);
        }
        
    }
    
}
