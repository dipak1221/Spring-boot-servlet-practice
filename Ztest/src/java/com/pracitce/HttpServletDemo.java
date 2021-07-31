package com.pracitce;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class HttpServletDemo  extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // super.doPost(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("I m in doGet HettpServletDemo");
   resp.setContentType("text/html");
        PrintWriter p=resp.getWriter();
    p.println("<h1>hello dipak</h1>");
    }
    
    
}
