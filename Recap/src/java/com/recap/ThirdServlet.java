/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.recap;
import java.io.IOError;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
/**
 *
 * @author Dipak
 */
public class ThirdServlet extends HttpServlet {
static int d=0;
   
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp); //To change body of generated methods, choose Tools | Templates.
//    }
    
    public void process(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
       
        d++;
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("<h1>Hello, third </h1>");
//        RequestDispatcher rd = req.getRequestDispatcher("/second2");
//        rd.include(req, resp);
        out.println("This is common for doGet and doPost "+d); 
    }
    
    @Override 
    public void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("This is doGet");
        process(req,resp);
    }
    @Override 
    public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
        
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("This is doPost");
        process(req,resp);  
    }
    
}
