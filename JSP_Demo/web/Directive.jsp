<%-- 
    Document   : Directive
    Created on : Aug 10, 2021, 1:38:43 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random,java.util.List" %>
<%@page session="false"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                margin:0px;
                padding:0px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h1>Random number is - 
            <%
                Random r = new Random();
                int n = r.nextInt(10);
                out.println(n);
            %>

        </h1>
    </body>
</html>
