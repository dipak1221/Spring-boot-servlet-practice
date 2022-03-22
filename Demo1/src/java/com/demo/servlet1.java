package com.demo;
import com.sun.net.httpserver.HttpsServer;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.*;
import java.io.PrintWriter;
import java.io.IOException;
import java.util.Date;
public class servlet1 implements Servlet{
    @Override
    public void init(ServletConfig conf){
        System.out.println("servlet object is created..");
    }
    @Override
    public void service(ServletRequest req,ServletResponse resp)throws IOException{
       System.out.println("service method is called.."); 
       resp.setContentType("text/html");
       PrintWriter out = resp.getWriter();
       out.println("<h1>Current time is :"+new Date().toString()+"</h1>");
      
    }
    @Override
    public void destroy(){
        System.out.println("object is destroy");
    }
    @Override
    public ServletConfig getServletConfig(){
    return null;
    }
    @Override
    public String getServletInfo(){
    return null;
    }
    
}
