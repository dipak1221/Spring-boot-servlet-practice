package com.example;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class SecondServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String name = req.getParameter("name1");
        Cookie c=new Cookie("nn",name);
       resp.addCookie(c);
        req.setAttribute("s1", name);
        out.println("<h1>This is " + name + "</h1>");
        RequestDispatcher r=req.getRequestDispatcher("ff");
        r.forward(req, resp);
       
        //  super.doGet(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

}
