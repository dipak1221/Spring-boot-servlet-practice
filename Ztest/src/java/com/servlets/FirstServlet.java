package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.*;

public class FirstServlet implements Servlet {

    ServletConfig conf;

    @Override
    public void init(ServletConfig con) {
        this.conf = con;
        System.out.println("servlet object created...");
    }

    @Override
    public String getServletInfo() {
        return "This is my servlet" + conf.toString();
    }

    @Override
    public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
//       String
        System.out.println("servcing....");
        resp.setContentType("text/html");
        PrintWriter p=resp.getWriter();
        p.println("<h1>This is servlet</h1>");
        p.println("<h2>This is today date"+new Date()+"</h2>");
    }

    @Override
    public ServletConfig getServletConfig() {
        return this.conf;
    }

    @Override
    public void destroy() {
        System.out.println("destroying....");
//        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
