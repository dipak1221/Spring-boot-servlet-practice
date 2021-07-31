package com.recap;

import java.io.IOException;
import javax.servlet.*;
import java.io.*;

public class FirstServlet implements Servlet {

    //3 life cycle method
    public void init(ServletConfig con) {
        System.out.println("in init method");
    }

    public void destroy() {
        System.out.println("in destroy method");
    }

    public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1>Hello, " + name + "</h1>");
        RequestDispatcher rd = req.getRequestDispatcher("/first");
//        rd.include(req, resp);
//        rd.forward(req, resp);
        System.out.println("1st In service method ...");
    }

    // 2 non life cycle method
    public ServletConfig getServletConfig() {
        return null;
    }

    public String getServletInfo() {
        return "this is my servlet";
    }

}
