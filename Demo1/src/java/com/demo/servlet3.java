/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.demo;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.PrintWriter;
import java.io.IOException;
public class servlet3 implements Servlet {
    public void init(ServletConfig conf){
        System.out.println("servlet 3 ojectec created..");
    }
    public void service(ServletRequest req,ServletResponse resp)throws IOException{
        System.out.println("servlet 3 service method is running..");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1>This is servlet 3</h1>");
    }
    public void destroy(){
        System.out.println("servlet3 object destroy..");}
    public ServletConfig getServletConfig(){return null;}
    public String getServletInfo(){return null;}
}
