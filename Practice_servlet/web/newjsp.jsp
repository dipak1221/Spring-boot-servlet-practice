<%-- 
    Document   : newjsp
    Created on : Aug 30, 2021, 1:58:15 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.Math,java.util.ArrayList" %>
<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--declaration-->
        <%! int a=10; %> 
        <%@include file="error.jsp" %>
        <!--scriptlet tag-->
        
        <% out.println("<h1>JSp...</h1>"); %>
        
        
        <!--expression tag-->
        <h1>Hello World! <%=exception %></h1>
    </body>
</html>
