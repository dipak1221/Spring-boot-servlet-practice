/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.recap;
import java.io.IOException;
import javax.servlet.*;
import java.io.*;

public class SecondServlet extends GenericServlet {

    public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        String name=req.getParameter("name");
        String roll=req.getParameter("roll");
        out.println("<h1>Hello, i m in second servlet my name is "+name+"</h1>");
        out.println("<h1>Roll is "+roll+"</h1>");
//        out.println("<h1>Hello, " + name + "</h1>");
        //RequestDispatcher rd = req.getRequestDispatcher("/third3");
//        rd.include(req, resp);
        //rd.forward(req, resp);
        log("This is second servlet");
        System.out.println("2nd servicing....");
    }
}
