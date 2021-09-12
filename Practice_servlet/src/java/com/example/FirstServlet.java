package com.example;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class FirstServlet extends HttpServlet {

    ServletConfig s;

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        String s = (String) req.getAttribute("s1");
        out.println("<h1>This is a demo"+s+
        "</h1>");
        Cookie m[]=req.getCookies();
        
        out.println("<h1>This is a From cookies "+m[1].getValue()+
        "</h1>");
        System.out.println("In a service");
    }

}
