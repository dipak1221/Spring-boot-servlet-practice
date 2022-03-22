package com.demo;

import javax.servlet.GenericServlet;
import java.io.PrintWriter;
import java.io.IOException;

public class servlet2 extends GenericServlet {

    public void service(javax.servlet.ServletRequest req, javax.servlet.ServletResponse resp)throws IOException {
        resp.setContentType("text/html");
System.out.println("servlet2 request...");
PrintWriter out = resp.getWriter();
out.println("Hello welcome");
    }
}
