package com.servlet;
//import javax.servlet.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


public class servlet1 implements javax.servlet.Servlet {

    @Override
    public void init(javax.servlet.ServletConfig s) {
        System.out.println("initialize....");
    }

    @Override
    public void service(javax.servlet.ServletRequest req, javax.servlet.ServletResponse res)throws IOException {
        res.setContentType("text/html");
        PrintWriter re=res.getWriter();
        re.println("<h1>This is my servlet page</h1>");
        re.println("<h1>Time is "+new Date().toString()+"</h1>");
        System.out.println("servicing....");
    }

    @Override
    public void destroy() {
        System.out.println("destroy");
    }

    @Override
    public javax.servlet.ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public String getServletInfo() {
        return null;
    }
}
