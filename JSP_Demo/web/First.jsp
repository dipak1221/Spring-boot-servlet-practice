<%-- 
    Document   : First
    Created on : Aug 10, 2021, 12:38:04 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random,java.util.ArrayList" %>

<%@page session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background:#e2e2e2;">
        <h1>Hello World!</h1>
        <!--declaretion  of variable and function-->
        <%! int a = 12, b = 23;
            String name = "Dipak";
        
        public int doSum(){return a+b;}%>
        <!--scriptlet basically logic of a request i.e like content of service() in servlet-->
       
        <% out.println("<h1> Hello  " + name + "</h1>");%>
         <% out.println("<h1> Your sum is  " + doSum() + "</h1>");%>

        <!--expression tag-->
        <h1 style="color:red;">Hello <%= name%> How are you!</h1>
        <h1 style="color:green;">Your sum is <%= doSum()%> !</h1>
        
        
        <!--Directive Tag-->
        

    </body>
</html>
