package com.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter object created..");   
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//    Before servlet execution
        System.out.println("before Servlet .. in filter");

        chain.doFilter(request, response);// this is a boundary 

        System.out.println("After servlet in filter..");
    }

    @Override
    public void destroy() {
        System.out.println("Filter destroying.....");
    }

}
